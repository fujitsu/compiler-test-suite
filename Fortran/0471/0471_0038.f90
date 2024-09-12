call sub
print *,'pass'
contains
subroutine sub
  implicit none
block
interface
subroutine ssss()
  integer,target :: t1 = 5
  integer,target :: ta(2) = (/6,7/)
  type ty1
     integer,pointer :: p1 =>t1
     integer,pointer :: p2 =>ta(2)
  end type ty1
  type (ty1) :: str
end subroutine
end interface

end block

end subroutine sub
end program
