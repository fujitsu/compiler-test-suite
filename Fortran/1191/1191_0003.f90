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
a(1)%cobj=[ts([1,2])]
a(2)%cobj=[ts([10,20])]
jj = a(2)
class default
     print*,"103"
end select

if(size(jj%cobj) /= 1)print*,"103"
if(jj%cobj(1)%aa(1) .ne. 10)print*,"101"
if(jj%cobj(1)%aa(2) .ne. 20)print*,"102"
if(size(obj%cmp(2)%cobj) /= 1)print*,"1103"
if(obj%cmp(2)%cobj(1)%aa(1) .ne. 10)print*,"1101"
if(obj%cmp(2)%cobj(1)%aa(2) .ne. 20)print*,"1102"

k=0
select type(a=>obj%cmp)
type is (t0)
 select type(b=>a(1)%cobj)
  type is(ts)
   k=1
   if (b        (1)%aa(1)/=1) print *,201,b        (1)%aa(1)
   if (b        (1)%aa(2)/=2) print *,202
 end select
 select type(b=>a(2)%cobj)
  type is(ts)
   k=k+1
   if (b        (1)%aa(1)/=10) print *,301,b        (1)%aa(1)
   if (b        (1)%aa(2)/=20) print *,302
 end select
end select
if (k/=2 ) print *,401
print*,"sngg596r : pass"
end
