integer::a,b
a=2
b=a
b= fun(d2=b)
if(b /= 5)print*,201
print*,"PASS"
contains
function fun(d1,d2)
class(*),optional::d1
class(*),optional::d2
integer::fun
fun=5
if(present(d1) .neqv. .false.)print*,101
if(present(d2) .neqv. .true.)print*,102
end function

end
