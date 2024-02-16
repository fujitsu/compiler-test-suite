complex :: cmp
complex :: cmp2(5)
real :: add,diff,mult,div
cmp=(7,8)
cmp2(1:3)=(2,4)
add=cmp%re + cmp%im
diff=cmp%im - cmp2(1)%re
mult=cmp%re *cmp2(3)%im
div=cmp%im / cmp2(3)%re
if(add .ne. 15)print*,"101"
if(diff .ne. 6)print*,"102"
if(mult .ne. 28)print*,"103"
if(div .ne. 4)print*,"104"
print*,"pass"
end

