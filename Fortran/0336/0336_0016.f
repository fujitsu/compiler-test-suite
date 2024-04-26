      program main
      integer, parameter :: N=5
      real*16 r1_16(N)
      integer a1(N),a2(N)
      data a1/2,3,1,2,3/
      data a2/2,1,2,1,2/
      data r1_16/0,0,0,0,0/

      do i=1,2
         r1_16(a1) = r1_16(a1) + 1.0
         r1_16(a1+a2) = r1_16(a1+a2) - 1.0
      enddo

       write(6,*) r1_16
      end
