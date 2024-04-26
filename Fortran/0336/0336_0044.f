      real*8 a(100),b(100),c(100),d(100)
      integer,parameter::ANS=-1010
      integer,parameter::ANS2=-1009

      call sub()

      a = b
      c = d

      if (int(sum(a+b-c-d),kind=4) .ge. ANS .and.
     +    int(sum(a+b-c-d),kind=4) .le. ANS2) then
         print *,"OK"
      else
         print *,sum(a+b-c-d),ANS,ANS2
         print *,"NG"
      endif

      contains
      subroutine sub()
      a = (/(real(i,kind=8),i=1,100)/)
      c = (/(real(i,kind=8),i=1,100)/)
      b = a / 10
      d = c / 5
      end subroutine
      end

