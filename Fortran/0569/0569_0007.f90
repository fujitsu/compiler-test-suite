integer,pointer::a(:)
integer::res(3)
allocate(a(3))
a=[2,3,4]
res=fun(a)
if(any(res /= [2,3,4]))print*,101
print*,"PASS"
contains
pure function fun(ss)
integer,value::ss(3)
integer,pointer::fun(:)
allocate(fun(3))
fun=ss

end function

end




