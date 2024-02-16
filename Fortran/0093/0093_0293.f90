complex :: cha
real :: pp
cha=(3,4)
associate(vvv=>cha)
pp = vvv%im
end associate
if(pp .ne. 4)print*,"101"
print *,'pass'
end

