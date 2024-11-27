module mod2
interface sin
function  fun(r)
end function
end interface
end

use mod2
 if (abs(sin(.1)-.1)>0.0001)write(6,*) "NG"
print *,'pass'
end
function  fun(r)
  fun=r
end function
