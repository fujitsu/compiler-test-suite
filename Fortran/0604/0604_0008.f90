type ty
  class(*),allocatable :: cmp(:)
end type    
integer :: jj(3)
integer :: jj2(3)
type ty3
    type(ty):: obj(2)
end type
type(ty3)::obj2(2)
integer::k
k=1
allocate(integer :: obj2(k)%obj(k)%cmp(3))
allocate(integer :: obj2(k)%obj(2)%cmp(3))
select type(a=>obj2(k)%obj(k)%cmp)
  type is (real)
    print*,"101"
  type is (integer)
   a =[1,2,3]
  class default
    print*,"901"
end select
  select type(a=>obj2(k)%obj(2)%cmp(1:3))
    type is (real)
       print*,"191"
    type is (integer)
     a =[4,5,6]
  class default
    print*,"902"
end select
select type(a=>obj2(k)%obj(k)%cmp)
  type is (real)
    print*,"101"
  type is (integer)
   jj=a
    class default
       print*,"103"
     end select
  select type(a=>obj2(k)%obj(2)%cmp(1:3))
    type is (real)
       print*,"191"
    type is (integer)
     jj2=a
     if(any(shape(a).ne.3))print*,"921"
     if(any(ubound(a).ne.3))print*,"922"
     if(any(lbound(a).ne.1))print*,"933"
   class default
     print*,"1013"
end select
 select type(a=>obj2(k)%obj(2)%cmp(1:3:2))
    type is (real)
       print*,"191"
    type is (integer)
     if(any(shape(a).ne.2))print*,"901"
     if(any(ubound(a).ne.2))print*,"902"
     if(any(lbound(a).ne.1))print*,"903"
     call sub(a)
   class default
     print*,"1013"
end select

if(jj(1) .ne. 1)print*,"101"
if(jj(2) .ne. 2)print*,"102"
if(jj(3) .ne. 3)print*,"109",jj(3)
if(jj2(1) .ne. 4)print*,"111"
if(jj2(2) .ne. 5)print*,"112"
if(jj2(3) .ne. 6)print*,"182"
print*,"Pass"
contains 
subroutine sub(obj)
class(*)::obj(2)
 select type(A=>obj)
    type is (real)
       print*,"391"
    type is(integer)
     if(A(1) .ne. 4)print*,"611"
     if(A(2) .ne. 6)print*,"612"
 end select
end 
end
