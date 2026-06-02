type t0
  integer :: jj(3)
end type
type ty
class(*),allocatable :: cmp(:)
end type    
integer :: jj(3)
type(ty):: obj
type(ty):: obj2
integer::k =1
allocate(integer :: obj%cmp(3))
allocate(real :: obj2%cmp(2))
select type(a=>obj2%cmp)
type is (real)
 if(rank(a).ne.1)print*,"901"
 if(any(shape(a).ne.2)) then 
   print*,"902"
 end if
 select type(a=>obj%cmp)
   type is (integer)
   if(rank(a).ne.1)print*,"921"
 if(any(shape(a).ne.3)) then
    print*,"932"
 endif
   a(k:3) =[12,13,14]
   jj(k:3)=a(1:3)
    call sub(a(k:3))
    if (a(k)) 20,10,30   
    10 write(*,*) "101"
    20 write(*,*) "101"
    30 write(*,*) "PASS"
   class default
     print*,"103"
 end select
 class default
  print*,"113"
end select
if(jj(1) .ne. 12)print*,"101"
if(jj(2) .ne. 13)print*,"102"
if(jj(3) .ne. 14)print*,"103"
contains 
subroutine sub(a)
 integer::a(3)
 if(any(a.ne.[12,13,14]))print*,"104"
end
end
