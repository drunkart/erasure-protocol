pragma solidity 0.5.16;


interface UniswapFactoryInterface {
    // Public Variables
    function exchangeTemplate() external returns (address);
    function tokenCount() external returns (uint256);
    // Create Exchange
    function createExchange(address token) external returns (address exchange);
    // Get Exchange and Token Info
    function getExchange(address token) external view returns (address exchange);
    function getToken(address exchange) external view returns (address token);
    function getTokenWithId(uint256 tokenId) external view returns (address token);
    // Never use
    function initializeFactory(address template) external;
}