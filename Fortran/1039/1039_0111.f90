module m1
type st
  sequence
  character,pointer:: bbb*4
end type
contains
subroutine sub(aaa)
type (st), pointer::aaa(:)
character*8 zzz
allocate(aaa(2))
allocate(aaa(1)%bbb)
allocate(aaa(2)%bbb)
do i = 1,2
aaa(i)%bbb="abcd"
enddo
write(1,*)(aaa(i)%bbb,i=1,2)
rewind 1
read(1,'(1x a)')zzz
if (zzz/="abcdabcd")print *,'error* :',zzz
end subroutine
end
use m1
type (st), pointer::aaa(:)
call sub(aaa)
print *,'pass'
end
