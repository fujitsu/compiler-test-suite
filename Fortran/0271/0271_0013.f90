real*2,parameter::x=4.5,y=6.5

call sub(min(x+y,44_1))
print*,"PASS"
contains
 subroutine sub(dmy)
  real*2::dmy
  if(dmy /= 11.0)print*,'101'
 end subroutine
end

