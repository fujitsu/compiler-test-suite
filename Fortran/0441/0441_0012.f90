print *,'pass'
end
subroutine sssssssss()
interface
subroutine subaa()
end subroutine
end interface
procedure(subaa),pointer :: sss
procedure(subaa),pointer :: ppp
ppp=>sss
call sub(ppp)
contains
subroutine sub(sss)
interface
subroutine subaa()
end subroutine
subroutine sub2(ppp)
interface
subroutine sss()
end subroutine
end interface
procedure(sss),pointer :: ppp
end subroutine
end interface
procedure(subaa),pointer :: sss
call sub2(sss)
call sss()
end subroutine
end
subroutine sss()
end subroutine
subroutine subaa()
end subroutine
subroutine sub2(ppp)
interface
subroutine sss()
end subroutine
end interface
procedure(sss),pointer :: ppp
end subroutine
