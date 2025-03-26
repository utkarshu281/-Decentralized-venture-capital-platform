module VentureCapital::DecentralizedVC {
    use std::signer;
    use aptos_framework::coin;
    use aptos_framework::aptos_coin::AptosCoin;
    use aptos_std::table::{Self, Table};

    /// Struct representing a venture capital investment opportunity
    struct Investment has store, key {
        /// Total funds raised for the startup
        total_funds: u64,
        /// Funding goal for the startup
        goal: u64,
        /// Minimum investment amount
        min_investment: u64,
        /// Investors and their investment amounts
        investors: Table<address, u64>,
    }

    /// Create a new investment opportunity for a startup
    public fun create_investment_opportunity(
        founder: &signer, 
        goal: u64, 
        min_investment: u64
    ) {
        let investment = Investment {
            total_funds: 0,
            goal,
            min_investment,
            investors: table::new(),
        };
        
        // Move the investment struct to the founder's account
        move_to(founder, investment);
    }

    /// Allow investors to fund a startup
    public fun invest(
        investor: &signer, 
        founder_addr: address, 
        amount: u64
    ) acquires Investment {
        // Retrieve the investment opportunity
        let investment = borrow_global_mut<Investment>(founder_addr);
        
        // Validate minimum investment amount
        assert!(amount >= investment.min_investment, 1);
        
        // Transfer funds from investor to founder
        let contribution = coin::withdraw<AptosCoin>(investor, amount);
        coin::deposit<AptosCoin>(founder_addr, contribution);
        
        // Update total funds and track investor
        investment.total_funds = investment.total_funds + amount;
        let investor_addr = signer::address_of(investor);
        
        // Update or add investor's contribution
        if (table::contains(&investment.investors, investor_addr)) {
            let current_investment = table::borrow_mut(&mut investment.investors, investor_addr);
            *current_investment = *current_investment + amount;
        } else {
            table::add(&mut investment.investors, investor_addr, amount);
        }
    }
}
