type t0
  integer :: jj(3)
end type
type ty
class(*),allocatable :: cmp(:)
end type    
integer :: jj(3)
type(ty):: obj
integer::k =1
allocate(integer :: obj%cmp(3))
select type(a=>obj%cmp)
type is (integer)
   a(1:3) =[1,2,3]
   a(a(1):3) =[12,13,14]
   if(any(a.ne.[12,13,14]))print*,"111",a
   if(any(a(1:3).ne.[12,13,14]))print*,"121"
   a(1:3) =[1,2,3]
   a(a(1:3)) =[112,113,114]
   if(any(a.ne.[112,113,114]))print*,"211"
   if(any(a(1:3).ne.[112,113,114]))print*,"221"
 select type(b=>obj%cmp)
  type is (integer)
   a(1:3) =[1,2,3]
   a(a(1):3) =[12,13,14]
   if(any(a.ne.[12,13,14]))print*,"111",a
   if(any(a(1:3).ne.[12,13,14]))print*,"121"
   b(1:3) =[1,2,3]
   b(a(1:3)) =[112,113,114]
   if(any(b.ne.[112,113,114]))print*,"211"
   if(any(b(1:3).ne.[112,113,114]))print*,"221"
   jj(k:3)=b(1:3)
   jj(k:3)=b(1:3)
   class default
     print*,"103"
 end select
   class default
     print*,"103"
end select
if(jj(1) .ne. 112)print*,"101"
if(jj(2) .ne. 113)print*,"102"
if(jj(3) .ne. 114)print*,"103"
print*,"Pass"
end
