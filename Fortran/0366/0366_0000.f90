!
      program main
      real*4 ra(10),s ,rb(10)
      logical * 4 la(10)
      data ra/2.,2.,2.,2.,2.,2.,2.,2.,2.,2./
!
      do 10 i=1,10
        if (i.eq.ra(i)) then
          s = ra(i) + 1.
        endif
	call sub(i+0)
 10   continue
      write(6,*) s
      stop
      end
      recursive subroutine sub(i)
      print *,i
      end
