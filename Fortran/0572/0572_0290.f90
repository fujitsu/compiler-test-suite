character::ch1(5)
call sub(4,ch1)
contains 
 subroutine sub(n,ch4)
  integer::n
  character(len=n+6)::ch3(4)
  character(len=*)::ch4(..)

call sub2(ch4,ch3)
print*,"PASS" 
 end subroutine sub    

subroutine sub2(at2,at1)
  character(len=*),optional::at1(:)
  character,optional::at2(..)
  if(present(at2))then  
  if(lbound(at2,1) /=1 ) print*,'603'
  if(size(at2,1) /= 5) print*,'605'
  if(size(shape(at2))/=1 ) print*,'607'
  endif
end subroutine
        
END   

