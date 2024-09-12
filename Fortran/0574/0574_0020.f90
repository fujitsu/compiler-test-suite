module mi
implicit none
interface test
  module procedure test1
  module procedure test2
end interface

contains
subroutine test1(t1)
character(len=:),allocatable :: t1
if(t1 /= "share")print *,101
end subroutine

subroutine test2(t2)
character, pointer:: t2
if(t2 /= 'a') print *,102
end subroutine

end module mi

use mi
implicit none
character,target :: c='a'
character(len=:),allocatable :: ch
character, pointer :: ptr
allocate(character(5) :: ch)
ch="share"
ptr=>c
call test(ch)
call test2(ptr)
print *,"pass"
end 
