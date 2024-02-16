c 

      module sub_mod
      integer, parameter :: N=5
      complex*8  a0_8
      complex*16 a0_16
      complex*32 a0_32
      complex*8  a1_8(N)
      complex*16 a1_16(N)
      complex*32 a1_32(N)
      complex*8  a2_8(N,N)
      complex*16 a2_16(N,N)
      complex*32 a2_32(N,N)
      complex*16 a3_16(N,N,N)
      complex*8  a4_8(N,N,N,N)

      common /com0/a0_8,a0_16,a0_32
      common /com1/a1_8,a1_16,a1_32
      common /com2/a2_8,a2_16,a2_32
      common /com3/a3_16
      common /com4/a4_8

      end

      program main
      use sub_mod
      integer d1,d2
      integer a1(N),a2(N)
c     integer a3(N,N), a4(N,N)
      integer sum_cmplx
      integer res
      integer,parameter::ANS=685

      call init_cmplx()

      d1 = sin(0.0) + cos(0.0) + tan(0.0)
      d2 = cos(0.0) + cos(0.0)
      a1 = (/(MOD(i,3)+1,i=1,N)/)
      a2 = (/(MOD(i,2)+1,i=1,N)/)
c     a3 = reshape((/(MOD(i,3)+1,i=1,N*N)/),(/N,N/))
c     a4 = reshape((/(MOD(i,2)+1,i=1,N*N)/),(/N,N/))

c
      a0_8  = a0_8  + 1.0
      a0_16 = a0_16 - 1.0
      a0_32 = a0_32 + 1.0

c
      a1_8(5)  = a1_8(5)  - 1.0
      a1_16(5) = a1_16(5) + 1.0
      a1_32(5) = a1_32(5) - 1.0
      a1_8(d1)  = a1_8(d1)  + 1.0
      a1_16(d1) = a1_16(d1) - 1.0
      a1_32(d1) = a1_32(d1) + 1.0
      a1_8(d1+d2)  = a1_8(d1+d2)  - 1.0
      a1_16(d1*d2) = a1_16(d1*d2) + 1.0
      a1_32(d2/d1) = a1_32(d2/d1) - 1.0
      a1_8(a1)  = a1_8(a1)  + 1.0
      a1_16(a1) = a1_16(a1) - 1.0
      a1_32(a1) = a1_32(a1) + 1.0
      a1_8(a1+a2)  = a1_8(a1+a2)  - 1.0
      a1_16(a1+a2) = a1_16(a1+a2) + 1.0
      a1_32(a1+a2) = a1_32(a1+a2) - 1.0
      a1_8(maxval(a1))  = a1_8(maxval(a1))  + 1.0
      a1_16(maxval(a2)) = a1_16(maxval(a2)) - 1.0
      a1_32(maxval(a2)) = a1_32(maxval(a2)) + 1.0

      do i=1, N
         a1_8(5)  = a1_8(5)  + 1.0
         a1_16(5) = a1_16(5) - 1.0
         a1_32(5) = a1_32(5) + 1.0
         a1_8(i)  = a1_8(i)  - 1.0
         a1_16(i) = a1_16(i) + 1.0
         a1_32(i) = a1_32(i) - 1.0
         a1_8(d1*i)  = a1_8(d1*i)  + 1.0
         a1_16(N-i+1) = a1_16(N-i+1) - 1.0
         a1_32(d1*i) = a1_32(d1*i) + 1.0
         a1_8(a1)  = a1_8(a1)  - 1.0
         a1_16(a1) = a1_16(a1) + 1.0
         a1_32(a1) = a1_32(a1) - 1.0
         a1_8(a1+a2)  = a1_8(a1+a2)  + 1.0
         a1_16(a1+a2) = a1_16(a1+a2) - 1.0
         a1_32(a1+a2) = a1_32(a1+a2) + 1.0
         a1_8(maxval(a1))  = a1_8(maxval(a1))  + 1.0
         a1_16(maxval(a2)) = a1_16(maxval(a2)) - 1.0
         a1_32(maxval(a2)) = a1_32(maxval(a2)) + 1.0
      enddo

c
      a2_8(5,3)  = a2_8(5,3)  - 1.0
      a2_16(4,2) = a2_16(4,2) + 1.0
      a2_32(3,1) = a2_32(3,1) - 1.0
      a2_8(d1,d2)  = a2_8(d1,d2)  + 1.0
      a2_16(d2,d1) = a2_16(d2,d1) - 1.0
      a2_32(d1,d2) = a2_32(d1,d2) + 1.0
      a2_8(d1+d2,d1+d2)  = a2_8(d1+d2,d1+d2)  - 1.0
      a2_16(d1*d2,d1+d2) = a2_16(d1*d2,d1+d2) + 1.0
      a2_32(d2/d1,d1*d2) = a2_32(d2/d1,d1*d2) - 1.0
      a2_8(a1,a2)  = a2_8(a1,a2)  + 1.0
      a2_16(a1,a2) = a2_16(a1,a2) - 1.0
      a2_32(a1,a2) = a2_32(a1,a2) + 1.0
      a2_8(a1+a2,a1+a2) = a2_8(a1+a2,a1+a2)  - 1.0
      a2_16(a1+a2,a1+a2) = a2_16(a1+a2,a1+a2) + 1.0
      a2_32(a1+a2,a1+a2) = a2_32(a1+a2,a1+a2) - 1.0
      a2_8(maxval(a1),maxval(a2))
     &     = a2_8(maxval(a1),maxval(a2))  + 1.0
      a2_16(maxval(a2),maxval(a1))
     &     = a2_16(maxval(a2),maxval(a1)) - 1.0
      a2_32(maxval(a1),maxval(a2))
     &     = a2_32(maxval(a1),maxval(a2)) + 1.0

      do i=1, N
         do j=1, N
            a2_8(5,3)  = a2_8(5,3)  - 1.0
            a2_16(4,2) = a2_16(4,2) + 1.0
            a2_32(3,1) = a2_32(3,1) - 1.0
            a2_8(i,j)  = a2_8(i,j)  - 1.0
            a2_16(i,j) = a2_16(i,j) + 1.0
            a2_32(i,j) = a2_32(i,j) - 1.0
            a2_8(N-i+1,N-j+1)  = a2_8(N-i+1,N-j+1) + 1.0
            a2_16(d1*i,d1*j) = a2_16(d1*i,d1*j) - 1.0
            a2_32(N-i+1,N-j+1) = a2_32(N-i+1,N-j+1) + 1.0
            a2_8(a1,a2)  = a2_8(a1,a2)  + 1.0
            a2_16(a1,a2) = a2_16(a1,a2) - 1.0
            a2_32(a1,a2) = a2_32(a1,a2) + 1.0
            a2_8(a1+a2,a1+a2) = a2_8(a1+a2,a1+a2)  - 1.0
            a2_16(a1+a2,a1+a2) = a2_16(a1+a2,a1+a2) + 1.0
            a2_32(a1+a2,a1+a2) = a2_32(a1+a2,a1+a2) - 1.0
            a2_8(maxval(a1),maxval(a2))
     &           = a2_8(maxval(a1),maxval(a2))  + 1.0
            a2_16(maxval(a2),maxval(a1))
     &           = a2_16(maxval(a2),maxval(a1)) - 1.0
            a2_32(maxval(a1),maxval(a2))
     &           = a2_32(maxval(a1),maxval(a2)) + 1.0
         enddo
      enddo

c
      a3_16(d1,d1+d2,d2) = a3_16(d1,d1+d2,d2) + 1.0
      do i=1,N
         do j=1,N
            do k=1,N
               a3_16(i,N-j*d1+1,N-k+1) = a3_16(i,N-j*d1+1,N-k+1) + 1.0
            enddo
         enddo
      enddo

c
      a4_8(d1,d1+d2,d2,d1*d2) = a4_8(d1,d1+d2,d2,d1*d2) + 1.0
      do i=1,N
         do j=1,N
            do k=1,N
               do l=1,N
                  a4_8(i,N-j+1,N-k+1,l*d1)
     &                 = a4_8(i,N-j+1,N-k+1,l*d1) + 1.0
               enddo
            enddo
         enddo
      enddo

      res = sum_cmplx()
      if (res .eq. ANS) then
         print *,"OK"
      else
         print *,"NG"
      endif

      end

      subroutine init_cmplx
      use sub_mod

      a0_8  = (0.0, 0.0)
      a0_16 = (0.0, 0.0)
      a0_32 = (0.0, 0.0)
      a1_8  = a0_8
      a1_16 = a0_16
      a1_32 = a0_32
      a2_8  = a0_8
      a2_16 = a0_16
      a2_32 = a0_32
      a3_16 = a0_16
      a4_8  = a0_8

      end

      subroutine print_cmplx
      use sub_mod

      print *,a0_8
      print *,a0_16
      print *,a0_32

      print *,sum(a1_8)
      print *,sum(a1_16)
      print *,sum(a1_32)

      print *,sum(a2_8)
      print *,sum(a2_16)
      print *,sum(a2_32)

      print *,sum(a3_16)

      print *,sum(a4_8)

      end

      integer function sum_cmplx()
      use sub_mod
      complex*32 res

      res = a0_8 + a0_16 + a0_32 +
     &     sum(a1_8) + sum(a1_16) + sum(a1_32) +
     &     sum(a2_8) + sum(a2_16) + sum(a2_32) +
     &     sum(a3_16) + sum(a4_8)

      sum_cmplx = int((real(res)+aimag(res)),kind=4)
      end
