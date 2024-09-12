type ty
class(*),allocatable :: cmp(:)
end type    
character(len=3) :: jj(3)
character(len=2) :: jj2(3)
type ty3
    type(ty):: obj(2)
end type
type(ty3)::obj2(2)
integer::k
k=1
allocate(obj2(k)%obj(k)%cmp(3),source="abc")
allocate(obj2(k)%obj(2)%cmp(3),source= "ef")
select type(a=>obj2(k)%obj(k)%cmp)
  type is (real)
    print*,"101"
  type is (integer)
    print*,"102"
  type is (character(len=*))
   a =["abc","efg", "klm"]
end select
  select type(a=>obj2(k)%obj(2)%cmp(1:3:1))
    type is (real)
       print*,"191"
    type is (integer)
      print*,"102"
    type is (character(len=*))
      a =["bc","fg", "lm"]
end select
select type(a=>obj2(k)%obj(k)%cmp)
  type is (real)
    print*,"101"
  type is (integer)
      print*,"102"
   type is (character(len=*))
     jj=a
    class default
       print*,"103"
     end select
  select type(a=>obj2(k)%obj(2)%cmp)
    type is (real)
       print*,"191"
    type is (integer)
      print*,"102"
    type is (character(len=*))
     jj2=a
   class default
     print*,"103"
end select
if(jj(1) .ne. "abc")print*,"101"
if(jj(2) .ne. "efg")print*,"102"
if(jj(3) .ne. "klm")print*,"109",jj(3)
if(jj2(1) .ne. "bc")print*,"111"
if(jj2(2) .ne. "fg")print*,"112"
if(jj2(3) .ne. "lm")print*,"182"
print*,"Pass"
end
