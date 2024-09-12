module mod
interface  ssss
  procedure  ifun
 module procedure  jfun
end interface
contains
function ifun(i,j)
end function
function jfun(i)
end function
end

use mod
interface  ssss1
  procedure  jfun
 module procedure  ifun
end interface
print *,'pass'
end
