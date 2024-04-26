integer::arr(5),ss=1000

forall(integer::kk=1:2)
 forall(integer::ss=1:5) arr(ss)=ss+kk
end forall
if(any(arr /= [ 3,4,5,6,7]))print*,101,arr
if(ss /= 1000) print*,102

print*,"PASS"


end

