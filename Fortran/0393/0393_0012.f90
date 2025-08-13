subroutine s1
type x1
  integer::x11=1
  integer::x2
end type
type,extends(x1):: x2
  integer::x21
end type
class (x1),pointer:: v2(:)
class (* ),pointer:: v1(:)
class (x1),pointer:: t
integer(8)::addr
allocate(x2:: t)
allocate(x2::v2(2))
  addr=loc(v2)
  call dump(addr)
allocate(v2(2),mold=t)
  addr=loc(v2)
  call dump(addr)
allocate(v2(2))
  addr=loc(v2)
  call dump(addr)
allocate(v1(2),mold=t)
k=0
select type(v1)
 type is(x2)
  k=1
  call dump(addr)
end select
if (k/=1) print *,701
contains
subroutine dump(i)
pointer (i,ip(8))
write(7,'(z8.8)') ip(1)
write(7,'(z8.8)') ip(2)
write(7,'(z8.8)') ip(3)
write(7,'(z8.8)') ip(4)
write(7,'(z8.8)') ip(5)
write(7,'(z8.8)') ip(6)
end subroutine
end
call s1
print *,'pass'
end
