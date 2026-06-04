      call sub1()
      print *,'pass'
      end
      subroutine sub1()
      character(len=5),dimension(5) :: cha,chb,chc
      character(len=5),dimension(5) :: xha,xhb,xhc
      parameter (cha=(/'a','ab','abc','abcd','abcde'/))
      parameter (chb=(/('abcde'(1:i),i=1,5)/))
      parameter (chc=(/(chb(5)(1:i),i=1,5)/))
      xha=(/'a','ab','abc','abcd','abcde'/)
      xhb=(/('abcde'(i:i),i=1,5)/)
      xhc=(/(chb(5)(i:i),i=1,5)/)

      end
