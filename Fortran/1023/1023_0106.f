      recursive subroutine sub()
      aaa=1
      call sub2()
      print *,aaa
      contains
        subroutine sub2() 
        aaa=2
        end subroutine
      end 

      program main
      aaa=3
      call sub()
      end
