character::ch1(5)
character::ch2(6)
character::ch3(7)
        call sub(4,ch1,ch2,ch3)
        contains 
         subroutine sub(n,ch4,ch5,ch6)
          integer :: n(..)
          character(len=*)::ch4(5)
          character(len=*)::ch5(..)
          character(len=*)::ch6(..)
          if(rank(n) .ne. 0)print*,"101"
        call sub2(ch4,ch5,ch6)
        print*,"PASS" 
         end subroutine sub    
         subroutine sub2(at2,at3,at4)
          character,optional::at2(..)
          character,optional::at3(..)
          character,optional::at4(..)
          if(lbound(at2,1) /=1 ) print*,'603',lbound(at2,1)
            if(any(lbound(at2) /=1 )) print*,'603'
              if(ubound(at2,1) /=5 ) print*,'604'
                if(size(at2,1) /= 5) print*,'605'
                if(size(shape(at2))/=1 ) print*,'607'
          if(lbound(at3,1) /=1 ) print*,'603',lbound(at2,1)
            if(any(lbound(at3) /=1 )) print*,'603'
              if(ubound(at3,1) /=6) print*,'604'
                if(size(at3,1) /= 6) print*,'605'
                if(size(shape(at3))/=1 ) print*,'607'
          if(lbound(at4,1) /=1 ) print*,'603',lbound(at2,1)
            if(any(lbound(at4) /=1 )) print*,'603'
              if(ubound(at4,1) /=7 ) print*,'604'
                if(size(at4,1) /= 7) print*,'605'
                if(size(shape(at4))/=1 ) print*,'607'
                  end subroutine
                          
                  END   

