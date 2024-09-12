  implicit none
  interface swap
     subroutine sub(d1,d2)
      integer,allocatable :: d1,d2
     end subroutine
     subroutine sub2(d1,d2)
      integer,pointer :: d1,d2
     end subroutine
  end interface

integer,allocatable :: a1,a2
integer,pointer :: p1,p2
Allocate(a1,a2)
Allocate(p1,p2)
a1 = 1
a2 = 2
p1 = 4
p2 = 5
call swap(p1,p2)
if(p1 /= 5) print *,101
if(p2 /= 0) print *,102
call swap(a1,a2)
if(a1 /= 2) print *,103
if(a2 /= 1) print *,104
print *,"Pass"
end
  subroutine sub(d1,d2)
  integer,allocatable :: d1,d2
  integer :: temp
  temp = d1
  d1 = d2
  d2 = temp
  end subroutine
  subroutine sub2(d1,d2)
  integer,pointer :: d1,d2
  d1 = d2
  d2 = 0
  end subroutine
