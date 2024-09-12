
character::ch1
character(len=5)::ch2
call sub(ch1,ch2,5,ch1)
contains 
 subroutine sub(aa,aa2,n,ch4)
  type(*),optional::aa
  type(*),optional::aa2
  integer::n
  character(len=n+6)::ch3
  character(len=*)::ch4
  character(len=:),allocatable::ch5
  allocate(character(len=3)::ch5)
 if(present(aa).neqv. .true.) print*,'402'
  if(size(shape(aa))/=0 ) print*,'404'
 if(present(aa2).neqv. .true.) print*,'405'
  if(size(shape(aa2))/=0 ) print*,'406'
 if(rank(aa) /= 0) print*,'416'
 if(rank(aa2) /= 0) print*,'417'
 print*,"pass" 
 call sub2(ch3,ch4,ch5)
 end subroutine sub    

 subroutine sub2(at1,at2,at3)
  type(*),optional::at1
  type(*),optional::at2
  type(*),optional::at3
 if(present(at1).neqv. .true.) print*,'407'
  if(size(shape(at1))/=0 ) print*,'408'
 if(present(at2).neqv. .true.) print*,'409'
  if(size(shape(at2))/=0 ) print*,'410'
 if(present(at3).neqv. .true.) print*,'411'
  if(size(shape(at3))/=0 ) print*,'412'
 if(rank(at1) /= 0) print*,'422'
 if(rank(at2) /= 0) print*,'421'
 if(rank(at3) /= 0) print*,'420'
end subroutine
        
end   

