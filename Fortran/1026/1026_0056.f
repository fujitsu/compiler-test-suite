      module mo 
      integer int
      parameter(b=3)
      parameter(bb=33)
      contains 
      subroutine sub()
      end subroutine
      end
      call sub2()
      end
      subroutine sub2()
      use mo
      print *,b,bb
      end
