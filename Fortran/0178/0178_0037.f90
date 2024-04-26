type ty1
 integer,pointer :: ip
end type
type (ty1) :: str
call sub()
print *,'pass'
contains
 subroutine sub()
  call sub1(str)
 end subroutine
 subroutine sub1(str2)
  type (ty1) :: str2
 end subroutine
end
