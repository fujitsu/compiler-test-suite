integer::aa
forall (integer::fun2=1:2)!
 aa=fun(fun2)
end forall
if(aa /= 1002)print*,101
print*,"PASS"
contains
function fun2()
 integer::fun2
 fun2=10
end function
pure function fun (s)
 integer::fun
 integer,intent(in)::s
 
 fun=1000+s
end function
end

