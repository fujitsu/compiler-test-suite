print *,"pass"
end

subroutine test01()
implicit none
interface
subroutine suba(rr)
procedure(real) ,pointer :: rr
end subroutine
end interface
procedure() ,pointer :: ip
call sub(ip)
call suba(ip)
contains
subroutine sub(rr)
procedure(real) ,pointer :: rr
end subroutine
end subroutine
subroutine suba(rr)
procedure(real) ,pointer :: rr
end subroutine

subroutine test02()
implicit none
external :: ip
call subb(ip)
contains
subroutine sub(rr)
real,external :: rr
end subroutine
end subroutine
subroutine subb(rr)
real,external :: rr
end subroutine

real function ip()
ip=1
end function 
