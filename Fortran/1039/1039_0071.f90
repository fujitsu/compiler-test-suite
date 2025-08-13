type st
  sequence
  character bbb*4
end type
type (st), pointer::aaa(:)
character*8 zzz
allocate(aaa(2))
do i = 1,2
aaa(i)%bbb="abcd"
enddo
write(9,*)aaa
rewind 9
read(9,'(1x a)')zzz
if (zzz/="abcdabcd")print *,'error* :',zzz
print *,'pass'
end
