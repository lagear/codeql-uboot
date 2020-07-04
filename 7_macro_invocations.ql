import cpp

from MacroInvocation ma
where ma.getMacro().getName().regexpMatch("(ntohs|ntohl|ntohll)")
select ma, "macros called"