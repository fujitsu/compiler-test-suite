subroutine s
 implicit character(2)(a-z)
call ss(null())
contains
subroutine ss(kp)
implicit character(2)(a-z)
integer::n
interface
 function nf()
 implicit character(2)(a-z)
 end function
end interface
procedure (nf), pointer :: kp
  if (associated(kp))print *,'error-61'
end subroutine 
end
call s

print *,'pass'
end
