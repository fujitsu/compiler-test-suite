call test01()
call test02()
call test03()
call test04()
print *,"pass"
end

subroutine test01()
integer,pointer :: ip
allocate(ip)
ip=1
call isub(ip)
contains
subroutine isub(ip)
integer,pointer ,intent(in):: ip
call isub2(ip)
call isub3(ip)
call isub4(ip)
end subroutine
subroutine isub2(ip)
integer,intent(in),optional:: ip
end subroutine
subroutine isub3(ip)
integer,intent(out),optional:: ip
ip=ip
end subroutine
subroutine isub4(ip)
integer,intent(inout),optional:: ip
ip=ip
end subroutine
end subroutine

subroutine test02()
integer,pointer :: ip
allocate(ip)
ip=1
call isub(ip)
contains
subroutine isub(ip)
integer,pointer :: ip
call isub2(ip)
call isub3(ip)
call isub4(ip)
end subroutine
subroutine isub2(ip)
integer,intent(in),optional:: ip
end subroutine
subroutine isub3(ip)
integer,intent(out),optional:: ip
end subroutine
subroutine isub4(ip)
integer,intent(inout),optional:: ip
end subroutine
end subroutine

subroutine test03()
integer,pointer :: ip
allocate(ip)
ip=1
call isub(ip)
contains
subroutine isub(ip)
integer,pointer ,intent(inout):: ip
call isub2(ip)
call isub3(ip)
call isub4(ip)
end subroutine
subroutine isub2(ip)
integer,intent(in),optional:: ip
end subroutine
subroutine isub3(ip)
integer,intent(out),optional:: ip
end subroutine
subroutine isub4(ip)
integer,intent(inout),optional:: ip
end subroutine
end subroutine

subroutine test04()
integer,pointer :: ip
allocate(ip)
ip=1
call isub(ip)
contains
subroutine isub(ip)
integer,pointer ,intent(out):: ip
integer ,target :: tt
ip=>tt
call isub3(ip)
call isub2(ip)
call isub4(ip)
end subroutine
subroutine isub2(ip)
integer,intent(in),optional:: ip
end subroutine
subroutine isub3(ip)
integer,intent(out),optional:: ip
end subroutine
subroutine isub4(ip)
integer,intent(inout),optional:: ip
end subroutine
end subroutine

