integer::ii
ii=fun2()
if(ii /=10)print*,202
contains
function fun2()
 integer::fun2
 integer::aa
 do concurrent (integer::fun2=1:2)
  aa=fun(fun2)
 end do
if(aa /= 1002)print*,101
 fun2=10
print*,"PASS"
end function
pure function fun (s)
 integer::fun
 integer,intent(in)::s
 
 fun=1000+s
end function
end

