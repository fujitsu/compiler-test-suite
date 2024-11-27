module m1
interface a1
  module procedure k1
end interface
interface a2
  module procedure k2
end interface
contains
function k1(j1,j2)
integer,value::j1,j2
k1=j1+j2
end function
function k2(j1,j2)
integer::j1,j2
k2=j1+j2
end function
end
use m1
if (a1(1,2)/=3)write(6,*) "NG"
if (a2(1,2)/=3)write(6,*) "NG"
print *,'pass'
end

  
