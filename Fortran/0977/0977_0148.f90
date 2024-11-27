module m1
type x
  integer,pointer::k(:)
end type
type(x),pointer :: ip
integer,target::y=5
contains
subroutine s01
allocate(ip)
allocate(ip%k(2))
ip%k=100
if (any(ip%k/=100))write(6,*) "NG"
call isub(ip)
if (any(ip%k/=300))write(6,*) "NG"
contains
subroutine isub(ip)
type(x) ,pointer,intent(out):: ip
allocate(ip)
allocate(ip%k(2))
ip%k=200
if (any(ip%k/=200))write(6,*) "NG"
call isub3(ip)
end subroutine
subroutine isub3(ip)
type(x),pointer,intent(out):: ip
allocate(ip)
allocate(ip%k(2))
ip%k=300
if (any(ip%k/=300))write(6,*) "NG"
end subroutine
end subroutine
subroutine s02
call isub(ip)
if (any(ip%k/=300))write(6,*) "NG"
contains
subroutine isub(ip)
type(x) ,pointer,intent(out):: ip
call isub3(ip)
end subroutine
subroutine isub3(ip)
type(x),pointer,intent(out):: ip
allocate(ip)
allocate(ip%k(2))
ip%k=300
if (any(ip%k/=300))write(6,*) "NG"
end subroutine
end subroutine
end
 use m1
print *,'pass'
call s01
call s02
end
