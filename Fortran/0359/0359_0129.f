      program main
      common /com/s
      complex*16 s(10),q(10)
      real*8 res/0/

      call init

      do i=1,10
         q(i) = 1+ s(i)
      enddo
      do i=1,10
         res = res + q(i)
      enddo
      write(6,*) res
      end

      subroutine init()
      common /com/s
      complex*16 s(10)
      do i=1,10
         s(i) = (5.,6.)
      enddo
      end

