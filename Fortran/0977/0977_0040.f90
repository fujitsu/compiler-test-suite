module m
integer,pointer::p(:)
contains
 subroutine s(x)
 integer,pointer,intent(out)::x(:)
 allocate(x(3))
  x=1
 end subroutine
 subroutine s1(x,i)
 integer,pointer,optional,intent(out)::x(:)
if (i==1) then
 if (.not.present(x))write(6,*) "NG"
 allocate(x(3))
 if (.not.associated(x))write(6,*) "NG"
  x=1
else 
 if (present(x))write(6,*) "NG"
endif
 end subroutine
end
use m
allocate(p(2))
p=2
call s(p)
if (any(shape(p)/=3))write(6,*) "NG"
if (any(p/=1))write(6,*) "NG"
allocate(p(2))
p=2
call s1(p,1)
if (any(shape(p)/=3))write(6,*) "NG"
if (any(p/=1))write(6,*) "NG"
allocate(p(2))
p=2
call s1(i=0)
if (any(shape(p)/=2))write(6,*) "NG"
if (any(p/=2))write(6,*) "NG"
print *,'pass'
end
