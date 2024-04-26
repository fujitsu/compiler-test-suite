call sub()
print*,"PASS"
contains
subroutine sub(dmy1)
real*2,optional::dmy1
real*2:: r2_1=1.5,r2_2=2.5
real*2::res2
res2=min(r2_1,r2_2,dmy1)
if(res2 /= 1.5)print*,"101"
end subroutine

end


