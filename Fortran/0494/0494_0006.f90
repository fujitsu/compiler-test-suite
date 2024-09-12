module m1
implicit none
integer,parameter::k2=2,k4=4
integer::n2=2
contains
subroutine s10(r2,k) 
real(k2):: r2
integer::k
if (k==1) then
if (r2/=2._k2) print *,9001,real(r2,4)
else
if (r2/=0._k2) print *,9011,real(r2,4)
endif
end 
subroutine s11(r2,k) 
integer::k,m
real(k2):: r2(:)
if (k==1) then
do m=1,2
if (r2(m)/=2._k2) print *,9001,m,real(r2(m),4)
end do
else
do m=1,2
if (r2(m)/=0._k2) print *,9001,m,real(r2(m),4)
end do
endif
end 
subroutine s20(c2,k) 
integer::k
complex(k2):: c2
if (k==1) then
if (c2/=(2._k2,3._k2)) print *,9002,cmplx(c2)
else
if (c2/=(0._k2,0._k2)) print *,9012,cmplx(c2)
endif
end 
subroutine s21(c2,k) 
integer::k,m
complex(k2):: c2(:)
if (k==1) then
do m=1,2
if (c2(m)/=(2._k2,3._k2)) print *,9002,m,cmplx(c2(m))
end do
else
do m=1,2
if (c2(m)/=(0._k2,0._k2)) print *,9012,m,cmplx(c2(m))
end do
endif
end 
end
subroutine ss1
use m1
real(k2),allocatable:: r2,r2a(:)
complex(k2),allocatable:: c2,c2a(:)
allocate(r2,source=2._2)
allocate(r2a(2),source=2._2)
allocate(c2,source=(2._2,3._2))
allocate(c2a(2),source=(2._2,3._2))
call s10(r2,1)
call s11(r2a,1)
call s20(c2,1)
call s21(c2a,1)
end
subroutine ss2
use m1
real(k2),allocatable:: r2u,r2au(:)
complex(k2),allocatable:: c2u,c2au(:)
allocate(r2u)
allocate(r2au(2))
allocate(c2u)
allocate(c2au(2))
r2u=0;r2au=0;c2u=0;c2au=0
call s10(r2u,0)
call s11(r2au,0)
call s20(c2u,0)
call s21(c2au,0)
end
call ss1
call ss2
print *,'pass'
end 
