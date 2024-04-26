module m1
  type x1
     integer::x1
    contains
     final:: s1,a1
  end type
  type x2
     integer::x1
    contains
     final:: a2,e
  end type
  type x
    type(x1),allocatable::vs,va(:)
    type(x2),allocatable::vb(:),ve(:,:)
  end type
   integer:: s1f=0,a1f=0
   integer:: ef=0,a2f=0
  contains
 subroutine s1(d)
 type(x1)::d
if (d%x1/=1) print *,101
 s1f=s1f+1
 end subroutine
 subroutine a1(d)
 type(x1)::d(:)
if (any(d%x1/=1)) print *,102
if (any(ubound(d)/=3)) print *,103
 a1f=a1f+1
 end subroutine
 elemental subroutine e(d)
 type(x2),intent(in)::d
interface 
  pure subroutine chk
  end subroutine
end interface
 call chk
 end subroutine
 subroutine a2(d)
 type(x2)::d(:)
if (any(d%x1/=1)) print *,302
if (any(ubound(d)/=3)) print *,303
 a2f=a2f+1
 end subroutine
end
subroutine ss
use m1
type (x),allocatable:: v
allocate (v)
allocate (v%vs)
v%vs%x1=1
allocate(v%va(3))
v%va%x1=1
allocate(v%ve(3,2))
v%ve%x1=1
allocate(v%vb(3))
v%vb%x1=1

deallocate(v)
if (s1f/=1) print *,401
if (a1f/=1) print *,402
if (a2f/=1) print *,403
if (ef/=6) print *,502
end
call ss
print *,'pass'
end

  subroutine chk
 use m1
ef=ef+1
  end subroutine
