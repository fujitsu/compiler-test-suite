      program main
      real*8  a(100)
      data a/100*1.0/

      n = 100
      call  sub1(a,n)
      s = sum(a)
      if (s.eq.5050) then
         print *,"ok"
      else
         print *,"ng",s
      endif
      end

      subroutine sub1(a,n)
      real*8 a(n)
      call  sub2(a,n)
      end

      subroutine sub2(a,n)
      real*8 a(n)
      do i=1,n
        a(i)=i
      enddo
      end
