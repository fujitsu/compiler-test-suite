type x
  integer::k=100
end type
type(x),pointer :: ip
integer,target::y=5
allocate(ip)
if (ip%k/=100)write(6,*) "NG"
ip=x(y)
call isub(ip)
if (ip%k/=6)write(6,*) "NG"
print *,'pass'
contains
subroutine isub(ip)
type(x) ,pointer,intent(out):: ip
y=y+1
allocate(ip)
ip=x(y)
if (ip%k/=6)write(6,*) "NG"
call isub3(ip)
write(32,*)ip
end subroutine
subroutine isub3(ip)
type(x),pointer,intent(out):: ip
allocate(ip)
if (ip%k/=100)write(6,*) "NG"
ip=x(y)
end subroutine
end
