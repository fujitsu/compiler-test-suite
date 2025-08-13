type st
  sequence
  character,pointer:: bbb*4
end type
type (st), pointer::aaa(:)
character*8 zzz
allocate(aaa(2))
allocate(aaa(1)%bbb)
allocate(aaa(2)%bbb)
do i = 1,2
aaa(i)%bbb="abcd"
enddo
write(10,*)(aaa(i)%bbb,i=1,2)
rewind 10
read(10,'(1x a)')zzz
if (zzz/="abcdabcd")print *,'error* :',zzz
print *,'pass'
end
