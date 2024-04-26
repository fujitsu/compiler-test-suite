real::arr(3),a=10
if(a==10)forall(integer::dd=1:3,ee=1:3)arr(dd)=dd+ee
if(any(arr /= [real::(ii,ii=4,6)]))print*,101
print*,"PASS"
end

