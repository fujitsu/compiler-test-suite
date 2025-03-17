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
write(1,*)aaa
rewind 1
read(1,'(1x a)')zzz
if (zzz/="abcdabcd")print *,'error* :',zzz
print *,'pass'
end
