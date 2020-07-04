
import cpp

class NetworkByteSwap extends Expr {
  NetworkByteSwap () {
    // TODO: replace <class> and <var>
    exists(MacroInvocation ma |
      // TODO: <condition>
      ma.getMacro().getName().regexpMatch("(ntohs|ntohl|ntohll)")
      and this = ma.getExpr()
    )
  } 
}

from NetworkByteSwap n
select n, "Network byte swap" 