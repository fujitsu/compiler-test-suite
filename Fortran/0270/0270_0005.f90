
call sub()
contains 
subroutine sub(dmy1,dmy2)
real*4,optional::dmy1
real*4,optional::dmy2(4)
complex(kind=2)::cmp(4),cmp2
real*4::x
x=44.5
if(present(dmy1))then
cmp2=cmplx(x,dmy1,2)
if(cmp2 /= (44.5,0.00))print*,"102"
endif
if(present(dmy2))then
cmp=cmplx(x,dmy2,2)
if(any(cmp /= (44.5,0.00)))print*,"101"
endif
print*,"PASS"
end
end
