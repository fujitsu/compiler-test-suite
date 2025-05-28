character::ch1(5)
character(len=5)::ch2(6)
call sub(ch1,ch2,5,ch1)
contains 
 subroutine sub(aa,aa2,n,ch4)
  character,optional::aa(..)
  character(len=5),optional::aa2(..)
  integer::n
  character(len=n+6,kind=1)::ch3(4)
  character(len=*,kind=1)::ch4(5)
  character(len=:,kind=1),allocatable::ch5(:)
  allocate(character(len=3)::ch5(6))
 if(present(aa).NEQV. .true.) print*,'402'
  if(lbound(aa,1) /=1 ) print*,'403'
  if(is_contiguous(aa).NEQV. .true.)print*,'406'
  if(rank(aa)/=1)print*,'408'

 if(present(aa2).NEQV. .true.) print*,'502'
  if(lbound(aa2,1) /=1 ) print*,'503'
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
  if(rank(at3)/=1)print*,'609'

 if(present(at2).NEQV. .true.) print*,'602'
  if(lbound(at2,1) /=1 ) print*,'603'
  if(is_contiguous(at2).NEQV. .true.)print*,'708'
  if(rank(at2)/=1)print*,'609'

 if(present(at1).NEQV. .true.) print*,'702'
  if(lbound(at1,1) /=1 ) print*,'703'
  if(is_contiguous(at1).NEQV. .true.)print*,'711'
  if(rank(at1)/=1)print*,'709'
  if(len(at1)/=1 )print*,191
  if(len(at2)/=1 )print*,192
  if(len(at3)/=1 )print*,193
end subroutine
        
END   

