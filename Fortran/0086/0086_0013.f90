call s1
call s2
print *,'pass'
contains
subroutine s1
real*4::r1(2,3),r2(2,3)
r2=2
r1=r2**2
if(any(r1/=reshape([(4.0,k=1,6)],[2,3]))) print *,'err1'
end subroutine s1
subroutine s2
real*8::r1(2,3),r2(2,3)
r2=2
r1=r2**2
if(any(r1/=reshape([(4.0_8,k=1,6)],[2,3]))) print *,'err2'
end subroutine s2
end
