subroutine s1
type x1
  integer::x11=1
  integer::x2
end type
type,extends(x1):: x2
  integer::x21
  integer::x22=2
end type
class (*),pointer:: v1(:,:,:)
class (x1),pointer:: t(:,:,:)
integer(8):: addr
allocate(x2:: t(2,3,4))
allocate(v1(2,3,4),mold=t)
select type(a=>v1)
 type is(x2)
  a%x11=1
  if (any(a%x11/=1)) print *,1201,a%x11
end select
contains
subroutine dump(i)
pointer (i,ip(8))
write(6,'(z8.8)') ip(1)
write(6,'(z8.8)') ip(2)
write(6,'(z8.8)') ip(3)
write(6,'(z8.8)') ip(4)
write(6,'(z8.8)') ip(5)
write(6,'(z8.8)') ip(6)
write(6,'(z8.8)') ip(7)
write(6,'(z8.8)') ip(8)
end subroutine
end
call s1
print *,'pass'
end
