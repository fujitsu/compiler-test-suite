real::arr(3)

do concurrent(integer::dd=1:3,ee=1:3)
arr(dd)=dd+ee
end do
if(any(arr /= [real::(ii,ii=4,6)]))print*,101
print*,"PASS"
end

