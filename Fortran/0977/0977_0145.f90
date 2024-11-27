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
allocate(ip)
y=y+1
ip=x(y)
if (ip%k/=6)write(6,*) "NG"
call isub31(ip)
call isub32(ip)
call isub33(ip)
end subroutine
subroutine isub31(ip)
type(x),pointer,intent(out):: ip
allocate(ip)
ip=x(y)
end subroutine
subroutine isub32(ip)
type(x),pointer,intent(inout):: ip
end subroutine
subroutine isub33(ip)
type(x),pointer,intent(inout):: ip
end subroutine
end
