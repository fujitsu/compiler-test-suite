      program main
      real*8   com           (100)
      call cycles (com)
      call cycles2 (com)
      end

      subroutine cycles(t)
      implicit double precision (a-h,o-z)
      dimension t(*)

      write(6,*) '###### cycles start ####'
      call zero(10,t(2))
      write(6,*) '###### end ####'

      write(6,*) t(3)
      return
      end

      subroutine cycles2(t)
      implicit double precision (a-h,o-z)
      dimension t(100)

      write(6,*) '###### cycles2 tart ####'
      call zero(10,t(2))
      write(6,*) '###### end ####'

      write(6,*) t(3)
      return
      end

      subroutine zero(m,a)
      implicit double precision (a-h,o-z)
      dimension a(10)
      do 10 i=1,10
      a(i)=0.d0
   10 continue
      return
      end
