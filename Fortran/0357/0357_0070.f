      recursive subroutine sub1(i)
        integer j(1)
        j(1)=i 
        call sub2()
        return
        contains
        subroutine sub2()
          if(j(1)*2.eq.20) then
            print *,"*** ok ***  ", j(1)*2  
          else
            print *,"*** ng ***  ", j(1)*2   
          endif
        end subroutine sub2
      end subroutine sub1

      program main
      print *,"*** begin ***" 
      call sub1(10)
      print *,"*** end   ***" 
      stop
      end  
