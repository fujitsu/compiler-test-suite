integer,pointer :: ip
allocate(ip)
ip=1
call isub(ip)
print *,'pass'
contains
subroutine isub(ip)
integer ,pointer,intent(in):: ip
ip=2
call isub3(ip)
write(1,*)ip
end subroutine
subroutine isub3(ip)
integer,intent(out):: ip
ip=2
end subroutine
end
