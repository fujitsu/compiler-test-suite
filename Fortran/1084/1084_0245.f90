type t0
  integer :: jj(3)
end type
type ty
class(*),allocatable :: cmp(:,:)
end type    
integer :: jj(3,2)
type(ty):: obj
allocate(integer :: obj%cmp(3,2))
select type(a=>obj%cmp)
type is (real)
 a(1,1)=13.2
type is (integer)
a(1,1)=101
a(1,2)=111
a(2,1)=102
a(2,2)=112
a(3,1)=103
a(3,2)=113
jj=a
 select type(b=>obj%cmp)
   type is (integer)
    select case (b(1,1))
      case (101)
        a(1,1) =201       
      case (102)
    end select
    if(a(1,1).ne.201)print*,"301"
end select
  
class default
     print*,"103"
end select
if(jj(1,1) .ne. 101)print*,"101"
if(jj(1,2) .ne. 111)print*,"102"
if(jj(2,1) .ne. 102)print*,"111"
if(jj(2,2) .ne. 112)print*,"112"
if(jj(3,1) .ne. 103)print*,"121"
if(jj(3,2) .ne. 113)print*,"122"
print*,"Pass"
end
