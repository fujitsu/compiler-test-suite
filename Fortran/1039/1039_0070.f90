type st
  sequence
  character(2_2) bbb*9
end type
type (st), pointer::aaa(:)
common /com/aaa
allocate(aaa(10))
do i = 1,10
aaa(i)%bbb="abab"
enddo
write(1,*)aaa
call chk
print *,'pass'
end
subroutine chk
  character(9) bbb(10)
rewind 1
read(1,*) bbb
if (any(bbb/="abab"))print *,'Error*:',bbb
end
