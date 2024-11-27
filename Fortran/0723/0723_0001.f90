module mod 
 common/com/iii
 bind(c,name='com_') :: /com/
end
subroutine subbbb()
end

use mod
common /com/ j,k,llll
end

module mod1
 common/com/iii
 bind(c,name='com_') :: /com/
end

module mod2
use mod1
 common/com/jjj
 bind(c,name='com_') :: /com/
end

subroutine ssss()
use mod2
iii=jjj
end
