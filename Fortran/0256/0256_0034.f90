character::ch1(5)

call sub(4,ch1)
contains
 subroutine sub(n,ch4)
  integer::n
  character(len=n+6)::ch3(5)
  character(len=*)::ch4(5)
call sub2(ch3(1:5:2),ch4(1:5:2))
print*,"PASS"
 end subroutine sub

subroutine sub2(at1,at2)
  character(len=*),contiguous::at1(:)
  character,optional,contiguous::at2(:)
    if(present(at2))then
    if(lbound(at2,1) /=1 ) print*,'603'
  if(any(lbound(at2) /=1 )) print*,'603'
  if(ubound(at2,1) /=3 ) print*,'604',ubound(at2,1)
  if(is_contiguous(at2) .neqv..true.) print*,'605'
  if(is_contiguous(at1) .neqv..true.) print*,'607'
  if(size(shape(at2))/=1 ) print*,'608'
  endif
end subroutine

END
