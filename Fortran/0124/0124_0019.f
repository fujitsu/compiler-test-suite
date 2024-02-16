c 

      module sub_mod
      integer, parameter :: N=5
      complex*8  a2_8(N,N)
      common /com2/a2_8

      end

      program main
      use sub_mod
      integer d1,d2
      integer a1(N),a2(N)
      integer ires, sum_cmplx
      integer,parameter::ANS=4

      call init_cmplx()

      d1 = aint(sin(0.0) + cos(0.0) + tan(0.0))
      d2 = aint(cos(0.0) + cos(0.0))
      a1 = (/(MOD(i,3)+1,i=1,N)/)
      a2 = (/(MOD(i,2)+1,i=1,N)/)

c
      do i=1, N
         do j=1, N
            a2_8(5,3)  = a2_8(5,3)  - a2_8(5,3) + 1.0E0
            a2_8(i,j)  = a2_8(i,j)  + a2_8(i,j) + 1.0E0
            a2_8(N-i+1,j*d1)
     &           = a2_8(N-i+1,j*d1)  + a2_8(N-i+1,j*d1) + 1.0E0
         enddo
      enddo

      ires = sum_cmplx()

      do i=1, N
         do j=1, N
            a2_8(a1,a2) = a2_8(a1,a2) - a2_8(a1,a2) - 1.0E0
            a2_8(a1+a2,a1)
     &           = a2_8(a1+a2,a1)  + a2_8(a1+a2,a1) - 1.0E0
            a2_8(minval(a1+a2),maxval(a1))
     &           = a2_8(minval(a1+a2),maxval(a1)) -
     &           a2_8(minval(a1+a2),maxval(a1)) - 1.0E0
         enddo
      enddo

      ires = mod(ires + sum_cmplx(),N)

      do i=1, N
         do j=1, N
            a2_8(N-i+1,j*d1)
     &           = a2_8(N-i+1,j*d1) + a2_8(N-i+1,j*d1)
     &           + a2_8(N-i+1,j*d1) - 30.0E0
            a2_8(5,3)  = a2_8(5,3) - real(a2_8(3,4))
            a2_8(i,j)  = a2_8(i,j) - real(a2_8(2,4))
         enddo
      enddo

      ires = mod(ires + sum_cmplx(),N)

      do i=1, N
         do j=1, N
            a2_8(N-i+1,j*d1) = a2_8(N-i+1,j*d1) + real(a2_8(1,4))
            a2_8(a1,a2) = a2_8(a1,a2) + real(a2_8(2,4))
            a2_8(a1+a2,a1) = a2_8(a1+a2,a1) - real(a2_8(3,5))
         enddo
      enddo

      ires = mod(ires + sum_cmplx(),N)

      do i=1, N
         do j=1, N
            a2_8(minval(a1+a2),maxval(a1))
     &           = a2_8(minval(a1+a2),maxval(a1)) - real(a2_8(2,5))
            a2_8(N-i+1,j*d1)
     &           = a2_8(N-i+1,j*d1) + a2_8(N-i+1,j*d1)
     &           - real(a2_8(1,5))
         enddo
      enddo

c

      ires = mod(ires + sum_cmplx(),N)

      if (ires .eq. ANS) then
         print *,"OK"
      else
         print *,"NG", ires
      endif

      end


      subroutine init_cmplx
      use sub_mod

      a2_8  = (0.0E0,0.0E0)

      end

      subroutine print_cmplx
      use sub_mod

      print *,"SUM = ",sum(a2_8)

      end

      integer function sum_cmplx()
      use sub_mod
      complex*8 res

      res = sum(a2_8)

      sum_cmplx = int((real(res)/1000.+aimag(res)/1000.),kind=4)
      end
