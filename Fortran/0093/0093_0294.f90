complex :: cha(2)
real :: pp
cha(1)=(3,4)
cha(2)=(5,6)
associate(vvv=>cha(2))
pp = vvv%im
end associate
if(pp .ne. 6)print*,"101",pp
print *,'pass'
end

