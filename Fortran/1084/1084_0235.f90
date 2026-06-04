type ts
 integer::aa(2)
end type
type t0
  class(ts),allocatable::cobj(:)
end type
type ty
class(t0),allocatable :: cmp(:)
end type    
type(t0) :: jj
type(ty):: obj
allocate(t0 :: obj%cmp(3))
allocate(ts :: obj%cmp(2)%cobj(4))
select type(a=>obj%cmp)
type is (t0)
a(2)%cobj=[ts([10,20])]
jj = a(2)
class default
     print*,"103"
end select

if(size(jj%cobj) /= 1)print*,"103"
if(jj%cobj(1)%aa(1) .ne. 10)print*,"101"
if(jj%cobj(1)%aa(2) .ne. 20)print*,"102"
print*,"PASS"
end
