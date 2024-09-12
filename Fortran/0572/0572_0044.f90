
character::ch1(5)
character(len=5)::ch2(6)
call sub(ch1,ch2,5,ch1)
contains 
 subroutine sub(aa,aa2,n,ch4)
  type(*),optional::aa(*)
  type(*),optional::aa2(*)
  integer::n
  character(len=n+6,kind=1)::ch3(4)
  character(len=*,kind=1)::ch4(5)
  character(len=:,kind=1),allocatable::ch5(:)
  allocate(character(len=3)::ch5(6))
 if(present(aa).neqv. .true.) print*,'402'
  if(lbound(aa,1) /=1 ) print*,'403'
  if(is_contiguous(aa).neqv. .true.)print*,'406'
  if(rank(aa)/=1)print*,'408'

 if(present(aa2).neqv. .true.) print*,'502'
  if(lbound(aa2,1) /=1 ) print*,'503'
  if(is_contiguous(aa2).neqv. .true.)print*,'508'
  if(rank(aa2)/=1)print*,'509'
 call sub2(ch3,ch4,ch5)
  deallocate(ch5)
 print*,"pass" 
 end subroutine sub    

 subroutine sub2(at1,at2,at3)
  type(*),optional::at1(*)
  type(*),optional::at2(*)
  type(*),optional::at3(*)
 if(present(at3).neqv. .true.) print*,'602'
  if(lbound(at3,1) /=1 ) print*,'603'
  if(is_contiguous(at3).neqv. .true.)print*,'608'
  if(rank(at3)/=1)print*,'609'

 if(present(at2).neqv. .true.) print*,'602'
  if(lbound(at2,1) /=1 ) print*,'603'
  if(is_contiguous(at2).neqv. .true.)print*,'708'
  if(rank(at2)/=1)print*,'609'

 if(present(at1).neqv. .true.) print*,'702'
  if(lbound(at1,1) /=1 ) print*,'703'
  if(is_contiguous(at1).neqv. .true.)print*,'708'
  if(rank(at1)/=1)print*,'709'
end subroutine
        
end   

