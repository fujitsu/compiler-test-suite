call sub(3.5_2,3.4_4)
contains
subroutine sub(dmy1,dmy2)
real*2,optional::dmy1
real*4,optional::dmy2
real*2:: r2_1=1.5,r2_2=2.5
real*2::res2
real*4::r4_1=1.5,res4
if(present(dmy1))then
res4=max(r2_1,r2_2,dmy1,dmy2)
if(res4 /= dmy1)print*,"101"
res4=max(r2_1,r2_2,dmy2,dmy1)
if(res4 /= dmy1)print*,"102"
end if

print*,"PASS"

end subroutine

end


