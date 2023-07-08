# -ERC-20-token
1. Create the ERC-20 token 
2. Set the name to “Degen”
3. Set the symbol to “DGN”
4. Test the smart-contract (All tests should pass)
5.  Deploy the contract to Avalanche Fuji Testnet Test on testnet (All tests should pass)
6.  Verify the smart-contract on Snowtrace

## Contract Information

1. name: A public string variable representing the name of the token ("Degen Gaming Token").
2. symbol: A public string variable representing the symbol of the token ("DGN").
3. decimals: A public uint8 variable representing the number of decimal places for token balances (18 by convention).
4. totalSupply: A public uint256 variable representing the total supply of tokens.

## Balances and Allowances

balances: A private mapping that associates each address with its token balance.
allowances: A private mapping that tracks the amount of tokens approved for transfer on behalf of an address.

## Ownership

owner: An address variable representing the owner of the contract.

## Events

1. Transfer: An event triggered when tokens are transferred between addresses.
2. Approval: An event triggered when the allowance for a spender is set or updated.
3. Mint: An event triggered when new tokens are minted.
4. Burn: An event triggered when tokens are burned (destroyed).

## Modifiers

onlyOwner: A modifier that restricts the execution of a function to the contract owner.

## External Functions and Views

balanceOf: Retrieves the token balance of a specified address.
transfer: Transfers tokens from the sender's address to a specified recipient.
approve: Sets the allowance for a spender to transfer tokens from the caller's address.
transferFrom: Transfers tokens from a specified address (sender) to another address (recipient) on behalf of the caller.
mint: Mints new tokens and assigns them to a specified address. Only the contract owner can call this function.
burn: Burns a specified amount of tokens from the caller's address, reducing both their balance and the total supply.
