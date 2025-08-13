subroutine s21
integer,pointer :: ip
allocate(ip)
ip=1
call isub(ip)
contains
subroutine isub(ip)
integer ,pointer,intent(in):: ip
ip=2
call isub3(ip)
write(62,*)ip
end subroutine
subroutine isub3(ip)
integer,intent(in):: ip
n=ip
end subroutine
end subroutine

call s21
print *,'pass'
end
