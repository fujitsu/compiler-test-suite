call sub
print *,'pass'
contains
subroutine sub
  implicit none
  integer,target :: t1 = 5
  integer,target :: ta(2) = (/6,7/)
  type ty1
     integer,pointer :: p1 =>t1
     integer,pointer :: p2 =>ta(2)
  end type ty1
  type (ty1) :: str

if (str%p1.ne.5) print *,'ng'
if (str%p2.ne.7) print *,'ng'

end subroutine sub
end program
