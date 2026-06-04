integer :: act(3)
act(1) = 5
act(2) = 6
act(3) = 7
call s1(act)
contains
subroutine s1(poly)
class(*) :: poly(:)
integer :: ii(2)
integer :: kk(3)
 select type (cptr=>poly)
    type is (integer)
       ii(2)=cptr(1)
       ii(1)=cptr(2)
       kk=cptr
    class default
      print*,"105"
 end select
if(ii(1) .ne. 6)print*,"101"
if(ii(2) .ne. 5)print*,"102"
if(kk(1) .ne. 5)print*,"103"
if(kk(2) .ne. 6)print*,"104"
print*,"Pass"
 end
 end


