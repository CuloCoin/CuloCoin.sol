<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <meta http-equiv="Content-Style-Type" content="text/css">
  <title></title>
  <meta name="Generator" content="Cocoa HTML Writer">
  <meta name="CocoaVersion" content="2113">
  <style type="text/css">
    p.p1 {margin: 0.0px 0.0px 0.0px 0.0px; font: 12.0px Helvetica}
    p.p2 {margin: 0.0px 0.0px 0.0px 0.0px; font: 12.0px Helvetica; min-height: 14.0px}
  </style>
</head>
<body>
<p class="p1">/**</p>
<p class="p1"><span class="Apple-converted-space"> </span>*Submitted for verification at BscScan.com on 2021-09-03</p>
<p class="p1">*/</p>
<p class="p2"><br></p>
<p class="p1">/**</p>
<p class="p1"><span class="Apple-converted-space"> </span>*CULO COIN IS A FUCKING STUPID USELESS COIN CREATED ONLY BECAUSE THE CREATOR THINKS IT’S FUNNY (AND IT IS).</p>
<p class="p1"><span class="Apple-converted-space"> </span>*CULO IS AN ITALIAN WORD THAT MEANS ASS, SO THERE ARE TONS OF JOKES THAT ONLY ITALIANS WILL UNDERSTAND: THIS INCREASES ITS USELESSNESS.</p>
<p class="p1"><span class="Apple-converted-space"> </span>* TG:@theculocoin *</p>
<p class="p1">*/</p>
<p class="p2"><br></p>
<p class="p2"><br></p>
<p class="p1">pragma solidity ^0.6.12;</p>
<p class="p1">// SPDX-License-Identifier: Unlicensed</p>
<p class="p1">interface IERC20 {</p>
<p class="p2"><br></p>
<p class="p1"><span class="Apple-converted-space">    </span>function totalSupply() external view returns (uint256);</p>
<p class="p2"><br></p>
<p class="p1"><span class="Apple-converted-space">    </span>/**</p>
<p class="p1"><span class="Apple-converted-space">     </span>* @dev Returns the amount of tokens owned by `account`.</p>
<p class="p1"><span class="Apple-converted-space">     </span>*/</p>
<p class="p1"><span class="Apple-converted-space">    </span>function balanceOf(address account) external view returns (uint256);</p>
<p class="p2"><br></p>
<p class="p2"><br></p>
<p class="p1"><span class="Apple-converted-space">    </span>function transfer(address recipient, uint256 amount) external returns (bool);</p>
<p class="p2"><br></p>
<p class="p2"><span class="Apple-converted-space">   </span></p>
<p class="p1"><span class="Apple-converted-space">    </span>function allowance(address owner, address spender) external view returns (uint256);</p>
<p class="p2"><br></p>
<p class="p2"><span class="Apple-converted-space">    </span></p>
<p class="p1"><span class="Apple-converted-space">    </span>function approve(address spender, uint256 amount) external returns (bool);</p>
<p class="p2"><br></p>
<p class="p1"><span class="Apple-converted-space">    </span>/**</p>
<p class="p1"><span class="Apple-converted-space">     </span>* @dev Moves `amount` tokens from `sender` to `recipient` using the</p>
<p class="p1"><span class="Apple-converted-space">     </span>* allowance mechanism. `amount` is then deducted from the caller's</p>
<p class="p1"><span class="Apple-converted-space">     </span>* allowance.</p>
<p class="p1"><span class="Apple-converted-space">     </span>*</p>
<p class="p1"><span class="Apple-converted-space">     </span>* Returns a boolean value indicating whether the operation succeeded.</p>
<p class="p1"><span class="Apple-converted-space">     </span>*</p>
<p class="p1"><span class="Apple-converted-space">     </span>* Emits a {Transfer} event.</p>
<p class="p1"><span class="Apple-converted-space">     </span>*/</p>
<p class="p1"><span class="Apple-converted-space">    </span>function transferFrom(address sender, address recipient, uint256 amount) external returns (bool);</p>
<p class="p2"><br></p>
<p class="p1"><span class="Apple-converted-space">    </span>/**</p>
<p class="p1"><span class="Apple-converted-space">     </span>* @dev Emitted when `value` tokens are moved from one account (`from`) to</p>
<p class="p1"><span class="Apple-converted-space">     </span>* another (`to`).</p>
<p class="p1"><span class="Apple-converted-space">     </span>*</p>
<p class="p1"><span class="Apple-converted-space">     </span>* Note that `value` may be zero.</p>
<p class="p1"><span class="Apple-converted-space">     </span>*/</p>
<p class="p1"><span class="Apple-converted-space">    </span>event Transfer(address indexed from, address indexed to, uint256 value);</p>
<p class="p2"><br></p>
<p class="p1"><span class="Apple-converted-space">    </span>/**</p>
<p class="p1"><span class="Apple-converted-space">     </span>* @dev Emitted when the allowance of a `spender` for an `owner` is set by</p>
<p class="p1"><span class="Apple-converted-space">     </span>* a call to {approve}. `value` is the new allowance.</p>
<p class="p1"><span class="Apple-converted-space">     </span>*/</p>
<p class="p1"><span class="Apple-converted-space">    </span>event Approval(address indexed owner, address indexed spender, uint256 value);</p>
<p class="p1">}</p>
<p class="p2"><br></p>
<p class="p2"><br></p>
<p class="p2"><br></p>
<p class="p1">/**</p>
<p class="p1"><span class="Apple-converted-space"> </span>* @dev Wrappers over Solidity's arithmetic operations with added overflow</p>
<p class="p1"><span class="Apple-converted-space"> </span>* checks.</p>
<p class="p1"><span class="Apple-converted-space"> </span>*</p>
<p class="p1"><span class="Apple-converted-space"> </span>* Arithmetic operations in Solidity wrap on overflow. This can easily result</p>
<p class="p1"><span class="Apple-converted-space"> </span>* in bugs, because programmers usually assume that an overflow raises an</p>
<p class="p1"><span class="Apple-converted-space"> </span>* error, which is the standard behavior in high level programming languages.</p>
<p class="p1"><span class="Apple-converted-space"> </span>* `SafeMath` restores this intuition by reverting the transaction when an</p>
<p class="p1"><span class="Apple-converted-space"> </span>* operation overflows.</p>
<p class="p1"><span class="Apple-converted-space"> </span>*</p>
<p class="p1"><span class="Apple-converted-space"> </span>* Using this library instead of the unchecked operations eliminates an entire</p>
<p class="p1"><span class="Apple-converted-space"> </span>* class of bugs, so it's recommended to use it always.</p>
<p class="p1"><span class="Apple-converted-space"> </span>*/</p>
<p class="p2"><span class="Apple-converted-space"> </span></p>
<p class="p1">library SafeMath {</p>
<p class="p1"><span class="Apple-converted-space">    </span>/**</p>
<p class="p1"><span class="Apple-converted-space">     </span>* @dev Returns the addition of two unsigned integers, reverting on</p>
<p class="p1"><span class="Apple-converted-space">     </span>* overflow.</p>
<p class="p1"><span class="Apple-converted-space">     </span>*</p>
<p class="p1"><span class="Apple-converted-space">     </span>* Counterpart to Solidity's `+` operator.</p>
<p class="p1"><span class="Apple-converted-space">     </span>*</p>
<p class="p1"><span class="Apple-converted-space">     </span>* Requirements:</p>
<p class="p1"><span class="Apple-converted-space">     </span>*</p>
<p class="p1"><span class="Apple-converted-space">     </span>* - Addition cannot overflow.</p>
<p class="p1"><span class="Apple-converted-space">     </span>*/</p>
<p class="p1"><span class="Apple-converted-space">    </span>function add(uint256 a, uint256 b) internal pure returns (uint256) {</p>
<p class="p1"><span class="Apple-converted-space">        </span>uint256 c = a + b;</p>
<p class="p1"><span class="Apple-converted-space">        </span>require(c &gt;= a, "SafeMath: addition overflow");</p>
<p class="p2"><br></p>
<p class="p1"><span class="Apple-converted-space">        </span>return c;</p>
<p class="p1"><span class="Apple-converted-space">    </span>}</p>
<p class="p2"><br></p>
<p class="p1"><span class="Apple-converted-space">    </span>/**</p>
<p class="p1"><span class="Apple-converted-space">     </span>* @dev Returns the subtraction of two unsigned integers, reverting on</p>
<p class="p1"><span class="Apple-converted-space">     </span>* overflow (when the result is negative).</p>
<p class="p1"><span class="Apple-converted-space">     </span>*</p>
<p class="p1"><span class="Apple-converted-space">     </span>* Counterpart to Solidity's `-` operator.</p>
<p class="p1"><span class="Apple-converted-space">     </span>*</p>
<p class="p1"><span class="Apple-converted-space">     </span>* Requirements:</p>
<p class="p1"><span class="Apple-converted-space">     </span>*</p>
<p class="p1"><span class="Apple-converted-space">     </span>* - Subtraction cannot overflow.</p>
<p class="p1"><span class="Apple-converted-space">     </span>*/</p>
<p class="p1"><span class="Apple-converted-space">    </span>function sub(uint256 a, uint256 b) internal pure returns (uint256) {</p>
<p class="p1"><span class="Apple-converted-space">        </span>return sub(a, b, "SafeMath: subtraction overflow");</p>
<p class="p1"><span class="Apple-converted-space">    </span>}</p>
<p class="p2"><br></p>
<p class="p1"><span class="Apple-converted-space">    </span>/**</p>
<p class="p1"><span class="Apple-converted-space">     </span>* @dev Returns the subtraction of two unsigned integers, reverting with custom message on</p>
<p class="p1"><span class="Apple-converted-space">     </span>* overflow (when the result is negative).</p>
<p class="p1"><span class="Apple-converted-space">     </span>*</p>
<p class="p1"><span class="Apple-converted-space">     </span>* Counterpart to Solidity's `-` operator.</p>
<p class="p1"><span class="Apple-converted-space">     </span>*</p>
<p class="p1"><span class="Apple-converted-space">     </span>* Requirements:</p>
<p class="p1"><span class="Apple-converted-space">     </span>*</p>
<p class="p1"><span class="Apple-converted-space">     </span>* - Subtraction cannot overflow.</p>
<p class="p1"><span class="Apple-converted-space">     </span>*/</p>
<p class="p1"><span class="Apple-converted-space">    </span>function sub(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {</p>
<p class="p1"><span class="Apple-converted-space">        </span>require(b &lt;= a, errorMessage);</p>
<p class="p1"><span class="Apple-converted-space">        </span>uint256 c = a - b;</p>
<p class="p2"><br></p>
<p class="p1"><span class="Apple-converted-space">        </span>return c;</p>
<p class="p1"><span class="Apple-converted-space">    </span>}</p>
<p class="p2"><br></p>
<p class="p1"><span class="Apple-converted-space">    </span>/**</p>
<p class="p1"><span class="Apple-converted-space">     </span>* @dev Returns the multiplication of two unsigned integers, reverting on</p>
<p class="p1"><span class="Apple-converted-space">     </span>* overflow.</p>
<p class="p1"><span class="Apple-converted-space">     </span>*</p>
<p class="p1"><span class="Apple-converted-space">     </span>* Counterpart to Solidity's `*` operator.</p>
<p class="p1"><span class="Apple-converted-space">     </span>*</p>
<p class="p1"><span class="Apple-converted-space">     </span>* Requirements:</p>
<p class="p1"><span class="Apple-converted-space">     </span>*</p>
<p class="p1"><span class="Apple-converted-space">     </span>* - Multiplication cannot overflow.</p>
<p class="p1"><span class="Apple-converted-space">     </span>*/</p>
<p class="p1"><span class="Apple-converted-space">    </span>function mul(uint256 a, uint256 b) internal pure returns (uint256) {</p>
<p class="p2"><br></p>
<p class="p1"><span class="Apple-converted-space">        </span>if (a == 0) {</p>
<p class="p1"><span class="Apple-converted-space">            </span>return 0;</p>
<p class="p1"><span class="Apple-converted-space">        </span>}</p>
<p class="p2"><br></p>
<p class="p1"><span class="Apple-converted-space">        </span>uint256 c = a * b;</p>
<p class="p1"><span class="Apple-converted-space">        </span>require(c / a == b, "SafeMath: multiplication overflow");</p>
<p class="p2"><br></p>
<p class="p1"><span class="Apple-converted-space">        </span>return c;</p>
<p class="p1"><span class="Apple-converted-space">    </span>}</p>
<p class="p2"><br></p>
<p class="p1"><span class="Apple-converted-space">    </span>/**</p>
<p class="p1"><span class="Apple-converted-space">     </span>* @dev Returns the integer division of two unsigned integers. Reverts on</p>
<p class="p1"><span class="Apple-converted-space">     </span>* division by zero. The result is rounded towards zero.</p>
<p class="p1"><span class="Apple-converted-space">     </span>*</p>
<p class="p1"><span class="Apple-converted-space">     </span>* Counterpart to Solidity's `/` operator. Note: this function uses a</p>
<p class="p1"><span class="Apple-converted-space">     </span>* `revert` opcode (which leaves remaining gas untouched) while Solidity</p>
<p class="p1"><span class="Apple-converted-space">     </span>* uses an invalid opcode to revert (consuming all remaining gas).</p>
<p class="p1"><span class="Apple-converted-space">     </span>*</p>
<p class="p1"><span class="Apple-converted-space">     </span>* Requirements:</p>
<p class="p1"><span class="Apple-converted-space">     </span>*</p>
<p class="p1"><span class="Apple-converted-space">     </span>* - The divisor cannot be zero.</p>
<p class="p1"><span class="Apple-converted-space">     </span>*/</p>
<p class="p1"><span class="Apple-converted-space">    </span>function div(uint256 a, uint256 b) internal pure returns (uint256) {</p>
<p class="p1"><span class="Apple-converted-space">        </span>return div(a, b, "SafeMath: division by zero");</p>
<p class="p1"><span class="Apple-converted-space">    </span>}</p>
<p class="p2"><br></p>
<p class="p1"><span class="Apple-converted-space">    </span>/**</p>
<p class="p1"><span class="Apple-converted-space">     </span>* @dev Returns the integer division of two unsigned integers. Reverts with custom message on</p>
<p class="p1"><span class="Apple-converted-space">     </span>* division by zero. The result is rounded towards zero.</p>
<p class="p1"><span class="Apple-converted-space">     </span>*</p>
<p class="p1"><span class="Apple-converted-space">     </span>* Counterpart to Solidity's `/` operator. Note: this function uses a</p>
<p class="p1"><span class="Apple-converted-space">     </span>* `revert` opcode (which leaves remaining gas untouched) while Solidity</p>
<p class="p1"><span class="Apple-converted-space">     </span>* uses an invalid opcode to revert (consuming all remaining gas).</p>
<p class="p1"><span class="Apple-converted-space">     </span>*</p>
<p class="p1"><span class="Apple-converted-space">     </span>* Requirements:</p>
<p class="p1"><span class="Apple-converted-space">     </span>*</p>
<p class="p1"><span class="Apple-converted-space">     </span>* - The divisor cannot be zero.</p>
<p class="p1"><span class="Apple-converted-space">     </span>*/</p>
<p class="p1"><span class="Apple-converted-space">    </span>function div(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {</p>
<p class="p1"><span class="Apple-converted-space">        </span>require(b &gt; 0, errorMessage);</p>
<p class="p1"><span class="Apple-converted-space">        </span>uint256 c = a / b;</p>
<p class="p1"><span class="Apple-converted-space">        </span>// assert(a == b * c + a % b); // There is no case in which this doesn't hold</p>
<p class="p2"><br></p>
<p class="p1"><span class="Apple-converted-space">        </span>return c;</p>
<p class="p1"><span class="Apple-converted-space">    </span>}</p>
<p class="p2"><br></p>
<p class="p1"><span class="Apple-converted-space">    </span>/**</p>
<p class="p1"><span class="Apple-converted-space">     </span>* @dev Returns the remainder of dividing two unsigned integers. (unsigned integer modulo),</p>
<p class="p1"><span class="Apple-converted-space">     </span>* Reverts when dividing by zero.</p>
<p class="p1"><span class="Apple-converted-space">     </span>*</p>
<p class="p1"><span class="Apple-converted-space">     </span>* Counterpart to Solidity's `%` operator. This function uses a `revert`</p>
<p class="p1"><span class="Apple-converted-space">     </span>* opcode (which leaves remaining gas untouched) while Solidity uses an</p>
<p class="p1"><span class="Apple-converted-space">     </span>* invalid opcode to revert (consuming all remaining gas).</p>
<p class="p1"><span class="Apple-converted-space">     </span>*</p>
<p class="p1"><span class="Apple-converted-space">     </span>* Requirements:</p>
<p class="p1"><span class="Apple-converted-space">     </span>*</p>
<p class="p1"><span class="Apple-converted-space">     </span>* - The divisor cannot be zero.</p>
<p class="p1"><span class="Apple-converted-space">     </span>*/</p>
<p class="p1"><span class="Apple-converted-space">    </span>function mod(uint256 a, uint256 b) internal pure returns (uint256) {</p>
<p class="p1"><span class="Apple-converted-space">        </span>return mod(a, b, "SafeMath: modulo by zero");</p>
<p class="p1"><span class="Apple-converted-space">    </span>}</p>
<p class="p2"><br></p>
<p class="p1"><span class="Apple-converted-space">    </span>/**</p>
<p class="p1"><span class="Apple-converted-space">     </span>* @dev Returns the remainder of dividing two unsigned integers. (unsigned integer modulo),</p>
<p class="p1"><span class="Apple-converted-space">     </span>* Reverts with custom message when dividing by zero.</p>
<p class="p1"><span class="Apple-converted-space">     </span>*</p>
<p class="p1"><span class="Apple-converted-space">     </span>* Counterpart to Solidity's `%` operator. This function uses a `revert`</p>
<p class="p1"><span class="Apple-converted-space">     </span>* opcode (which leaves remaining gas untouched) while Solidity uses an</p>
<p class="p1"><span class="Apple-converted-space">     </span>* invalid opcode to revert (consuming all remaining gas).</p>
<p class="p1"><span class="Apple-converted-space">     </span>*</p>
<p class="p1"><span class="Apple-converted-space">     </span>* Requirements:</p>
<p class="p1"><span class="Apple-converted-space">     </span>*</p>
<p class="p1"><span class="Apple-converted-space">     </span>* - The divisor cannot be zero.</p>
<p class="p1"><span class="Apple-converted-space">     </span>*/</p>
<p class="p1"><span class="Apple-converted-space">    </span>function mod(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {</p>
<p class="p1"><span class="Apple-converted-space">        </span>require(b != 0, errorMessage);</p>
<p class="p1"><span class="Apple-converted-space">        </span>return a % b;</p>
<p class="p1"><span class="Apple-converted-space">    </span>}</p>
<p class="p1">}</p>
<p class="p2"><br></p>
<p class="p1">abstract contract Context {</p>
<p class="p1"><span class="Apple-converted-space">    </span>function _msgSender() internal view virtual returns (address payable) {</p>
<p class="p1"><span class="Apple-converted-space">        </span>return msg.sender;</p>
<p class="p1"><span class="Apple-converted-space">    </span>}</p>
<p class="p2"><br></p>
<p class="p1"><span class="Apple-converted-space">    </span>function _msgData() internal view virtual returns (bytes memory) {</p>
<p class="p1"><span class="Apple-converted-space">        </span>this; // silence state mutability warning without generating bytecode - see https://github.com/ethereum/solidity/issues/2691</p>
<p class="p1"><span class="Apple-converted-space">        </span>return msg.data;</p>
<p class="p1"><span class="Apple-converted-space">    </span>}</p>
<p class="p1">}</p>
<p class="p2"><br></p>
<p class="p2"><br></p>
<p class="p1">/**</p>
<p class="p1"><span class="Apple-converted-space"> </span>* @dev Collection of functions related to the address type</p>
<p class="p1"><span class="Apple-converted-space"> </span>*/</p>
<p class="p1">library Address {</p>
<p class="p1"><span class="Apple-converted-space">    </span>/**</p>
<p class="p1"><span class="Apple-converted-space">     </span>* @dev Returns true if `account` is a contract.</p>
<p class="p1"><span class="Apple-converted-space">     </span>*</p>
<p class="p1"><span class="Apple-converted-space">     </span>* [IMPORTANT]</p>
<p class="p1"><span class="Apple-converted-space">     </span>* ====</p>
<p class="p1"><span class="Apple-converted-space">     </span>* It is unsafe to assume that an address for which this function returns</p>
<p class="p1"><span class="Apple-converted-space">     </span>* false is an externally-owned account (EOA) and not a contract.</p>
<p class="p1"><span class="Apple-converted-space">     </span>*</p>
<p class="p1"><span class="Apple-converted-space">     </span>* Among others, `isContract` will return false for the following</p>
<p class="p1"><span class="Apple-converted-space">     </span>* types of addresses:</p>
<p class="p1"><span class="Apple-converted-space">     </span>*</p>
<p class="p1"><span class="Apple-converted-space">     </span>*<span class="Apple-converted-space">  </span>- an externally-owned account</p>
<p class="p1"><span class="Apple-converted-space">     </span>*<span class="Apple-converted-space">  </span>- a contract in construction</p>
<p class="p1"><span class="Apple-converted-space">     </span>*<span class="Apple-converted-space">  </span>- an address where a contract will be created</p>
<p class="p1"><span class="Apple-converted-space">     </span>*<span class="Apple-converted-space">  </span>- an address where a contract lived, but was destroyed</p>
<p class="p1"><span class="Apple-converted-space">     </span>* ====</p>
<p class="p1"><span class="Apple-converted-space">     </span>*/</p>
<p class="p1"><span class="Apple-converted-space">    </span>function isContract(address account) internal view returns (bool) {</p>
<p class="p1"><span class="Apple-converted-space">        </span>// According to EIP-1052, 0x0 is the value returned for not-yet created accounts</p>
<p class="p1"><span class="Apple-converted-space">        </span>// and 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 is returned</p>
<p class="p1"><span class="Apple-converted-space">        </span>// for accounts without code, i.e. `keccak256('')`</p>
<p class="p1"><span class="Apple-converted-space">        </span>bytes32 codehash;</p>
<p class="p1"><span class="Apple-converted-space">        </span>bytes32 accountHash = 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470;</p>
<p class="p1"><span class="Apple-converted-space">        </span>// solhint-disable-next-line no-inline-assembly</p>
<p class="p1"><span class="Apple-converted-space">        </span>assembly { codehash := extcodehash(account) }</p>
<p class="p1"><span class="Apple-converted-space">        </span>return (codehash != accountHash &amp;&amp; codehash != 0x0);</p>
<p class="p1"><span class="Apple-converted-space">    </span>}</p>
<p class="p2"><br></p>
<p class="p1"><span class="Apple-converted-space">    </span>/**</p>
<p class="p1"><span class="Apple-converted-space">     </span>* @dev Replacement for Solidity's `transfer`: sends `amount` wei to</p>
<p class="p1"><span class="Apple-converted-space">     </span>* `recipient`, forwarding all available gas and reverting on errors.</p>
<p class="p1"><span class="Apple-converted-space">     </span>*</p>
<p class="p1"><span class="Apple-converted-space">     </span>* https://eips.ethereum.org/EIPS/eip-1884[EIP1884] increases the gas cost</p>
<p class="p1"><span class="Apple-converted-space">     </span>* of certain opcodes, possibly making contracts go over the 2300 gas limit</p>
<p class="p1"><span class="Apple-converted-space">     </span>* imposed by `transfer`, making them unable to receive funds via</p>
<p class="p1"><span class="Apple-converted-space">     </span>* `transfer`. {sendValue} removes this limitation.</p>
<p class="p1"><span class="Apple-converted-space">     </span>*</p>
<p class="p1"><span class="Apple-converted-space">     </span>* https://diligence.consensys.net/posts/2019/09/stop-using-soliditys-transfer-now/[Learn more].</p>
<p class="p1"><span class="Apple-converted-space">     </span>*</p>
<p class="p1"><span class="Apple-converted-space">     </span>* IMPORTANT: because control is transferred to `recipient`, care must be</p>
<p class="p1"><span class="Apple-converted-space">     </span>* taken to not create reentrancy vulnerabilities. Consider using</p>
<p class="p1"><span class="Apple-converted-space">     </span>* {ReentrancyGuard} or the</p>
<p class="p1"><span class="Apple-converted-space">     </span>* https://solidity.readthedocs.io/en/v0.5.11/security-considerations.html#use-the-checks-effects-interactions-pattern[checks-effects-interactions pattern].</p>
<p class="p1"><span class="Apple-converted-space">     </span>*/</p>
<p class="p1"><span class="Apple-converted-space">    </span>function sendValue(address payable recipient, uint256 amount) internal {</p>
<p class="p1"><span class="Apple-converted-space">        </span>require(address(this).balance &gt;= amount, "Address: insufficient balance");</p>
<p class="p2"><br></p>
<p class="p1"><span class="Apple-converted-space">        </span>// solhint-disable-next-line avoid-low-level-calls, avoid-call-value</p>
<p class="p1"><span class="Apple-converted-space">        </span>(bool success, ) = recipient.call{ value: amount }("");</p>
<p class="p1"><span class="Apple-converted-space">        </span>require(success, "Address: unable to send value, recipient may have reverted");</p>
<p class="p1"><span class="Apple-converted-space">    </span>}</p>
<p class="p2"><br></p>
<p class="p1"><span class="Apple-converted-space">    </span>/**</p>
<p class="p1"><span class="Apple-converted-space">     </span>* @dev Performs a Solidity function call using a low level `call`. A</p>
<p class="p1"><span class="Apple-converted-space">     </span>* plain`call` is an unsafe replacement for a function call: use this</p>
<p class="p1"><span class="Apple-converted-space">     </span>* function instead.</p>
<p class="p1"><span class="Apple-converted-space">     </span>*</p>
<p class="p1"><span class="Apple-converted-space">     </span>* If `target` reverts with a revert reason, it is bubbled up by this</p>
<p class="p1"><span class="Apple-converted-space">     </span>* function (like regular Solidity function calls).</p>
<p class="p1"><span class="Apple-converted-space">     </span>*</p>
<p class="p1"><span class="Apple-converted-space">     </span>* Returns the raw returned data. To convert to the expected return value,</p>
<p class="p1"><span class="Apple-converted-space">     </span>* use https://solidity.readthedocs.io/en/latest/units-and-global-variables.html?highlight=abi.decode#abi-encoding-and-decoding-functions[`abi.decode`].</p>
<p class="p1"><span class="Apple-converted-space">     </span>*</p>
<p class="p1"><span class="Apple-converted-space">     </span>* Requirements:</p>
<p class="p1"><span class="Apple-converted-space">     </span>*</p>
<p class="p1"><span class="Apple-converted-space">     </span>* - `target` must be a contract.</p>
<p class="p1"><span class="Apple-converted-space">     </span>* - calling `target` with `data` must not revert.</p>
<p class="p1"><span class="Apple-converted-space">     </span>*</p>
<p class="p1"><span class="Apple-converted-space">     </span>* _Available since v3.1._</p>
<p class="p1"><span class="Apple-converted-space">     </span>*/</p>
<p class="p1"><span class="Apple-converted-space">    </span>function functionCall(address target, bytes memory data) internal returns (bytes memory) {</p>
<p class="p1"><span class="Apple-converted-space">      </span>return functionCall(target, data, "Address: low-level call failed");</p>
<p class="p1"><span class="Apple-converted-space">    </span>}</p>
<p class="p2"><br></p>
<p class="p1"><span class="Apple-converted-space">    </span>/**</p>
<p class="p1"><span class="Apple-converted-space">     </span>* @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`], but with</p>
<p class="p1"><span class="Apple-converted-space">     </span>* `errorMessage` as a fallback revert reason when `target` reverts.</p>
<p class="p1"><span class="Apple-converted-space">     </span>*</p>
<p class="p1"><span class="Apple-converted-space">     </span>* _Available since v3.1._</p>
<p class="p1"><span class="Apple-converted-space">     </span>*/</p>
<p class="p1"><span class="Apple-converted-space">    </span>function functionCall(address target, bytes memory data, string memory errorMessage) internal returns (bytes memory) {</p>
<p class="p1"><span class="Apple-converted-space">        </span>return _functionCallWithValue(target, data, 0, errorMessage);</p>
<p class="p1"><span class="Apple-converted-space">    </span>}</p>
<p class="p2"><br></p>
<p class="p1"><span class="Apple-converted-space">    </span>/**</p>
<p class="p1"><span class="Apple-converted-space">     </span>* @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],</p>
<p class="p1"><span class="Apple-converted-space">     </span>* but also transferring `value` wei to `target`.</p>
<p class="p1"><span class="Apple-converted-space">     </span>*</p>
<p class="p1"><span class="Apple-converted-space">     </span>* Requirements:</p>
<p class="p1"><span class="Apple-converted-space">     </span>*</p>
<p class="p1"><span class="Apple-converted-space">     </span>* - the calling contract must have an ETH balance of at least `value`.</p>
<p class="p1"><span class="Apple-converted-space">     </span>* - the called Solidity function must be `payable`.</p>
<p class="p1"><span class="Apple-converted-space">     </span>*</p>
<p class="p1"><span class="Apple-converted-space">     </span>* _Available since v3.1._</p>
<p class="p1"><span class="Apple-converted-space">     </span>*/</p>
<p class="p1"><span class="Apple-converted-space">    </span>function functionCallWithValue(address target, bytes memory data, uint256 value) internal returns (bytes memory) {</p>
<p class="p1"><span class="Apple-converted-space">        </span>return functionCallWithValue(target, data, value, "Address: low-level call with value failed");</p>
<p class="p1"><span class="Apple-converted-space">    </span>}</p>
<p class="p2"><br></p>
<p class="p1"><span class="Apple-converted-space">    </span>/**</p>
<p class="p1"><span class="Apple-converted-space">     </span>* @dev Same as {xref-Address-functionCallWithValue-address-bytes-uint256-}[`functionCallWithValue`], but</p>
<p class="p1"><span class="Apple-converted-space">     </span>* with `errorMessage` as a fallback revert reason when `target` reverts.</p>
<p class="p1"><span class="Apple-converted-space">     </span>*</p>
<p class="p1"><span class="Apple-converted-space">     </span>* _Available since v3.1._</p>
<p class="p1"><span class="Apple-converted-space">     </span>*/</p>
<p class="p1"><span class="Apple-converted-space">    </span>function functionCallWithValue(address target, bytes memory data, uint256 value, string memory errorMessage) internal returns (bytes memory) {</p>
<p class="p1"><span class="Apple-converted-space">        </span>require(address(this).balance &gt;= value, "Address: insufficient balance for call");</p>
<p class="p1"><span class="Apple-converted-space">        </span>return _functionCallWithValue(target, data, value, errorMessage);</p>
<p class="p1"><span class="Apple-converted-space">    </span>}</p>
<p class="p2"><br></p>
<p class="p1"><span class="Apple-converted-space">    </span>function _functionCallWithValue(address target, bytes memory data, uint256 weiValue, string memory errorMessage) private returns (bytes memory) {</p>
<p class="p1"><span class="Apple-converted-space">        </span>require(isContract(target), "Address: call to non-contract");</p>
<p class="p2"><br></p>
<p class="p1"><span class="Apple-converted-space">        </span>// solhint-disable-next-line avoid-low-level-calls</p>
<p class="p1"><span class="Apple-converted-space">        </span>(bool success, bytes memory returndata) = target.call{ value: weiValue }(data);</p>
<p class="p1"><span class="Apple-converted-space">        </span>if (success) {</p>
<p class="p1"><span class="Apple-converted-space">            </span>return returndata;</p>
<p class="p1"><span class="Apple-converted-space">        </span>} else {</p>
<p class="p1"><span class="Apple-converted-space">            </span>// Look for revert reason and bubble it up if present</p>
<p class="p1"><span class="Apple-converted-space">            </span>if (returndata.length &gt; 0) {</p>
<p class="p1"><span class="Apple-converted-space">                </span>// The easiest way to bubble the revert reason is using memory via assembly</p>
<p class="p2"><br></p>
<p class="p1"><span class="Apple-converted-space">                </span>// solhint-disable-next-line no-inline-assembly</p>
<p class="p1"><span class="Apple-converted-space">                </span>assembly {</p>
<p class="p1"><span class="Apple-converted-space">                    </span>let returndata_size := mload(returndata)</p>
<p class="p1"><span class="Apple-converted-space">                    </span>revert(add(32, returndata), returndata_size)</p>
<p class="p1"><span class="Apple-converted-space">                </span>}</p>
<p class="p1"><span class="Apple-converted-space">            </span>} else {</p>
<p class="p1"><span class="Apple-converted-space">                </span>revert(errorMessage);</p>
<p class="p1"><span class="Apple-converted-space">            </span>}</p>
<p class="p1"><span class="Apple-converted-space">        </span>}</p>
<p class="p1"><span class="Apple-converted-space">    </span>}</p>
<p class="p1">}</p>
<p class="p2"><br></p>
<p class="p1">/**</p>
<p class="p1"><span class="Apple-converted-space"> </span>* @dev Contract module which provides a basic access control mechanism, where</p>
<p class="p1"><span class="Apple-converted-space"> </span>* there is an account (an owner) that can be granted exclusive access to</p>
<p class="p1"><span class="Apple-converted-space"> </span>* specific functions.</p>
<p class="p1"><span class="Apple-converted-space"> </span>*</p>
<p class="p1"><span class="Apple-converted-space"> </span>* By default, the owner account will be the one that deploys the contract. This</p>
<p class="p1"><span class="Apple-converted-space"> </span>* can later be changed with {transferOwnership}.</p>
<p class="p1"><span class="Apple-converted-space"> </span>*</p>
<p class="p1"><span class="Apple-converted-space"> </span>* This module is used through inheritance. It will make available the modifier</p>
<p class="p1"><span class="Apple-converted-space"> </span>* `onlyOwner`, which can be applied to your functions to restrict their use to</p>
<p class="p1"><span class="Apple-converted-space"> </span>* the owner.</p>
<p class="p1"><span class="Apple-converted-space"> </span>*/</p>
<p class="p1">contract Ownable is Context {</p>
<p class="p1"><span class="Apple-converted-space">    </span>address private _owner;</p>
<p class="p1"><span class="Apple-converted-space">    </span>address private _previousOwner;</p>
<p class="p1"><span class="Apple-converted-space">    </span>uint256 private _lockTime;</p>
<p class="p2"><br></p>
<p class="p1"><span class="Apple-converted-space">    </span>event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);</p>
<p class="p2"><br></p>
<p class="p1"><span class="Apple-converted-space">    </span>/**</p>
<p class="p1"><span class="Apple-converted-space">     </span>* @dev Initializes the contract setting the deployer as the initial owner.</p>
<p class="p1"><span class="Apple-converted-space">     </span>*/</p>
<p class="p1"><span class="Apple-converted-space">    </span>constructor () internal {</p>
<p class="p1"><span class="Apple-converted-space">        </span>address msgSender = _msgSender();</p>
<p class="p1"><span class="Apple-converted-space">        </span>_owner = msgSender;</p>
<p class="p1"><span class="Apple-converted-space">        </span>emit OwnershipTransferred(address(0), msgSender);</p>
<p class="p1"><span class="Apple-converted-space">    </span>}</p>
<p class="p2"><br></p>
<p class="p1"><span class="Apple-converted-space">    </span>/**</p>
<p class="p1"><span class="Apple-converted-space">     </span>* @dev Returns the address of the current owner.</p>
<p class="p1"><span class="Apple-converted-space">     </span>*/</p>
<p class="p1"><span class="Apple-converted-space">    </span>function owner() public view returns (address) {</p>
<p class="p1"><span class="Apple-converted-space">        </span>return _owner;</p>
<p class="p1"><span class="Apple-converted-space">    </span>}</p>
<p class="p2"><br></p>
<p class="p1"><span class="Apple-converted-space">    </span>/**</p>
<p class="p1"><span class="Apple-converted-space">     </span>* @dev Throws if called by any account other than the owner.</p>
<p class="p1"><span class="Apple-converted-space">     </span>*/</p>
<p class="p1"><span class="Apple-converted-space">    </span>modifier onlyOwner() {</p>
<p class="p1"><span class="Apple-converted-space">        </span>require(_owner == _msgSender(), "Ownable: caller is not the owner");</p>
<p class="p1"><span class="Apple-converted-space">        </span>_;</p>
<p class="p1"><span class="Apple-converted-space">    </span>}</p>
<p class="p2"><br></p>
<p class="p1"><span class="Apple-converted-space">     </span>/**</p>
<p class="p1"><span class="Apple-converted-space">     </span>* @dev Leaves the contract without owner. It will not be possible to call</p>
<p class="p1"><span class="Apple-converted-space">     </span>* `onlyOwner` functions anymore. Can only be called by the current owner.</p>
<p class="p1"><span class="Apple-converted-space">     </span>*</p>
<p class="p1"><span class="Apple-converted-space">     </span>* NOTE: Renouncing ownership will leave the contract without an owner,</p>
<p class="p1"><span class="Apple-converted-space">     </span>* thereby removing any functionality that is only available to the owner.</p>
<p class="p1"><span class="Apple-converted-space">     </span>*/</p>
<p class="p1"><span class="Apple-converted-space">    </span>function renounceOwnership() public virtual onlyOwner {</p>
<p class="p1"><span class="Apple-converted-space">        </span>emit OwnershipTransferred(_owner, address(0));</p>
<p class="p1"><span class="Apple-converted-space">        </span>_owner = address(0);</p>
<p class="p1"><span class="Apple-converted-space">    </span>}</p>
<p class="p2"><br></p>
<p class="p1"><span class="Apple-converted-space">    </span>/**</p>
<p class="p1"><span class="Apple-converted-space">     </span>* @dev Transfers ownership of the contract to a new account (`newOwner`).</p>
<p class="p1"><span class="Apple-converted-space">     </span>* Can only be called by the current owner.</p>
<p class="p1"><span class="Apple-converted-space">     </span>*/</p>
<p class="p1"><span class="Apple-converted-space">    </span>function transferOwnership(address newOwner) public virtual onlyOwner {</p>
<p class="p1"><span class="Apple-converted-space">        </span>require(newOwner != address(0), "Ownable: new owner is the zero address");</p>
<p class="p1"><span class="Apple-converted-space">        </span>emit OwnershipTransferred(_owner, newOwner);</p>
<p class="p1"><span class="Apple-converted-space">        </span>_owner = newOwner;</p>
<p class="p1"><span class="Apple-converted-space">    </span>}</p>
<p class="p2"><br></p>
<p class="p1"><span class="Apple-converted-space">    </span>function geUnlockTime() public view returns (uint256) {</p>
<p class="p1"><span class="Apple-converted-space">        </span>return _lockTime;</p>
<p class="p1"><span class="Apple-converted-space">    </span>}</p>
<p class="p2"><br></p>
<p class="p1"><span class="Apple-converted-space">    </span>//Locks the contract for owner for the amount of time provided</p>
<p class="p1"><span class="Apple-converted-space">    </span>function lock(uint256 time) public virtual onlyOwner {</p>
<p class="p1"><span class="Apple-converted-space">        </span>_previousOwner = _owner;</p>
<p class="p1"><span class="Apple-converted-space">        </span>_owner = address(0);</p>
<p class="p1"><span class="Apple-converted-space">        </span>_lockTime = now + time;</p>
<p class="p1"><span class="Apple-converted-space">        </span>emit OwnershipTransferred(_owner, address(0));</p>
<p class="p1"><span class="Apple-converted-space">    </span>}</p>
<p class="p2"><span class="Apple-converted-space">    </span></p>
<p class="p1"><span class="Apple-converted-space">    </span>//Unlocks the contract for owner when _lockTime is exceeds</p>
<p class="p1"><span class="Apple-converted-space">    </span>function unlock() public virtual {</p>
<p class="p1"><span class="Apple-converted-space">        </span>require(_previousOwner == msg.sender, "You don't have permission to unlock");</p>
<p class="p1"><span class="Apple-converted-space">        </span>require(now &gt; _lockTime , "Contract is locked until 7 days");</p>
<p class="p1"><span class="Apple-converted-space">        </span>emit OwnershipTransferred(_owner, _previousOwner);</p>
<p class="p1"><span class="Apple-converted-space">        </span>_owner = _previousOwner;</p>
<p class="p1"><span class="Apple-converted-space">    </span>}</p>
<p class="p1">}</p>
<p class="p2"><br></p>
<p class="p1">// pragma solidity &gt;=0.5.0;</p>
<p class="p2"><br></p>
<p class="p1">interface IUniswapV2Factory {</p>
<p class="p1"><span class="Apple-converted-space">    </span>event PairCreated(address indexed token0, address indexed token1, address pair, uint);</p>
<p class="p2"><br></p>
<p class="p1"><span class="Apple-converted-space">    </span>function feeTo() external view returns (address);</p>
<p class="p1"><span class="Apple-converted-space">    </span>function feeToSetter() external view returns (address);</p>
<p class="p2"><br></p>
<p class="p1"><span class="Apple-converted-space">    </span>function getPair(address tokenA, address tokenB) external view returns (address pair);</p>
<p class="p1"><span class="Apple-converted-space">    </span>function allPairs(uint) external view returns (address pair);</p>
<p class="p1"><span class="Apple-converted-space">    </span>function allPairsLength() external view returns (uint);</p>
<p class="p2"><br></p>
<p class="p1"><span class="Apple-converted-space">    </span>function createPair(address tokenA, address tokenB) external returns (address pair);</p>
<p class="p2"><br></p>
<p class="p1"><span class="Apple-converted-space">    </span>function setFeeTo(address) external;</p>
<p class="p1"><span class="Apple-converted-space">    </span>function setFeeToSetter(address) external;</p>
<p class="p1">}</p>
<p class="p2"><br></p>
<p class="p2"><br></p>
<p class="p1">// pragma solidity &gt;=0.5.0;</p>
<p class="p2"><br></p>
<p class="p1">interface IUniswapV2Pair {</p>
<p class="p1"><span class="Apple-converted-space">    </span>event Approval(address indexed owner, address indexed spender, uint value);</p>
<p class="p1"><span class="Apple-converted-space">    </span>event Transfer(address indexed from, address indexed to, uint value);</p>
<p class="p2"><br></p>
<p class="p1"><span class="Apple-converted-space">    </span>function name() external pure returns (string memory);</p>
<p class="p1"><span class="Apple-converted-space">    </span>function symbol() external pure returns (string memory);</p>
<p class="p1"><span class="Apple-converted-space">    </span>function decimals() external pure returns (uint8);</p>
<p class="p1"><span class="Apple-converted-space">    </span>function totalSupply() external view returns (uint);</p>
<p class="p1"><span class="Apple-converted-space">    </span>function balanceOf(address owner) external view returns (uint);</p>
<p class="p1"><span class="Apple-converted-space">    </span>function allowance(address owner, address spender) external view returns (uint);</p>
<p class="p2"><br></p>
<p class="p1"><span class="Apple-converted-space">    </span>function approve(address spender, uint value) external returns (bool);</p>
<p class="p1"><span class="Apple-converted-space">    </span>function transfer(address to, uint value) external returns (bool);</p>
<p class="p1"><span class="Apple-converted-space">    </span>function transferFrom(address from, address to, uint value) external returns (bool);</p>
<p class="p2"><br></p>
<p class="p1"><span class="Apple-converted-space">    </span>function DOMAIN_SEPARATOR() external view returns (bytes32);</p>
<p class="p1"><span class="Apple-converted-space">    </span>function PERMIT_TYPEHASH() external pure returns (bytes32);</p>
<p class="p1"><span class="Apple-converted-space">    </span>function nonces(address owner) external view returns (uint);</p>
<p class="p2"><br></p>
<p class="p1"><span class="Apple-converted-space">    </span>function permit(address owner, address spender, uint value, uint deadline, uint8 v, bytes32 r, bytes32 s) external;</p>
<p class="p2"><br></p>
<p class="p1"><span class="Apple-converted-space">    </span>event Mint(address indexed sender, uint amount0, uint amount1);</p>
<p class="p1"><span class="Apple-converted-space">    </span>event Burn(address indexed sender, uint amount0, uint amount1, address indexed to);</p>
<p class="p1"><span class="Apple-converted-space">    </span>event Swap(</p>
<p class="p1"><span class="Apple-converted-space">        </span>address indexed sender,</p>
<p class="p1"><span class="Apple-converted-space">        </span>uint amount0In,</p>
<p class="p1"><span class="Apple-converted-space">        </span>uint amount1In,</p>
<p class="p1"><span class="Apple-converted-space">        </span>uint amount0Out,</p>
<p class="p1"><span class="Apple-converted-space">        </span>uint amount1Out,</p>
<p class="p1"><span class="Apple-converted-space">        </span>address indexed to</p>
<p class="p1"><span class="Apple-converted-space">    </span>);</p>
<p class="p1"><span class="Apple-converted-space">    </span>event Sync(uint112 reserve0, uint112 reserve1);</p>
<p class="p2"><br></p>
<p class="p1"><span class="Apple-converted-space">    </span>function MINIMUM_LIQUIDITY() external pure returns (uint);</p>
<p class="p1"><span class="Apple-converted-space">    </span>function factory() external view returns (address);</p>
<p class="p1"><span class="Apple-converted-space">    </span>function token0() external view returns (address);</p>
<p class="p1"><span class="Apple-converted-space">    </span>function token1() external view returns (address);</p>
<p class="p1"><span class="Apple-converted-space">    </span>function getReserves() external view returns (uint112 reserve0, uint112 reserve1, uint32 blockTimestampLast);</p>
<p class="p1"><span class="Apple-converted-space">    </span>function price0CumulativeLast() external view returns (uint);</p>
<p class="p1"><span class="Apple-converted-space">    </span>function price1CumulativeLast() external view returns (uint);</p>
<p class="p1"><span class="Apple-converted-space">    </span>function kLast() external view returns (uint);</p>
<p class="p2"><br></p>
<p class="p1"><span class="Apple-converted-space">    </span>function mint(address to) external returns (uint liquidity);</p>
<p class="p1"><span class="Apple-converted-space">    </span>function burn(address to) external returns (uint amount0, uint amount1);</p>
<p class="p1"><span class="Apple-converted-space">    </span>function swap(uint amount0Out, uint amount1Out, address to, bytes calldata data) external;</p>
<p class="p1"><span class="Apple-converted-space">    </span>function skim(address to) external;</p>
<p class="p1"><span class="Apple-converted-space">    </span>function sync() external;</p>
<p class="p2"><br></p>
<p class="p1"><span class="Apple-converted-space">    </span>function initialize(address, address) external;</p>
<p class="p1">}</p>
<p class="p2"><br></p>
<p class="p1">// pragma solidity &gt;=0.6.2;</p>
<p class="p2"><br></p>
<p class="p1">interface IUniswapV2Router01 {</p>
<p class="p1"><span class="Apple-converted-space">    </span>function factory() external pure returns (address);</p>
<p class="p1"><span class="Apple-converted-space">    </span>function WETH() external pure returns (address);</p>
<p class="p2"><br></p>
<p class="p1"><span class="Apple-converted-space">    </span>function addLiquidity(</p>
<p class="p1"><span class="Apple-converted-space">        </span>address tokenA,</p>
<p class="p1"><span class="Apple-converted-space">        </span>address tokenB,</p>
<p class="p1"><span class="Apple-converted-space">        </span>uint amountADesired,</p>
<p class="p1"><span class="Apple-converted-space">        </span>uint amountBDesired,</p>
<p class="p1"><span class="Apple-converted-space">        </span>uint amountAMin,</p>
<p class="p1"><span class="Apple-converted-space">        </span>uint amountBMin,</p>
<p class="p1"><span class="Apple-converted-space">        </span>address to,</p>
<p class="p1"><span class="Apple-converted-space">        </span>uint deadline</p>
<p class="p1"><span class="Apple-converted-space">    </span>) external returns (uint amountA, uint amountB, uint liquidity);</p>
<p class="p1"><span class="Apple-converted-space">    </span>function addLiquidityETH(</p>
<p class="p1"><span class="Apple-converted-space">        </span>address token,</p>
<p class="p1"><span class="Apple-converted-space">        </span>uint amountTokenDesired,</p>
<p class="p1"><span class="Apple-converted-space">        </span>uint amountTokenMin,</p>
<p class="p1"><span class="Apple-converted-space">        </span>uint amountETHMin,</p>
<p class="p1"><span class="Apple-converted-space">        </span>address to,</p>
<p class="p1"><span class="Apple-converted-space">        </span>uint deadline</p>
<p class="p1"><span class="Apple-converted-space">    </span>) external payable returns (uint amountToken, uint amountETH, uint liquidity);</p>
<p class="p1"><span class="Apple-converted-space">    </span>function removeLiquidity(</p>
<p class="p1"><span class="Apple-converted-space">        </span>address tokenA,</p>
<p class="p1"><span class="Apple-converted-space">        </span>address tokenB,</p>
<p class="p1"><span class="Apple-converted-space">        </span>uint liquidity,</p>
<p class="p1"><span class="Apple-converted-space">        </span>uint amountAMin,</p>
<p class="p1"><span class="Apple-converted-space">        </span>uint amountBMin,</p>
<p class="p1"><span class="Apple-converted-space">        </span>address to,</p>
<p class="p1"><span class="Apple-converted-space">        </span>uint deadline</p>
<p class="p1"><span class="Apple-converted-space">    </span>) external returns (uint amountA, uint amountB);</p>
<p class="p1"><span class="Apple-converted-space">    </span>function removeLiquidityETH(</p>
<p class="p1"><span class="Apple-converted-space">        </span>address token,</p>
<p class="p1"><span class="Apple-converted-space">        </span>uint liquidity,</p>
<p class="p1"><span class="Apple-converted-space">        </span>uint amountTokenMin,</p>
<p class="p1"><span class="Apple-converted-space">        </span>uint amountETHMin,</p>
<p class="p1"><span class="Apple-converted-space">        </span>address to,</p>
<p class="p1"><span class="Apple-converted-space">        </span>uint deadline</p>
<p class="p1"><span class="Apple-converted-space">    </span>) external returns (uint amountToken, uint amountETH);</p>
<p class="p1"><span class="Apple-converted-space">    </span>function removeLiquidityWithPermit(</p>
<p class="p1"><span class="Apple-converted-space">        </span>address tokenA,</p>
<p class="p1"><span class="Apple-converted-space">        </span>address tokenB,</p>
<p class="p1"><span class="Apple-converted-space">        </span>uint liquidity,</p>
<p class="p1"><span class="Apple-converted-space">        </span>uint amountAMin,</p>
<p class="p1"><span class="Apple-converted-space">        </span>uint amountBMin,</p>
<p class="p1"><span class="Apple-converted-space">        </span>address to,</p>
<p class="p1"><span class="Apple-converted-space">        </span>uint deadline,</p>
<p class="p1"><span class="Apple-converted-space">        </span>bool approveMax, uint8 v, bytes32 r, bytes32 s</p>
<p class="p1"><span class="Apple-converted-space">    </span>) external returns (uint amountA, uint amountB);</p>
<p class="p1"><span class="Apple-converted-space">    </span>function removeLiquidityETHWithPermit(</p>
<p class="p1"><span class="Apple-converted-space">        </span>address token,</p>
<p class="p1"><span class="Apple-converted-space">        </span>uint liquidity,</p>
<p class="p1"><span class="Apple-converted-space">        </span>uint amountTokenMin,</p>
<p class="p1"><span class="Apple-converted-space">        </span>uint amountETHMin,</p>
<p class="p1"><span class="Apple-converted-space">        </span>address to,</p>
<p class="p1"><span class="Apple-converted-space">        </span>uint deadline,</p>
<p class="p1"><span class="Apple-converted-space">        </span>bool approveMax, uint8 v, bytes32 r, bytes32 s</p>
<p class="p1"><span class="Apple-converted-space">    </span>) external returns (uint amountToken, uint amountETH);</p>
<p class="p1"><span class="Apple-converted-space">    </span>function swapExactTokensForTokens(</p>
<p class="p1"><span class="Apple-converted-space">        </span>uint amountIn,</p>
<p class="p1"><span class="Apple-converted-space">        </span>uint amountOutMin,</p>
<p class="p1"><span class="Apple-converted-space">        </span>address[] calldata path,</p>
<p class="p1"><span class="Apple-converted-space">        </span>address to,</p>
<p class="p1"><span class="Apple-converted-space">        </span>uint deadline</p>
<p class="p1"><span class="Apple-converted-space">    </span>) external returns (uint[] memory amounts);</p>
<p class="p1"><span class="Apple-converted-space">    </span>function swapTokensForExactTokens(</p>
<p class="p1"><span class="Apple-converted-space">        </span>uint amountOut,</p>
<p class="p1"><span class="Apple-converted-space">        </span>uint amountInMax,</p>
<p class="p1"><span class="Apple-converted-space">        </span>address[] calldata path,</p>
<p class="p1"><span class="Apple-converted-space">        </span>address to,</p>
<p class="p1"><span class="Apple-converted-space">        </span>uint deadline</p>
<p class="p1"><span class="Apple-converted-space">    </span>) external returns (uint[] memory amounts);</p>
<p class="p1"><span class="Apple-converted-space">    </span>function swapExactETHForTokens(uint amountOutMin, address[] calldata path, address to, uint deadline)</p>
<p class="p1"><span class="Apple-converted-space">        </span>external</p>
<p class="p1"><span class="Apple-converted-space">        </span>payable</p>
<p class="p1"><span class="Apple-converted-space">        </span>returns (uint[] memory amounts);</p>
<p class="p1"><span class="Apple-converted-space">    </span>function swapTokensForExactETH(uint amountOut, uint amountInMax, address[] calldata path, address to, uint deadline)</p>
<p class="p1"><span class="Apple-converted-space">        </span>external</p>
<p class="p1"><span class="Apple-converted-space">        </span>returns (uint[] memory amounts);</p>
<p class="p1"><span class="Apple-converted-space">    </span>function swapExactTokensForETH(uint amountIn, uint amountOutMin, address[] calldata path, address to, uint deadline)</p>
<p class="p1"><span class="Apple-converted-space">        </span>external</p>
<p class="p1"><span class="Apple-converted-space">        </span>returns (uint[] memory amounts);</p>
<p class="p1"><span class="Apple-converted-space">    </span>function swapETHForExactTokens(uint amountOut, address[] calldata path, address to, uint deadline)</p>
<p class="p1"><span class="Apple-converted-space">        </span>external</p>
<p class="p1"><span class="Apple-converted-space">        </span>payable</p>
<p class="p1"><span class="Apple-converted-space">        </span>returns (uint[] memory amounts);</p>
<p class="p2"><br></p>
<p class="p1"><span class="Apple-converted-space">    </span>function quote(uint amountA, uint reserveA, uint reserveB) external pure returns (uint amountB);</p>
<p class="p1"><span class="Apple-converted-space">    </span>function getAmountOut(uint amountIn, uint reserveIn, uint reserveOut) external pure returns (uint amountOut);</p>
<p class="p1"><span class="Apple-converted-space">    </span>function getAmountIn(uint amountOut, uint reserveIn, uint reserveOut) external pure returns (uint amountIn);</p>
<p class="p1"><span class="Apple-converted-space">    </span>function getAmountsOut(uint amountIn, address[] calldata path) external view returns (uint[] memory amounts);</p>
<p class="p1"><span class="Apple-converted-space">    </span>function getAmountsIn(uint amountOut, address[] calldata path) external view returns (uint[] memory amounts);</p>
<p class="p1">}</p>
<p class="p2"><br></p>
<p class="p2"><br></p>
<p class="p2"><br></p>
<p class="p1">// pragma solidity &gt;=0.6.2;</p>
<p class="p2"><br></p>
<p class="p1">interface IUniswapV2Router02 is IUniswapV2Router01 {</p>
<p class="p1"><span class="Apple-converted-space">    </span>function removeLiquidityETHSupportingFeeOnTransferTokens(</p>
<p class="p1"><span class="Apple-converted-space">        </span>address token,</p>
<p class="p1"><span class="Apple-converted-space">        </span>uint liquidity,</p>
<p class="p1"><span class="Apple-converted-space">        </span>uint amountTokenMin,</p>
<p class="p1"><span class="Apple-converted-space">        </span>uint amountETHMin,</p>
<p class="p1"><span class="Apple-converted-space">        </span>address to,</p>
<p class="p1"><span class="Apple-converted-space">        </span>uint deadline</p>
<p class="p1"><span class="Apple-converted-space">    </span>) external returns (uint amountETH);</p>
<p class="p1"><span class="Apple-converted-space">    </span>function removeLiquidityETHWithPermitSupportingFeeOnTransferTokens(</p>
<p class="p1"><span class="Apple-converted-space">        </span>address token,</p>
<p class="p1"><span class="Apple-converted-space">        </span>uint liquidity,</p>
<p class="p1"><span class="Apple-converted-space">        </span>uint amountTokenMin,</p>
<p class="p1"><span class="Apple-converted-space">        </span>uint amountETHMin,</p>
<p class="p1"><span class="Apple-converted-space">        </span>address to,</p>
<p class="p1"><span class="Apple-converted-space">        </span>uint deadline,</p>
<p class="p1"><span class="Apple-converted-space">        </span>bool approveMax, uint8 v, bytes32 r, bytes32 s</p>
<p class="p1"><span class="Apple-converted-space">    </span>) external returns (uint amountETH);</p>
<p class="p2"><br></p>
<p class="p1"><span class="Apple-converted-space">    </span>function swapExactTokensForTokensSupportingFeeOnTransferTokens(</p>
<p class="p1"><span class="Apple-converted-space">        </span>uint amountIn,</p>
<p class="p1"><span class="Apple-converted-space">        </span>uint amountOutMin,</p>
<p class="p1"><span class="Apple-converted-space">        </span>address[] calldata path,</p>
<p class="p1"><span class="Apple-converted-space">        </span>address to,</p>
<p class="p1"><span class="Apple-converted-space">        </span>uint deadline</p>
<p class="p1"><span class="Apple-converted-space">    </span>) external;</p>
<p class="p1"><span class="Apple-converted-space">    </span>function swapExactETHForTokensSupportingFeeOnTransferTokens(</p>
<p class="p1"><span class="Apple-converted-space">        </span>uint amountOutMin,</p>
<p class="p1"><span class="Apple-converted-space">        </span>address[] calldata path,</p>
<p class="p1"><span class="Apple-converted-space">        </span>address to,</p>
<p class="p1"><span class="Apple-converted-space">        </span>uint deadline</p>
<p class="p1"><span class="Apple-converted-space">    </span>) external payable;</p>
<p class="p1"><span class="Apple-converted-space">    </span>function swapExactTokensForETHSupportingFeeOnTransferTokens(</p>
<p class="p1"><span class="Apple-converted-space">        </span>uint amountIn,</p>
<p class="p1"><span class="Apple-converted-space">        </span>uint amountOutMin,</p>
<p class="p1"><span class="Apple-converted-space">        </span>address[] calldata path,</p>
<p class="p1"><span class="Apple-converted-space">        </span>address to,</p>
<p class="p1"><span class="Apple-converted-space">        </span>uint deadline</p>
<p class="p1"><span class="Apple-converted-space">    </span>) external;</p>
<p class="p1">}</p>
<p class="p2"><br></p>
<p class="p2"><br></p>
<p class="p1">contract CULO is Context, IERC20, Ownable {</p>
<p class="p1"><span class="Apple-converted-space">    </span>using SafeMath for uint256;</p>
<p class="p1"><span class="Apple-converted-space">    </span>using Address for address;</p>
<p class="p2"><br></p>
<p class="p1"><span class="Apple-converted-space">    </span>mapping (address =&gt; uint256) private _rOwned;</p>
<p class="p1"><span class="Apple-converted-space">    </span>mapping (address =&gt; uint256) private _tOwned;</p>
<p class="p1"><span class="Apple-converted-space">    </span>mapping (address =&gt; mapping (address =&gt; uint256)) private _allowances;</p>
<p class="p2"><br></p>
<p class="p1"><span class="Apple-converted-space">    </span>mapping (address =&gt; bool) private _isExcludedFromFee;</p>
<p class="p2"><br></p>
<p class="p1"><span class="Apple-converted-space">    </span>mapping (address =&gt; bool) private _isExcluded;</p>
<p class="p1"><span class="Apple-converted-space">    </span>address[] private _excluded;</p>
<p class="p2"><span class="Apple-converted-space">   </span></p>
<p class="p1"><span class="Apple-converted-space">    </span>uint256 private constant MAX = ~uint256(0);</p>
<p class="p1"><span class="Apple-converted-space">    </span>uint256 private _tTotal = 1000000000 * 10**6 * 10**9;</p>
<p class="p1"><span class="Apple-converted-space">    </span>uint256 private _rTotal = (MAX - (MAX % _tTotal));</p>
<p class="p1"><span class="Apple-converted-space">    </span>uint256 private _tFeeTotal;</p>
<p class="p2"><br></p>
<p class="p1"><span class="Apple-converted-space">    </span>string private _name = "CuloCoin";</p>
<p class="p1"><span class="Apple-converted-space">    </span>string private _symbol = "CULO";</p>
<p class="p1"><span class="Apple-converted-space">    </span>uint8 private _decimals = 9;</p>
<p class="p2"><span class="Apple-converted-space">    </span></p>
<p class="p1"><span class="Apple-converted-space">    </span>uint256 public _taxFee = 5;</p>
<p class="p1"><span class="Apple-converted-space">    </span>uint256 private _previousTaxFee = _taxFee;</p>
<p class="p2"><span class="Apple-converted-space">    </span></p>
<p class="p1"><span class="Apple-converted-space">    </span>uint256 public _liquidityFee = 5;</p>
<p class="p1"><span class="Apple-converted-space">    </span>uint256 private _previousLiquidityFee = _liquidityFee;</p>
<p class="p2"><br></p>
<p class="p1"><span class="Apple-converted-space">    </span>IUniswapV2Router02 public immutable uniswapV2Router;</p>
<p class="p1"><span class="Apple-converted-space">    </span>address public immutable uniswapV2Pair;</p>
<p class="p2"><span class="Apple-converted-space">    </span></p>
<p class="p1"><span class="Apple-converted-space">    </span>bool inSwapAndLiquify;</p>
<p class="p1"><span class="Apple-converted-space">    </span>bool public swapAndLiquifyEnabled = true;</p>
<p class="p2"><span class="Apple-converted-space">    </span></p>
<p class="p1"><span class="Apple-converted-space">    </span>uint256 public _maxTxAmount = 5000000 * 10**6 * 10**9;</p>
<p class="p1"><span class="Apple-converted-space">    </span>uint256 private numTokensSellToAddToLiquidity = 500000 * 10**6 * 10**9;</p>
<p class="p2"><span class="Apple-converted-space">    </span></p>
<p class="p1"><span class="Apple-converted-space">    </span>event MinTokensBeforeSwapUpdated(uint256 minTokensBeforeSwap);</p>
<p class="p1"><span class="Apple-converted-space">    </span>event SwapAndLiquifyEnabledUpdated(bool enabled);</p>
<p class="p1"><span class="Apple-converted-space">    </span>event SwapAndLiquify(</p>
<p class="p1"><span class="Apple-converted-space">        </span>uint256 tokensSwapped,</p>
<p class="p1"><span class="Apple-converted-space">        </span>uint256 ethReceived,</p>
<p class="p1"><span class="Apple-converted-space">        </span>uint256 tokensIntoLiqudity</p>
<p class="p1"><span class="Apple-converted-space">    </span>);</p>
<p class="p2"><span class="Apple-converted-space">    </span></p>
<p class="p1"><span class="Apple-converted-space">    </span>modifier lockTheSwap {</p>
<p class="p1"><span class="Apple-converted-space">        </span>inSwapAndLiquify = true;</p>
<p class="p1"><span class="Apple-converted-space">        </span>_;</p>
<p class="p1"><span class="Apple-converted-space">        </span>inSwapAndLiquify = false;</p>
<p class="p1"><span class="Apple-converted-space">    </span>}</p>
<p class="p2"><span class="Apple-converted-space">    </span></p>
<p class="p1"><span class="Apple-converted-space">    </span>constructor () public {</p>
<p class="p1"><span class="Apple-converted-space">        </span>_rOwned[_msgSender()] = _rTotal;</p>
<p class="p2"><span class="Apple-converted-space">        </span></p>
<p class="p1"><span class="Apple-converted-space">        </span>IUniswapV2Router02 _uniswapV2Router = IUniswapV2Router02(0x10ED43C718714eb63d5aA57B78B54704E256024E);</p>
<p class="p1"><span class="Apple-converted-space">         </span>// Create a uniswap pair for this new token</p>
<p class="p1"><span class="Apple-converted-space">        </span>uniswapV2Pair = IUniswapV2Factory(_uniswapV2Router.factory())</p>
<p class="p1"><span class="Apple-converted-space">            </span>.createPair(address(this), _uniswapV2Router.WETH());</p>
<p class="p2"><br></p>
<p class="p1"><span class="Apple-converted-space">        </span>// set the rest of the contract variables</p>
<p class="p1"><span class="Apple-converted-space">        </span>uniswapV2Router = _uniswapV2Router;</p>
<p class="p2"><span class="Apple-converted-space">        </span></p>
<p class="p1"><span class="Apple-converted-space">        </span>//exclude owner and this contract from fee</p>
<p class="p1"><span class="Apple-converted-space">        </span>_isExcludedFromFee[owner()] = true;</p>
<p class="p1"><span class="Apple-converted-space">        </span>_isExcludedFromFee[address(this)] = true;</p>
<p class="p2"><span class="Apple-converted-space">        </span></p>
<p class="p1"><span class="Apple-converted-space">        </span>emit Transfer(address(0), _msgSender(), _tTotal);</p>
<p class="p1"><span class="Apple-converted-space">    </span>}</p>
<p class="p2"><br></p>
<p class="p1"><span class="Apple-converted-space">    </span>function name() public view returns (string memory) {</p>
<p class="p1"><span class="Apple-converted-space">        </span>return _name;</p>
<p class="p1"><span class="Apple-converted-space">    </span>}</p>
<p class="p2"><br></p>
<p class="p1"><span class="Apple-converted-space">    </span>function symbol() public view returns (string memory) {</p>
<p class="p1"><span class="Apple-converted-space">        </span>return _symbol;</p>
<p class="p1"><span class="Apple-converted-space">    </span>}</p>
<p class="p2"><br></p>
<p class="p1"><span class="Apple-converted-space">    </span>function decimals() public view returns (uint8) {</p>
<p class="p1"><span class="Apple-converted-space">        </span>return _decimals;</p>
<p class="p1"><span class="Apple-converted-space">    </span>}</p>
<p class="p2"><br></p>
<p class="p1"><span class="Apple-converted-space">    </span>function totalSupply() public view override returns (uint256) {</p>
<p class="p1"><span class="Apple-converted-space">        </span>return _tTotal;</p>
<p class="p1"><span class="Apple-converted-space">    </span>}</p>
<p class="p2"><br></p>
<p class="p1"><span class="Apple-converted-space">    </span>function balanceOf(address account) public view override returns (uint256) {</p>
<p class="p1"><span class="Apple-converted-space">        </span>if (_isExcluded[account]) return _tOwned[account];</p>
<p class="p1"><span class="Apple-converted-space">        </span>return tokenFromReflection(_rOwned[account]);</p>
<p class="p1"><span class="Apple-converted-space">    </span>}</p>
<p class="p2"><br></p>
<p class="p1"><span class="Apple-converted-space">    </span>function transfer(address recipient, uint256 amount) public override returns (bool) {</p>
<p class="p1"><span class="Apple-converted-space">        </span>_transfer(_msgSender(), recipient, amount);</p>
<p class="p1"><span class="Apple-converted-space">        </span>return true;</p>
<p class="p1"><span class="Apple-converted-space">    </span>}</p>
<p class="p2"><br></p>
<p class="p1"><span class="Apple-converted-space">    </span>function allowance(address owner, address spender) public view override returns (uint256) {</p>
<p class="p1"><span class="Apple-converted-space">        </span>return _allowances[owner][spender];</p>
<p class="p1"><span class="Apple-converted-space">    </span>}</p>
<p class="p2"><br></p>
<p class="p1"><span class="Apple-converted-space">    </span>function approve(address spender, uint256 amount) public override returns (bool) {</p>
<p class="p1"><span class="Apple-converted-space">        </span>_approve(_msgSender(), spender, amount);</p>
<p class="p1"><span class="Apple-converted-space">        </span>return true;</p>
<p class="p1"><span class="Apple-converted-space">    </span>}</p>
<p class="p2"><br></p>
<p class="p1"><span class="Apple-converted-space">    </span>function transferFrom(address sender, address recipient, uint256 amount) public override returns (bool) {</p>
<p class="p1"><span class="Apple-converted-space">        </span>_transfer(sender, recipient, amount);</p>
<p class="p1"><span class="Apple-converted-space">        </span>_approve(sender, _msgSender(), _allowances[sender][_msgSender()].sub(amount, "ERC20: transfer amount exceeds allowance"));</p>
<p class="p1"><span class="Apple-converted-space">        </span>return true;</p>
<p class="p1"><span class="Apple-converted-space">    </span>}</p>
<p class="p2"><br></p>
<p class="p1"><span class="Apple-converted-space">    </span>function increaseAllowance(address spender, uint256 addedValue) public virtual returns (bool) {</p>
<p class="p1"><span class="Apple-converted-space">        </span>_approve(_msgSender(), spender, _allowances[_msgSender()][spender].add(addedValue));</p>
<p class="p1"><span class="Apple-converted-space">        </span>return true;</p>
<p class="p1"><span class="Apple-converted-space">    </span>}</p>
<p class="p2"><br></p>
<p class="p1"><span class="Apple-converted-space">    </span>function decreaseAllowance(address spender, uint256 subtractedValue) public virtual returns (bool) {</p>
<p class="p1"><span class="Apple-converted-space">        </span>_approve(_msgSender(), spender, _allowances[_msgSender()][spender].sub(subtractedValue, "ERC20: decreased allowance below zero"));</p>
<p class="p1"><span class="Apple-converted-space">        </span>return true;</p>
<p class="p1"><span class="Apple-converted-space">    </span>}</p>
<p class="p2"><br></p>
<p class="p1"><span class="Apple-converted-space">    </span>function isExcludedFromReward(address account) public view returns (bool) {</p>
<p class="p1"><span class="Apple-converted-space">        </span>return _isExcluded[account];</p>
<p class="p1"><span class="Apple-converted-space">    </span>}</p>
<p class="p2"><br></p>
<p class="p1"><span class="Apple-converted-space">    </span>function totalFees() public view returns (uint256) {</p>
<p class="p1"><span class="Apple-converted-space">        </span>return _tFeeTotal;</p>
<p class="p1"><span class="Apple-converted-space">    </span>}</p>
<p class="p2"><br></p>
<p class="p1"><span class="Apple-converted-space">    </span>function deliver(uint256 tAmount) public {</p>
<p class="p1"><span class="Apple-converted-space">        </span>address sender = _msgSender();</p>
<p class="p1"><span class="Apple-converted-space">        </span>require(!_isExcluded[sender], "Excluded addresses cannot call this function");</p>
<p class="p1"><span class="Apple-converted-space">        </span>(uint256 rAmount,,,,,) = _getValues(tAmount);</p>
<p class="p1"><span class="Apple-converted-space">        </span>_rOwned[sender] = _rOwned[sender].sub(rAmount);</p>
<p class="p1"><span class="Apple-converted-space">        </span>_rTotal = _rTotal.sub(rAmount);</p>
<p class="p1"><span class="Apple-converted-space">        </span>_tFeeTotal = _tFeeTotal.add(tAmount);</p>
<p class="p1"><span class="Apple-converted-space">    </span>}</p>
<p class="p2"><br></p>
<p class="p1"><span class="Apple-converted-space">    </span>function reflectionFromToken(uint256 tAmount, bool deductTransferFee) public view returns(uint256) {</p>
<p class="p1"><span class="Apple-converted-space">        </span>require(tAmount &lt;= _tTotal, "Amount must be less than supply");</p>
<p class="p1"><span class="Apple-converted-space">        </span>if (!deductTransferFee) {</p>
<p class="p1"><span class="Apple-converted-space">            </span>(uint256 rAmount,,,,,) = _getValues(tAmount);</p>
<p class="p1"><span class="Apple-converted-space">            </span>return rAmount;</p>
<p class="p1"><span class="Apple-converted-space">        </span>} else {</p>
<p class="p1"><span class="Apple-converted-space">            </span>(,uint256 rTransferAmount,,,,) = _getValues(tAmount);</p>
<p class="p1"><span class="Apple-converted-space">            </span>return rTransferAmount;</p>
<p class="p1"><span class="Apple-converted-space">        </span>}</p>
<p class="p1"><span class="Apple-converted-space">    </span>}</p>
<p class="p2"><br></p>
<p class="p1"><span class="Apple-converted-space">    </span>function tokenFromReflection(uint256 rAmount) public view returns(uint256) {</p>
<p class="p1"><span class="Apple-converted-space">        </span>require(rAmount &lt;= _rTotal, "Amount must be less than total reflections");</p>
<p class="p1"><span class="Apple-converted-space">        </span>uint256 currentRate =<span class="Apple-converted-space">  </span>_getRate();</p>
<p class="p1"><span class="Apple-converted-space">        </span>return rAmount.div(currentRate);</p>
<p class="p1"><span class="Apple-converted-space">    </span>}</p>
<p class="p2"><br></p>
<p class="p1"><span class="Apple-converted-space">    </span>function excludeFromReward(address account) public onlyOwner() {</p>
<p class="p1"><span class="Apple-converted-space">        </span>// require(account != 0x7a250d5630B4cF539739dF2C5dAcb4c659F2488D, 'We can not exclude Uniswap router.');</p>
<p class="p1"><span class="Apple-converted-space">        </span>require(!_isExcluded[account], "Account is already excluded");</p>
<p class="p1"><span class="Apple-converted-space">        </span>if(_rOwned[account] &gt; 0) {</p>
<p class="p1"><span class="Apple-converted-space">            </span>_tOwned[account] = tokenFromReflection(_rOwned[account]);</p>
<p class="p1"><span class="Apple-converted-space">        </span>}</p>
<p class="p1"><span class="Apple-converted-space">        </span>_isExcluded[account] = true;</p>
<p class="p1"><span class="Apple-converted-space">        </span>_excluded.push(account);</p>
<p class="p1"><span class="Apple-converted-space">    </span>}</p>
<p class="p2"><br></p>
<p class="p1"><span class="Apple-converted-space">    </span>function includeInReward(address account) external onlyOwner() {</p>
<p class="p1"><span class="Apple-converted-space">        </span>require(_isExcluded[account], "Account is already excluded");</p>
<p class="p1"><span class="Apple-converted-space">        </span>for (uint256 i = 0; i &lt; _excluded.length; i++) {</p>
<p class="p1"><span class="Apple-converted-space">            </span>if (_excluded[i] == account) {</p>
<p class="p1"><span class="Apple-converted-space">                </span>_excluded[i] = _excluded[_excluded.length - 1];</p>
<p class="p1"><span class="Apple-converted-space">                </span>_tOwned[account] = 0;</p>
<p class="p1"><span class="Apple-converted-space">                </span>_isExcluded[account] = false;</p>
<p class="p1"><span class="Apple-converted-space">                </span>_excluded.pop();</p>
<p class="p1"><span class="Apple-converted-space">                </span>break;</p>
<p class="p1"><span class="Apple-converted-space">            </span>}</p>
<p class="p1"><span class="Apple-converted-space">        </span>}</p>
<p class="p1"><span class="Apple-converted-space">    </span>}</p>
<p class="p1"><span class="Apple-converted-space">        </span>function _transferBothExcluded(address sender, address recipient, uint256 tAmount) private {</p>
<p class="p1"><span class="Apple-converted-space">        </span>(uint256 rAmount, uint256 rTransferAmount, uint256 rFee, uint256 tTransferAmount, uint256 tFee, uint256 tLiquidity) = _getValues(tAmount);</p>
<p class="p1"><span class="Apple-converted-space">        </span>_tOwned[sender] = _tOwned[sender].sub(tAmount);</p>
<p class="p1"><span class="Apple-converted-space">        </span>_rOwned[sender] = _rOwned[sender].sub(rAmount);</p>
<p class="p1"><span class="Apple-converted-space">        </span>_tOwned[recipient] = _tOwned[recipient].add(tTransferAmount);</p>
<p class="p1"><span class="Apple-converted-space">        </span>_rOwned[recipient] = _rOwned[recipient].add(rTransferAmount); <span class="Apple-converted-space">       </span></p>
<p class="p1"><span class="Apple-converted-space">        </span>_takeLiquidity(tLiquidity);</p>
<p class="p1"><span class="Apple-converted-space">        </span>_reflectFee(rFee, tFee);</p>
<p class="p1"><span class="Apple-converted-space">        </span>emit Transfer(sender, recipient, tTransferAmount);</p>
<p class="p1"><span class="Apple-converted-space">    </span>}</p>
<p class="p2"><span class="Apple-converted-space">    </span></p>
<p class="p1"><span class="Apple-converted-space">        </span>function excludeFromFee(address account) public onlyOwner {</p>
<p class="p1"><span class="Apple-converted-space">        </span>_isExcludedFromFee[account] = true;</p>
<p class="p1"><span class="Apple-converted-space">    </span>}</p>
<p class="p2"><span class="Apple-converted-space">    </span></p>
<p class="p1"><span class="Apple-converted-space">    </span>function includeInFee(address account) public onlyOwner {</p>
<p class="p1"><span class="Apple-converted-space">        </span>_isExcludedFromFee[account] = false;</p>
<p class="p1"><span class="Apple-converted-space">    </span>}</p>
<p class="p2"><span class="Apple-converted-space">    </span></p>
<p class="p1"><span class="Apple-converted-space">    </span>function setTaxFeePercent(uint256 taxFee) external onlyOwner() {</p>
<p class="p1"><span class="Apple-converted-space">        </span>_taxFee = taxFee;</p>
<p class="p1"><span class="Apple-converted-space">    </span>}</p>
<p class="p2"><span class="Apple-converted-space">    </span></p>
<p class="p1"><span class="Apple-converted-space">    </span>function setLiquidityFeePercent(uint256 liquidityFee) external onlyOwner() {</p>
<p class="p1"><span class="Apple-converted-space">        </span>_liquidityFee = liquidityFee;</p>
<p class="p1"><span class="Apple-converted-space">    </span>}</p>
<p class="p2"><span class="Apple-converted-space">   </span></p>
<p class="p1"><span class="Apple-converted-space">    </span>function setMaxTxPercent(uint256 maxTxPercent) external onlyOwner() {</p>
<p class="p1"><span class="Apple-converted-space">        </span>_maxTxAmount = _tTotal.mul(maxTxPercent).div(</p>
<p class="p1"><span class="Apple-converted-space">            </span>10**2</p>
<p class="p1"><span class="Apple-converted-space">        </span>);</p>
<p class="p1"><span class="Apple-converted-space">    </span>}</p>
<p class="p2"><br></p>
<p class="p1"><span class="Apple-converted-space">    </span>function setSwapAndLiquifyEnabled(bool _enabled) public onlyOwner {</p>
<p class="p1"><span class="Apple-converted-space">        </span>swapAndLiquifyEnabled = _enabled;</p>
<p class="p1"><span class="Apple-converted-space">        </span>emit SwapAndLiquifyEnabledUpdated(_enabled);</p>
<p class="p1"><span class="Apple-converted-space">    </span>}</p>
<p class="p2"><span class="Apple-converted-space">    </span></p>
<p class="p1"><span class="Apple-converted-space">     </span>//to recieve ETH from uniswapV2Router when swaping</p>
<p class="p1"><span class="Apple-converted-space">    </span>receive() external payable {}</p>
<p class="p2"><br></p>
<p class="p1"><span class="Apple-converted-space">    </span>function _reflectFee(uint256 rFee, uint256 tFee) private {</p>
<p class="p1"><span class="Apple-converted-space">        </span>_rTotal = _rTotal.sub(rFee);</p>
<p class="p1"><span class="Apple-converted-space">        </span>_tFeeTotal = _tFeeTotal.add(tFee);</p>
<p class="p1"><span class="Apple-converted-space">    </span>}</p>
<p class="p2"><br></p>
<p class="p1"><span class="Apple-converted-space">    </span>function _getValues(uint256 tAmount) private view returns (uint256, uint256, uint256, uint256, uint256, uint256) {</p>
<p class="p1"><span class="Apple-converted-space">        </span>(uint256 tTransferAmount, uint256 tFee, uint256 tLiquidity) = _getTValues(tAmount);</p>
<p class="p1"><span class="Apple-converted-space">        </span>(uint256 rAmount, uint256 rTransferAmount, uint256 rFee) = _getRValues(tAmount, tFee, tLiquidity, _getRate());</p>
<p class="p1"><span class="Apple-converted-space">        </span>return (rAmount, rTransferAmount, rFee, tTransferAmount, tFee, tLiquidity);</p>
<p class="p1"><span class="Apple-converted-space">    </span>}</p>
<p class="p2"><br></p>
<p class="p1"><span class="Apple-converted-space">    </span>function _getTValues(uint256 tAmount) private view returns (uint256, uint256, uint256) {</p>
<p class="p1"><span class="Apple-converted-space">        </span>uint256 tFee = calculateTaxFee(tAmount);</p>
<p class="p1"><span class="Apple-converted-space">        </span>uint256 tLiquidity = calculateLiquidityFee(tAmount);</p>
<p class="p1"><span class="Apple-converted-space">        </span>uint256 tTransferAmount = tAmount.sub(tFee).sub(tLiquidity);</p>
<p class="p1"><span class="Apple-converted-space">        </span>return (tTransferAmount, tFee, tLiquidity);</p>
<p class="p1"><span class="Apple-converted-space">    </span>}</p>
<p class="p2"><br></p>
<p class="p1"><span class="Apple-converted-space">    </span>function _getRValues(uint256 tAmount, uint256 tFee, uint256 tLiquidity, uint256 currentRate) private pure returns (uint256, uint256, uint256) {</p>
<p class="p1"><span class="Apple-converted-space">        </span>uint256 rAmount = tAmount.mul(currentRate);</p>
<p class="p1"><span class="Apple-converted-space">        </span>uint256 rFee = tFee.mul(currentRate);</p>
<p class="p1"><span class="Apple-converted-space">        </span>uint256 rLiquidity = tLiquidity.mul(currentRate);</p>
<p class="p1"><span class="Apple-converted-space">        </span>uint256 rTransferAmount = rAmount.sub(rFee).sub(rLiquidity);</p>
<p class="p1"><span class="Apple-converted-space">        </span>return (rAmount, rTransferAmount, rFee);</p>
<p class="p1"><span class="Apple-converted-space">    </span>}</p>
<p class="p2"><br></p>
<p class="p1"><span class="Apple-converted-space">    </span>function _getRate() private view returns(uint256) {</p>
<p class="p1"><span class="Apple-converted-space">        </span>(uint256 rSupply, uint256 tSupply) = _getCurrentSupply();</p>
<p class="p1"><span class="Apple-converted-space">        </span>return rSupply.div(tSupply);</p>
<p class="p1"><span class="Apple-converted-space">    </span>}</p>
<p class="p2"><br></p>
<p class="p1"><span class="Apple-converted-space">    </span>function _getCurrentSupply() private view returns(uint256, uint256) {</p>
<p class="p1"><span class="Apple-converted-space">        </span>uint256 rSupply = _rTotal;</p>
<p class="p1"><span class="Apple-converted-space">        </span>uint256 tSupply = _tTotal; <span class="Apple-converted-space">     </span></p>
<p class="p1"><span class="Apple-converted-space">        </span>for (uint256 i = 0; i &lt; _excluded.length; i++) {</p>
<p class="p1"><span class="Apple-converted-space">            </span>if (_rOwned[_excluded[i]] &gt; rSupply || _tOwned[_excluded[i]] &gt; tSupply) return (_rTotal, _tTotal);</p>
<p class="p1"><span class="Apple-converted-space">            </span>rSupply = rSupply.sub(_rOwned[_excluded[i]]);</p>
<p class="p1"><span class="Apple-converted-space">            </span>tSupply = tSupply.sub(_tOwned[_excluded[i]]);</p>
<p class="p1"><span class="Apple-converted-space">        </span>}</p>
<p class="p1"><span class="Apple-converted-space">        </span>if (rSupply &lt; _rTotal.div(_tTotal)) return (_rTotal, _tTotal);</p>
<p class="p1"><span class="Apple-converted-space">        </span>return (rSupply, tSupply);</p>
<p class="p1"><span class="Apple-converted-space">    </span>}</p>
<p class="p2"><span class="Apple-converted-space">    </span></p>
<p class="p1"><span class="Apple-converted-space">    </span>function _takeLiquidity(uint256 tLiquidity) private {</p>
<p class="p1"><span class="Apple-converted-space">        </span>uint256 currentRate =<span class="Apple-converted-space">  </span>_getRate();</p>
<p class="p1"><span class="Apple-converted-space">        </span>uint256 rLiquidity = tLiquidity.mul(currentRate);</p>
<p class="p1"><span class="Apple-converted-space">        </span>_rOwned[address(this)] = _rOwned[address(this)].add(rLiquidity);</p>
<p class="p1"><span class="Apple-converted-space">        </span>if(_isExcluded[address(this)])</p>
<p class="p1"><span class="Apple-converted-space">            </span>_tOwned[address(this)] = _tOwned[address(this)].add(tLiquidity);</p>
<p class="p1"><span class="Apple-converted-space">    </span>}</p>
<p class="p2"><span class="Apple-converted-space">    </span></p>
<p class="p1"><span class="Apple-converted-space">    </span>function calculateTaxFee(uint256 _amount) private view returns (uint256) {</p>
<p class="p1"><span class="Apple-converted-space">        </span>return _amount.mul(_taxFee).div(</p>
<p class="p1"><span class="Apple-converted-space">            </span>10**2</p>
<p class="p1"><span class="Apple-converted-space">        </span>);</p>
<p class="p1"><span class="Apple-converted-space">    </span>}</p>
<p class="p2"><br></p>
<p class="p1"><span class="Apple-converted-space">    </span>function calculateLiquidityFee(uint256 _amount) private view returns (uint256) {</p>
<p class="p1"><span class="Apple-converted-space">        </span>return _amount.mul(_liquidityFee).div(</p>
<p class="p1"><span class="Apple-converted-space">            </span>10**2</p>
<p class="p1"><span class="Apple-converted-space">        </span>);</p>
<p class="p1"><span class="Apple-converted-space">    </span>}</p>
<p class="p2"><span class="Apple-converted-space">    </span></p>
<p class="p1"><span class="Apple-converted-space">    </span>function removeAllFee() private {</p>
<p class="p1"><span class="Apple-converted-space">        </span>if(_taxFee == 0 &amp;&amp; _liquidityFee == 0) return;</p>
<p class="p2"><span class="Apple-converted-space">        </span></p>
<p class="p1"><span class="Apple-converted-space">        </span>_previousTaxFee = _taxFee;</p>
<p class="p1"><span class="Apple-converted-space">        </span>_previousLiquidityFee = _liquidityFee;</p>
<p class="p2"><span class="Apple-converted-space">        </span></p>
<p class="p1"><span class="Apple-converted-space">        </span>_taxFee = 0;</p>
<p class="p1"><span class="Apple-converted-space">        </span>_liquidityFee = 0;</p>
<p class="p1"><span class="Apple-converted-space">    </span>}</p>
<p class="p2"><span class="Apple-converted-space">    </span></p>
<p class="p1"><span class="Apple-converted-space">    </span>function restoreAllFee() private {</p>
<p class="p1"><span class="Apple-converted-space">        </span>_taxFee = _previousTaxFee;</p>
<p class="p1"><span class="Apple-converted-space">        </span>_liquidityFee = _previousLiquidityFee;</p>
<p class="p1"><span class="Apple-converted-space">    </span>}</p>
<p class="p2"><span class="Apple-converted-space">    </span></p>
<p class="p1"><span class="Apple-converted-space">    </span>function isExcludedFromFee(address account) public view returns(bool) {</p>
<p class="p1"><span class="Apple-converted-space">        </span>return _isExcludedFromFee[account];</p>
<p class="p1"><span class="Apple-converted-space">    </span>}</p>
<p class="p2"><br></p>
<p class="p1"><span class="Apple-converted-space">    </span>function _approve(address owner, address spender, uint256 amount) private {</p>
<p class="p1"><span class="Apple-converted-space">        </span>require(owner != address(0), "ERC20: approve from the zero address");</p>
<p class="p1"><span class="Apple-converted-space">        </span>require(spender != address(0), "ERC20: approve to the zero address");</p>
<p class="p2"><br></p>
<p class="p1"><span class="Apple-converted-space">        </span>_allowances[owner][spender] = amount;</p>
<p class="p1"><span class="Apple-converted-space">        </span>emit Approval(owner, spender, amount);</p>
<p class="p1"><span class="Apple-converted-space">    </span>}</p>
<p class="p2"><br></p>
<p class="p1"><span class="Apple-converted-space">    </span>function _transfer(</p>
<p class="p1"><span class="Apple-converted-space">        </span>address from,</p>
<p class="p1"><span class="Apple-converted-space">        </span>address to,</p>
<p class="p1"><span class="Apple-converted-space">        </span>uint256 amount</p>
<p class="p1"><span class="Apple-converted-space">    </span>) private {</p>
<p class="p1"><span class="Apple-converted-space">        </span>require(from != address(0), "ERC20: transfer from the zero address");</p>
<p class="p1"><span class="Apple-converted-space">        </span>require(to != address(0), "ERC20: transfer to the zero address");</p>
<p class="p1"><span class="Apple-converted-space">        </span>require(amount &gt; 0, "Transfer amount must be greater than zero");</p>
<p class="p1"><span class="Apple-converted-space">        </span>if(from != owner() &amp;&amp; to != owner())</p>
<p class="p1"><span class="Apple-converted-space">            </span>require(amount &lt;= _maxTxAmount, "Transfer amount exceeds the maxTxAmount.");</p>
<p class="p2"><br></p>
<p class="p1"><span class="Apple-converted-space">        </span>// is the token balance of this contract address over the min number of</p>
<p class="p1"><span class="Apple-converted-space">        </span>// tokens that we need to initiate a swap + liquidity lock?</p>
<p class="p1"><span class="Apple-converted-space">        </span>// also, don't get caught in a circular liquidity event.</p>
<p class="p1"><span class="Apple-converted-space">        </span>// also, don't swap &amp; liquify if sender is uniswap pair.</p>
<p class="p1"><span class="Apple-converted-space">        </span>uint256 contractTokenBalance = balanceOf(address(this));</p>
<p class="p2"><span class="Apple-converted-space">        </span></p>
<p class="p1"><span class="Apple-converted-space">        </span>if(contractTokenBalance &gt;= _maxTxAmount)</p>
<p class="p1"><span class="Apple-converted-space">        </span>{</p>
<p class="p1"><span class="Apple-converted-space">            </span>contractTokenBalance = _maxTxAmount;</p>
<p class="p1"><span class="Apple-converted-space">        </span>}</p>
<p class="p2"><span class="Apple-converted-space">        </span></p>
<p class="p1"><span class="Apple-converted-space">        </span>bool overMinTokenBalance = contractTokenBalance &gt;= numTokensSellToAddToLiquidity;</p>
<p class="p1"><span class="Apple-converted-space">        </span>if (</p>
<p class="p1"><span class="Apple-converted-space">            </span>overMinTokenBalance &amp;&amp;</p>
<p class="p1"><span class="Apple-converted-space">            </span>!inSwapAndLiquify &amp;&amp;</p>
<p class="p1"><span class="Apple-converted-space">            </span>from != uniswapV2Pair &amp;&amp;</p>
<p class="p1"><span class="Apple-converted-space">            </span>swapAndLiquifyEnabled</p>
<p class="p1"><span class="Apple-converted-space">        </span>) {</p>
<p class="p1"><span class="Apple-converted-space">            </span>contractTokenBalance = numTokensSellToAddToLiquidity;</p>
<p class="p1"><span class="Apple-converted-space">            </span>//add liquidity</p>
<p class="p1"><span class="Apple-converted-space">            </span>swapAndLiquify(contractTokenBalance);</p>
<p class="p1"><span class="Apple-converted-space">        </span>}</p>
<p class="p2"><span class="Apple-converted-space">        </span></p>
<p class="p1"><span class="Apple-converted-space">        </span>//indicates if fee should be deducted from transfer</p>
<p class="p1"><span class="Apple-converted-space">        </span>bool takeFee = true;</p>
<p class="p2"><span class="Apple-converted-space">        </span></p>
<p class="p1"><span class="Apple-converted-space">        </span>//if any account belongs to _isExcludedFromFee account then remove the fee</p>
<p class="p1"><span class="Apple-converted-space">        </span>if(_isExcludedFromFee[from] || _isExcludedFromFee[to]){</p>
<p class="p1"><span class="Apple-converted-space">            </span>takeFee = false;</p>
<p class="p1"><span class="Apple-converted-space">        </span>}</p>
<p class="p2"><span class="Apple-converted-space">        </span></p>
<p class="p1"><span class="Apple-converted-space">        </span>//transfer amount, it will take tax, burn, liquidity fee</p>
<p class="p1"><span class="Apple-converted-space">        </span>_tokenTransfer(from,to,amount,takeFee);</p>
<p class="p1"><span class="Apple-converted-space">    </span>}</p>
<p class="p2"><br></p>
<p class="p1"><span class="Apple-converted-space">    </span>function swapAndLiquify(uint256 contractTokenBalance) private lockTheSwap {</p>
<p class="p1"><span class="Apple-converted-space">        </span>// split the contract balance into halves</p>
<p class="p1"><span class="Apple-converted-space">        </span>uint256 half = contractTokenBalance.div(2);</p>
<p class="p1"><span class="Apple-converted-space">        </span>uint256 otherHalf = contractTokenBalance.sub(half);</p>
<p class="p2"><br></p>
<p class="p1"><span class="Apple-converted-space">        </span>// capture the contract's current ETH balance.</p>
<p class="p1"><span class="Apple-converted-space">        </span>// this is so that we can capture exactly the amount of ETH that the</p>
<p class="p1"><span class="Apple-converted-space">        </span>// swap creates, and not make the liquidity event include any ETH that</p>
<p class="p1"><span class="Apple-converted-space">        </span>// has been manually sent to the contract</p>
<p class="p1"><span class="Apple-converted-space">        </span>uint256 initialBalance = address(this).balance;</p>
<p class="p2"><br></p>
<p class="p1"><span class="Apple-converted-space">        </span>// swap tokens for ETH</p>
<p class="p1"><span class="Apple-converted-space">        </span>swapTokensForEth(half); // &lt;- this breaks the ETH -&gt; HATE swap when swap+liquify is triggered</p>
<p class="p2"><br></p>
<p class="p1"><span class="Apple-converted-space">        </span>// how much ETH did we just swap into?</p>
<p class="p1"><span class="Apple-converted-space">        </span>uint256 newBalance = address(this).balance.sub(initialBalance);</p>
<p class="p2"><br></p>
<p class="p1"><span class="Apple-converted-space">        </span>// add liquidity to uniswap</p>
<p class="p1"><span class="Apple-converted-space">        </span>addLiquidity(otherHalf, newBalance);</p>
<p class="p2"><span class="Apple-converted-space">        </span></p>
<p class="p1"><span class="Apple-converted-space">        </span>emit SwapAndLiquify(half, newBalance, otherHalf);</p>
<p class="p1"><span class="Apple-converted-space">    </span>}</p>
<p class="p2"><br></p>
<p class="p1"><span class="Apple-converted-space">    </span>function swapTokensForEth(uint256 tokenAmount) private {</p>
<p class="p1"><span class="Apple-converted-space">        </span>// generate the uniswap pair path of token -&gt; weth</p>
<p class="p1"><span class="Apple-converted-space">        </span>address[] memory path = new address[](2);</p>
<p class="p1"><span class="Apple-converted-space">        </span>path[0] = address(this);</p>
<p class="p1"><span class="Apple-converted-space">        </span>path[1] = uniswapV2Router.WETH();</p>
<p class="p2"><br></p>
<p class="p1"><span class="Apple-converted-space">        </span>_approve(address(this), address(uniswapV2Router), tokenAmount);</p>
<p class="p2"><br></p>
<p class="p1"><span class="Apple-converted-space">        </span>// make the swap</p>
<p class="p1"><span class="Apple-converted-space">        </span>uniswapV2Router.swapExactTokensForETHSupportingFeeOnTransferTokens(</p>
<p class="p1"><span class="Apple-converted-space">            </span>tokenAmount,</p>
<p class="p1"><span class="Apple-converted-space">            </span>0, // accept any amount of ETH</p>
<p class="p1"><span class="Apple-converted-space">            </span>path,</p>
<p class="p1"><span class="Apple-converted-space">            </span>address(this),</p>
<p class="p1"><span class="Apple-converted-space">            </span>block.timestamp</p>
<p class="p1"><span class="Apple-converted-space">        </span>);</p>
<p class="p1"><span class="Apple-converted-space">    </span>}</p>
<p class="p2"><br></p>
<p class="p1"><span class="Apple-converted-space">    </span>function addLiquidity(uint256 tokenAmount, uint256 ethAmount) private {</p>
<p class="p1"><span class="Apple-converted-space">        </span>// approve token transfer to cover all possible scenarios</p>
<p class="p1"><span class="Apple-converted-space">        </span>_approve(address(this), address(uniswapV2Router), tokenAmount);</p>
<p class="p2"><br></p>
<p class="p1"><span class="Apple-converted-space">        </span>// add the liquidity</p>
<p class="p1"><span class="Apple-converted-space">        </span>uniswapV2Router.addLiquidityETH{value: ethAmount}(</p>
<p class="p1"><span class="Apple-converted-space">            </span>address(this),</p>
<p class="p1"><span class="Apple-converted-space">            </span>tokenAmount,</p>
<p class="p1"><span class="Apple-converted-space">            </span>0, // slippage is unavoidable</p>
<p class="p1"><span class="Apple-converted-space">            </span>0, // slippage is unavoidable</p>
<p class="p1"><span class="Apple-converted-space">            </span>owner(),</p>
<p class="p1"><span class="Apple-converted-space">            </span>block.timestamp</p>
<p class="p1"><span class="Apple-converted-space">        </span>);</p>
<p class="p1"><span class="Apple-converted-space">    </span>}</p>
<p class="p2"><br></p>
<p class="p1"><span class="Apple-converted-space">    </span>//this method is responsible for taking all fee, if takeFee is true</p>
<p class="p1"><span class="Apple-converted-space">    </span>function _tokenTransfer(address sender, address recipient, uint256 amount,bool takeFee) private {</p>
<p class="p1"><span class="Apple-converted-space">        </span>if(!takeFee)</p>
<p class="p1"><span class="Apple-converted-space">            </span>removeAllFee();</p>
<p class="p2"><span class="Apple-converted-space">        </span></p>
<p class="p1"><span class="Apple-converted-space">        </span>if (_isExcluded[sender] &amp;&amp; !_isExcluded[recipient]) {</p>
<p class="p1"><span class="Apple-converted-space">            </span>_transferFromExcluded(sender, recipient, amount);</p>
<p class="p1"><span class="Apple-converted-space">        </span>} else if (!_isExcluded[sender] &amp;&amp; _isExcluded[recipient]) {</p>
<p class="p1"><span class="Apple-converted-space">            </span>_transferToExcluded(sender, recipient, amount);</p>
<p class="p1"><span class="Apple-converted-space">        </span>} else if (!_isExcluded[sender] &amp;&amp; !_isExcluded[recipient]) {</p>
<p class="p1"><span class="Apple-converted-space">            </span>_transferStandard(sender, recipient, amount);</p>
<p class="p1"><span class="Apple-converted-space">        </span>} else if (_isExcluded[sender] &amp;&amp; _isExcluded[recipient]) {</p>
<p class="p1"><span class="Apple-converted-space">            </span>_transferBothExcluded(sender, recipient, amount);</p>
<p class="p1"><span class="Apple-converted-space">        </span>} else {</p>
<p class="p1"><span class="Apple-converted-space">            </span>_transferStandard(sender, recipient, amount);</p>
<p class="p1"><span class="Apple-converted-space">        </span>}</p>
<p class="p2"><span class="Apple-converted-space">        </span></p>
<p class="p1"><span class="Apple-converted-space">        </span>if(!takeFee)</p>
<p class="p1"><span class="Apple-converted-space">            </span>restoreAllFee();</p>
<p class="p1"><span class="Apple-converted-space">    </span>}</p>
<p class="p2"><br></p>
<p class="p1"><span class="Apple-converted-space">    </span>function _transferStandard(address sender, address recipient, uint256 tAmount) private {</p>
<p class="p1"><span class="Apple-converted-space">        </span>(uint256 rAmount, uint256 rTransferAmount, uint256 rFee, uint256 tTransferAmount, uint256 tFee, uint256 tLiquidity) = _getValues(tAmount);</p>
<p class="p1"><span class="Apple-converted-space">        </span>_rOwned[sender] = _rOwned[sender].sub(rAmount);</p>
<p class="p1"><span class="Apple-converted-space">        </span>_rOwned[recipient] = _rOwned[recipient].add(rTransferAmount);</p>
<p class="p1"><span class="Apple-converted-space">        </span>_takeLiquidity(tLiquidity);</p>
<p class="p1"><span class="Apple-converted-space">        </span>_reflectFee(rFee, tFee);</p>
<p class="p1"><span class="Apple-converted-space">        </span>emit Transfer(sender, recipient, tTransferAmount);</p>
<p class="p1"><span class="Apple-converted-space">    </span>}</p>
<p class="p2"><br></p>
<p class="p1"><span class="Apple-converted-space">    </span>function _transferToExcluded(address sender, address recipient, uint256 tAmount) private {</p>
<p class="p1"><span class="Apple-converted-space">        </span>(uint256 rAmount, uint256 rTransferAmount, uint256 rFee, uint256 tTransferAmount, uint256 tFee, uint256 tLiquidity) = _getValues(tAmount);</p>
<p class="p1"><span class="Apple-converted-space">        </span>_rOwned[sender] = _rOwned[sender].sub(rAmount);</p>
<p class="p1"><span class="Apple-converted-space">        </span>_tOwned[recipient] = _tOwned[recipient].add(tTransferAmount);</p>
<p class="p1"><span class="Apple-converted-space">        </span>_rOwned[recipient] = _rOwned[recipient].add(rTransferAmount);<span class="Apple-converted-space">           </span></p>
<p class="p1"><span class="Apple-converted-space">        </span>_takeLiquidity(tLiquidity);</p>
<p class="p1"><span class="Apple-converted-space">        </span>_reflectFee(rFee, tFee);</p>
<p class="p1"><span class="Apple-converted-space">        </span>emit Transfer(sender, recipient, tTransferAmount);</p>
<p class="p1"><span class="Apple-converted-space">    </span>}</p>
<p class="p2"><br></p>
<p class="p1"><span class="Apple-converted-space">    </span>function _transferFromExcluded(address sender, address recipient, uint256 tAmount) private {</p>
<p class="p1"><span class="Apple-converted-space">        </span>(uint256 rAmount, uint256 rTransferAmount, uint256 rFee, uint256 tTransferAmount, uint256 tFee, uint256 tLiquidity) = _getValues(tAmount);</p>
<p class="p1"><span class="Apple-converted-space">        </span>_tOwned[sender] = _tOwned[sender].sub(tAmount);</p>
<p class="p1"><span class="Apple-converted-space">        </span>_rOwned[sender] = _rOwned[sender].sub(rAmount);</p>
<p class="p1"><span class="Apple-converted-space">        </span>_rOwned[recipient] = _rOwned[recipient].add(rTransferAmount);<span class="Apple-converted-space">   </span></p>
<p class="p1"><span class="Apple-converted-space">        </span>_takeLiquidity(tLiquidity);</p>
<p class="p1"><span class="Apple-converted-space">        </span>_reflectFee(rFee, tFee);</p>
<p class="p1"><span class="Apple-converted-space">        </span>emit Transfer(sender, recipient, tTransferAmount);</p>
<p class="p1"><span class="Apple-converted-space">    </span>}</p>
<p class="p2"><br></p>
<p class="p2"><br></p>
<p class="p2"><span class="Apple-converted-space">    </span></p>
<p class="p2"><br></p>
<p class="p1">}</p>
</body>
</html>
