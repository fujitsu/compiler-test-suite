integer :: act(3)
act(1) = 5
act(2) = 6
act(3) = 7

call s1(act)

contains
subroutine s1(poly)
class(*) :: poly(:)

integer :: ii(2)
integer :: kk(2)

 select type (cptr=>poly(2:3))
    type is (integer)
       ii(2) = cptr(1)
       ii(1) = cptr(2)
       kk = cptr
    class default
       print*,"105"
 end select

if(ii(1) .ne. 7)print*,"101"
if(ii(2) .ne. 6)print*,"102"
if(kk(1) .ne. 6)print*,"103"
if(kk(2) .ne. 7)print*,"104"
print*,"Pass"
end
end
