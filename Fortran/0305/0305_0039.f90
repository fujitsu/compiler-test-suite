      program main
      real*8  a(100)
      data a/100*1.0/

      do  i=1,100
         call  sub(a(i))
      enddo
      s = sum(a)
      if (s.eq.200) then
         print *,"ok"
      else
         print *,"ng",s
      endif
      end

      subroutine  sub(x)
      real*8 x
      x = x + 1.0
      end
