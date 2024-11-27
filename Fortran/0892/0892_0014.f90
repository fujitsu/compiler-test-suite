module mod1
integer::ii=1
contains
integer function fun(d1)
save
integer::d1
block
save
integer,save::ii=2
block
integer::ii(d1)
print*,SIZE(ii)
end block
end block
fun=1
end function
end module

use mod1
print*,fun(10)
end 


