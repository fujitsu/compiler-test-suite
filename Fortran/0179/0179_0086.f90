type ty1
 integer,pointer :: ip
end type
type (ty1) :: str
call sub1(str)
print *,'pass'
contains
 subroutine sub1(str2)
  type (ty1) :: str2
  if (1.eq.2)str2%ip=>str2%ip
 end subroutine
end
