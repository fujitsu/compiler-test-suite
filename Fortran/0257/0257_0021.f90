type ty
integer :: aa(5)
integer,allocatable :: cc(:)
end type ty
type(ty) :: obj
type(ty) :: obj2
integer::k=1
allocate(obj%cc(5))
obj%aa = 2
obj%cc = 3
allocate(obj2%cc(5))
obj2%aa = 2
obj2%cc = 3
call sub(obj%aa(1:5:k),obj%cc(1:5:k),obj2%aa(1:5:k),obj2%cc(1:5:k))
call sub(obj%aa(1:5:k),obj%cc(1:5:1),obj2%aa(1:5:k),obj2%cc(1:5:1))
call sub(obj%aa(1:5:1),obj%cc(1:5:1),obj2%aa(1:5:1),obj2%cc(1:5:1))
call sub(obj%aa(1:5:1),obj%cc(1:5:k),obj2%aa(1:5:1),obj2%cc(1:5:k))
 k=2
call sub2(obj%aa(1:5:k),obj%cc(1:5:k),obj2%aa(1:5:k),obj2%cc(1:5:k))
call sub2((obj%aa(1:5:k)),(obj%cc(1:5:k)),(obj2%aa(1:5:k)),(obj2%cc(1:5:k)))

print*,"pass"
contains
subroutine sub(x,y,z,p)
integer::x(5)
integer::y(5)
integer,contiguous::z(:)
integer,contiguous::p(:)
if(loc(x).ne.loc(obj%aa))print*,"101"
if(loc(y).ne.loc(obj%cc))print*,"102"
if(loc(z).ne.loc(obj2%aa))print*,"103"
if(loc(p).ne.loc(obj2%cc))print*,"104"
end subroutine
subroutine sub2(x,y,z,p)
integer::x(5)
integer::y(5)
integer,contiguous::z(:)
integer,contiguous::p(:)
if(loc(x).eq.loc(obj%aa))print*,"201"
if(loc(y).eq.loc(obj%cc))print*,"202"
if(loc(z).eq.loc(obj2%aa))print*,"203"
if(loc(p).eq.loc(obj2%cc))print*,"204"
end subroutine
end
