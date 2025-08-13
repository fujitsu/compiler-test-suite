module m
contains
subroutine s1
integer,pointer :: ip
allocate(ip)
ip=1
call isub(ip)
contains
subroutine isub(ip)
integer ,pointer,intent(in):: ip
ip=2
call isub3(ip)
write(15,*)ip
end subroutine
subroutine isub3(ip)
integer,intent(out):: ip
ip=2
end subroutine
end subroutine
subroutine s2
integer,pointer :: ip
allocate(ip)
ip=1
call isub(ip)
contains
subroutine isub(ip)
integer ,pointer,intent(inout):: ip
ip=2
call isub3(ip)
write(15,*)ip
end subroutine
subroutine isub3(ip)
integer,intent(out):: ip
ip=2
end subroutine
end subroutine
subroutine s3
integer,pointer :: ip
allocate(ip)
ip=1
call isub(ip)
contains
subroutine isub(ip)
integer ,pointer,intent(out):: ip
allocate(ip)
ip=2
call isub3(ip)
write(15,*)ip
end subroutine
subroutine isub3(ip)
integer,intent(out):: ip
ip=2
end subroutine
end subroutine
subroutine s11
integer,pointer :: ip
allocate(ip)
ip=1
call isub(ip)
contains
subroutine isub(ip)
integer ,pointer,intent(in):: ip
ip=2
call isub3(ip)
write(15,*)ip
end subroutine
subroutine isub3(ip)
integer,intent(inout):: ip
ip=2
end subroutine
end subroutine
subroutine s12
integer,pointer :: ip
allocate(ip)
ip=1
call isub(ip)
contains
subroutine isub(ip)
integer ,pointer,intent(inout):: ip
ip=2
call isub3(ip)
write(15,*)ip
end subroutine
subroutine isub3(ip)
integer,intent(inout):: ip
ip=2
end subroutine
end subroutine
subroutine s13
integer,pointer :: ip
allocate(ip)
ip=1
call isub(ip)
contains
subroutine isub(ip)
integer ,pointer,intent(out):: ip
allocate(ip)
ip=2
call isub3(ip)
write(15,*)ip
end subroutine
subroutine isub3(ip)
integer,intent(inout):: ip
ip=2
end subroutine
end subroutine
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
write(15,*)ip
end subroutine
subroutine isub3(ip)
integer,intent(in):: ip
n=ip
end subroutine
end subroutine
subroutine s22
integer,pointer :: ip
allocate(ip)
ip=1
call isub(ip)
contains
subroutine isub(ip)
integer ,pointer,intent(inout):: ip
ip=2
call isub3(ip)
write(15,*)ip
end subroutine
subroutine isub3(ip)
integer,intent(inout):: ip
ip=2
end subroutine
end subroutine
subroutine s23
integer,pointer :: ip
allocate(ip)
ip=1
call isub(ip)
contains
subroutine isub(ip)
integer ,pointer,intent(out):: ip
allocate(ip)
ip=2
call isub3(ip)
write(15,*)ip
end subroutine
subroutine isub3(ip)
integer,intent(inout):: ip
ip=2
end subroutine
end subroutine
end

use m
call s1
call s2
call s3
call s11
call s12
call s13
call s21
call s22
call s23
call chk
print *,'pass'
end
subroutine chk
rewind 15
do i=1,9
read(15,*) k;if (k/=2)print *,'error',i,k
end do
end
