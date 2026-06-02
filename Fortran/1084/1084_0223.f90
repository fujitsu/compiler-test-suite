type ty
class(*),allocatable :: cmp(:,:)
end type    
integer :: jj(2,3)
integer :: jj2(2,3)
type ty3
    type(ty):: obj(3,4)
end type
type(ty3)::obj2(2,1)
integer::k
k=1
allocate(integer :: obj2(k,1)%obj(k,1)%cmp(3,3))
allocate(real :: obj2(2,k)%obj(2,2)%cmp(2,3))
select type(a=>obj2(k,1)%obj(k,1)%cmp)
  type is (real)
    print*,"101"
  type is (integer)
   a([1,2,3],1:3)=10
   a(1:1,1:3:a(1,k)-9)=13
   a(1,1)=1
   jj=a(a(1,1):2,1:3:a(1,1))
  select type(a=>obj2(2,1)%obj(2,2)%cmp)
    type is (real)
     a(1:2,[k,2,k+2])=14
     a(2,2)=1
     jj2=a(int(a(2,2)):2:1,[1,2,3])
    type is (integer)
       print*,"191"
     class default
       print*,"103"
     end select
   class default
     print*,"103"
end select
if(jj(1,1) .ne. 1)print*,"101"
if(jj(1,2) .ne. 13)print*,"102"
if(jj(2,1) .ne. 10)print*,"109",jj(1,2)
if(jj2(1,1) .ne. 14)print*,"111"
if(jj2(2,2) .ne. 1)print*,"112"
if(jj2(2,3) .ne. 14)print*,"182"
print*,"Pass"
end
