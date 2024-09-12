module m1 
type x 
integer,allocatable:: x1(:) 
integer:: y1

contains
final::sub 
end type 

type(x),allocatable:: zz(:) 
type(x) :: yz(2:3) 
integer::xp
contains
subroutine sub(d)
type(x)::d(:)
xp = xp + 1
end subroutine
end 
subroutine s1 
 use m1
 xp = 0 
 allocate(yz(2)%x1(4:6),source=[4,5,6]) 
 allocate(yz(3)%x1(4:6),source=[4,5,6]+10)
 allocate(zz(4))
 zz= yz
 if (any(ubound(zz)/=3)) print *,901, ubound(zz) 
 if (any(lbound(zz)/=2)) print *,911, lbound(zz)
 if (xp /= 1) print*,102
 end 
 call s1 
 print *,"PASS" 
 end 
