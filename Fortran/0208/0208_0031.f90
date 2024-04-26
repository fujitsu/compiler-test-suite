module m1
integer,parameter::k=2
contains
subroutine s1(rr2)
complex(kind=k)::c2
real   (kind=k)::r2
real   (kind=k),optional::rr2
r2=1.0_k
c2= cmplx( r2 , rr2 )
if (present(rr2))then
  if (abs(c2-(1.0_k,1.0_k))>0.001) print *,101,cmplx(c2)
else
  if (abs(c2-(1.0_k,0.0_k))>0.001) print *,102,cmplx(c2)
endif
end 
end
use m1
real   (kind=k)::rr2
rr2=1.0_k
call s1
call s1(rr2)
print*,"pass"
end
