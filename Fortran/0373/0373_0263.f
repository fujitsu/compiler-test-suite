      program main
      integer a,b
      a=1
      b=0
      call sub(a,b)
      write(6,*)a,b
      stop
      end

      subroutine sub(a,b)
      integer a,b
      if (a.ne.0) then
         b=1
      else
         b=2
      endif
      return
      end
