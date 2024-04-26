integer::arr(5),ss=1000,brr(5)

do concurrent(integer::kk=1:2)
forall(integer::kk1=1:2)
 forall(ss=1:5) arr(ss)=ss+kk1
 forall(integer::ss=1:5) brr(ss)=ss
end forall
end do
if(any(arr /= [ 3,4,5,6,7]))print*,101,arr
if(any(brr /= [ 1,2,3,4,5]))print*,102,brr
if(ss /= 1000) print*,102

print*,"PASS"


end

