module modA
 public
  integer,pointer :: p1,p2
 type mmm
   integer :: m1
   integer :: m2
 end type mmm
end module modA

use modA
type (mmm) mm
call sub1(p1)
call sub2(p2)
call sub3(mm%m1)
call sub4(mm%m2)
print *,"pass"
contains

subroutine sub1(p1)
pointer :: p1
integer,intent(out) :: p1
integer,target :: m
allocate(p1)
p1=>m
p1=3
if (m.ne.3) write(6,*) "NG"
endsubroutine
subroutine sub2(p2)
pointer :: p2
integer,intent(out) :: p2
integer,target :: m
allocate(p2)
p2=>m
p2=3
if (m.ne.3) write(6,*) "NG"
endsubroutine
subroutine sub3(m1)
integer,intent(out) :: m1
m1=3
if (m1.ne.3) write(6,*) "NG"
endsubroutine
subroutine sub4(m2)
integer,intent(inout) :: m2
m2=3
if (m2.ne.3) write(6,*) "NG"
endsubroutine
end program
