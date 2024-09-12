integer a1,a2,a3,a4
common a3
a1=-1;a2=-2;a3=-3;a4=-4
call sub(a2)
if(a4 /= -4)print*,'ng1'
print*,'pass'
contains
 subroutine sub(a2)
 integer a2,a4
 a4=1
 if(a1 /= -1)print*,'ng2'
 if(a2 /= -2)print*,'ng3'
 if(a3 /= -3)print*,'ng4'
 if(a4 /=  1)print*,'ng5'
 end subroutine
end
