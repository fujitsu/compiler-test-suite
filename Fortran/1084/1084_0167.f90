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
   a([k,2,k+2])=10
   a(2:a(1)-7)=a(a(1)-9)+1
   jj=a([k,2,k+2])
  select type(a=>obj2(k)%obj(2)%cmp)
    type is (real)
       print*,"191"
    type is (integer)
     a([k,2,k+2])=13
     a(2)=a(2)+1
     jj2=a([k,2,k+2])
     call sub(obj2(k)%obj(2)%cmp)
     call sub(fun(obj2(k)%obj(2)%cmp))
     class default
       print*,"103"
     end select
   class default
     print*,"103"
end select
if(jj(1) .ne. 10)print*,"101"
if(jj(2) .ne. 11)print*,"102"
if(jj(3) .ne. 11)print*,"109",jj(3)
if(jj2(1) .ne. 13)print*,"111"
if(jj2(2) .ne. 14)print*,"112"
if(jj2(3) .ne. 13)print*,"182"
print*,"Pass"
contains 
subroutine sub(a)
class(*)::a(3)
  select type(a1=>a)
    type is (real)
       print*,"191"
    type is (integer)
    if(a1(1).ne.13)print*,"101"
    if(a1(2).ne.14)print*,"121"
    if(a1(3).ne.13)print*,"131"
    select type(a1=>a)
      type is (real)
        print*,"191"
      type is (integer)
        if(a1(1).ne.13)print*,"401"
        if(a1(2).ne.14)print*,"421"
        if(a1(3).ne.13)print*,"431"
    end select
   end select
end
function fun(a)
class(*)::a(3)
class(*),allocatable :: fun(:)
  select type(a1=>a)
    type is (real)
       print*,"191"
    type is (integer)
    if(a1(1).ne.13)print*,"201"
    if(a1(2).ne.14)print*,"221"
    if(a1(3).ne.13)print*,"231"
    allocate(fun(3),source=a1)
    select type(a1=>fun)
      type is (real)
        print*,"191"
      type is (integer)
        if(a1(1).ne.13)print*,"301"
        if(a1(2).ne.14)print*,"321"
        if(a1(3).ne.13)print*,"331"
    end select
   end select
end

end
