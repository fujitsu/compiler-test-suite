type a
integer::x1
integer,pointer::p1(:)
end type
type(a)::x
integer::z(2,3)=reshape((/11,12,13,14,15,16/),(/2,3/))
call sub(x%p1,z)
if (any(x%p1/=(/1,2,3/)))write(6,*) "NG"
print *,'pass'
contains
subroutine sub(p,z)
integer,pointer::p(:)
integer::z(:,:)
allocate(p(3))
p=(/1,2,3/)
if (any(z/=reshape((/11,12,13,14,15,16/),(/2,3/))))write(6,*) "NG"
end subroutine 
end

