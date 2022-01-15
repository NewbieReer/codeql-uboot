import cpp

class NetworkByteSwap extends Expr {
  NetworkByteSwap () {
    exists(MacroInvocation mi, Macro m | m.getName().regexpMatch("ntoh(s|l|ll)") and mi.getMacro() = m and this = mi.getExpr())
  }
}

from NetworkByteSwap n
select n, "Network byte swap"