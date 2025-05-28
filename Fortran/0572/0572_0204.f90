
character::ch1(5)
character(len=5)::ch2(6)
call sub(ch1,ch2,5,ch1)
contains 
 subroutine sub(aa,aa2,n,ch4)
  character,optional::aa(..)
  character(len=5),optional::aa2(..)
  integer::n
  character(len=n+6)::ch3(4)
  character(len=*)::ch4(..)
  character(len=:),allocatable::ch5(:)
  allocate(character(len=3)::ch5(6))
 if(present(aa).NEQV. .true.) print*,'402'
  if(lbound(aa,1) /=1 ) print*,'403'
  if(ubound(aa,1) /=5 ) print*,'404'
  if(size(aa,1) /= 5) print*,'405'
  if(size(shape(aa))/=1 ) print*,'407'
  if(is_contiguous(aa).NEQV. .true.)print*,'406'
  if(rank(aa)/=1)print*,'408'

 if(present(aa2).NEQV. .true.) print*,'502'
  if(lbound(aa2,1) /=1 ) print*,'503'
  if(ubound(aa2,1) /=6 ) print*,'504'
  if(size(aa2,1) /= 6) print*,'505'
  if(size(shape(aa2))/=1 ) print*,'507'
  if(is_contiguous(aa2).NEQV. .true.)print*,'508'
  if(rank(aa2)/=1)print*,'509'

  if(len(ch1)/=1 )print*,181
  if(len(ch2)/=5)print*,182
  if(len(ch4)/=1)print*,183
 call sub2(ch3,ch4,ch5)
 print*,"PASS" 
 end subroutine sub    

 subroutine sub2(at1,at2,at3)
  character,optional::at1(..)
  character,optional::at2(..)
  character,optional::at3(..)
 if(present(at3).NEQV. .true.) print*,'602'
  if(lbound(at3,1) /=1 ) print*,'603'
  if(ubound(at3,1) /=6 ) print*,'604'
  if(size(at3,1) /= 6) print*,'605'
  if(size(shape(at3))/=1 ) print*,'607'
  if(rank(at3)/=1)print*,'609'

 if(present(at2).NEQV. .true.) print*,'602'
  if(lbound(at2,1) /=1 ) print*,'603'
  if(ubound(at2,1) /=5 ) print*,'604'
  if(size(at2,1) /= 5) print*,'605'
  if(size(shape(at2))/=1 ) print*,'607'
  if(is_contiguous(at2).NEQV. .true.)print*,'608'
  if(rank(at2)/=1)print*,'609'

 if(present(at1).NEQV. .true.) print*,'702'
  if(lbound(at1,1) /=1 ) print*,'703'
  if(ubound(at1,1) /=4 ) print*,'704'
  if(size(at1,1) /= 4) print*,'705'
  if(size(shape(at1))/=1 ) print*,'707'
  if(is_contiguous(at1).NEQV. .true.)print*,'708'
  if(rank(at1)/=1)print*,'709'

  if(len(at1)/=1 )print*,191
  if(len(at2)/=1 )print*,192
  if(len(at3)/=1 )print*,193
end subroutine
        
END   

