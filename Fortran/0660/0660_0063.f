      module mod1
      interface
       function jfff(i)
       end function
       function ifff(i)
       end function
      end interface
      integer i
      contains
       subroutine sub1(i)
       i=1
       end subroutine
       function ifun1(i)
       ifun1=i
        j=jfff(i)
        j=ifff(i)
       end function
      end module
      module mod2
       use mod1
      end module
      program main
      use mod2 
      use mod1 ,sss1=>sub1,kfff=>jfff
      call sss1(i)
      call sss1(i)
      call sub1(i)
      call sub1(i)
      j=ifun1(i)
      j=ifun1(i)
      j=kfff(i)
      j=kfff(i)
      j=ifff(i)
      j=ifff(i)
      j=jfff(i)
      j=jfff(i)
      print *,'pass'
      end
       function jfff(i)
       jfff=i
       end function
       function ifff(i)
       ifff=i
       end function
