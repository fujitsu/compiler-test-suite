type t0
  integer :: jj(3)
end type
type,extends(t0) ::t1
  integer :: kk(3)
end type
type ty
class(t0),allocatable :: cmp(:,:,:)
end type    
type(t1) :: jj
type(ty):: obj
allocate(t1 :: obj%cmp(1,2,2))
select type(a=>obj%cmp)
  type is (t0)
    select type(a=>obj%cmp)
     type is (t0)
      a(1,2,1)=t0(11)
      jj =t1(a(1,2,1),10)
     type is (t1)
      a(1,2,1)=t1(t0(11),10)
      jj =a(1,2,1)
    end select
 type is (t1)
     a(1,2,1)=t1(t0(11),10)
     jj =a(1,2,1)
class default
     print*,"103"
end select
if(jj%jj(1) .ne. 11)print*,"101"
if(jj%jj(2) .ne. 11)print*,"102"
print*,"Pass"
end
