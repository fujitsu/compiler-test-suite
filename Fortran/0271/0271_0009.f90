call sub(3.5_2)
contains
subroutine sub(dmy1)
real*2,optional::dmy1
real*2:: r2_1=1.5,r2_2=2.5
real*2::res2
real::res4
real*8::r8_1=1.5,r8_2=2.5
real*16::r16_1=1.5,r16_2=2.5
real*4::r4_1=1.5,r4_2=2.5
integer*1::i1_1=0
integer*2::i1_2=0
integer*4::i1_4=0
if(present(dmy1))then
res2=max(r2_1,r2_2,dmy1)
if(res2 /= dmy1)print*,"101"

res2=max(dmy1,r2_1,r2_2)
if(res2 /= dmy1)print*,"102"

res4=max(r4_1,r4_2,dmy1)
if(res4 /= dmy1)print*,"103"

res8=max(r8_1,r8_2,dmy1)
if(res8 /= dmy1)print*,"104"

res16=max(r16_1,r16_2,dmy1)
if(res16 /= dmy1)print*,"105"

res4=max(r4_1,dmy1,r4_1)
if(res4 /= dmy1)print*,"106"

res8=max(r8_1,dmy1,r8_2)
if(res8 /= dmy1)print*,"107"

res16=max(r16_1,dmy1,r16_2)
if(res16 /= dmy1)print*,"108"

res2=max(i1_1,i1_2,dmy1)
if(res2 /= dmy1)print*,"109"

res2=max(i1_4,i1_2,dmy1)
if(res2 /= dmy1)print*,"110"
end if

print*,"PASS"

end subroutine

end


