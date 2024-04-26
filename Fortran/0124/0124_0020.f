
      module sub_mod
      integer, parameter :: N=5
      real*4  r1_4(N)
      real*8 r1_8(N)
      real*16 r1_16(N)
      real*4  r2_4(N,N)
      real*8 r2_8(N,N)
      real*16 r2_16(N,N)
      real*8 r3_8(N,N,N)

      common /com1/r1_4,r2_4
      common /com2/r1_8,r2_8
      common /com3/r1_16,r2_16
      common /com4/r3_8

      end


      program main
      use sub_mod
      integer d1,d2
      integer a1(N),a2(N)
      integer ires
      integer sum_cmplx
      integer, parameter::ANS=1165

      call init_cmplx()

      d1 = sin(0.0) + cos(0.0) + tan(0.0)
      d2 = cos(0.0) + cos(0.0)
      a1 = (/(MOD(i,3)+1,i=1,N)/)
      a2 = (/(MOD(i,2)+1,i=1,N)/)

      r1_4     = r1_4  - 0.0
      r1_8     = r1_8  + 0.0
      r1_16    = r1_16 - 0.0
      r1_4     = r1_4  + 1.0
      r1_8     = r1_8  - 1.0
      r1_16    = r1_16 + 1.0
      r1_4(5)  = r1_4(5)  - 0.0
      r1_8(5)  = r1_8(5)  + 0.0
      r1_16(5) = r1_16(5) - 0.0
      r1_4(3)  = r1_4(3)  + 1.0
      r1_8(3)  = r1_8(3)  - 1.0
      r1_16(3) = r1_16(3) + 1.0
      r1_4(d1)  = r1_4(d1)  - 0.0
      r1_8(d1)  = r1_8(d1)  + 0.0
      r1_16(d1) = r1_16(d1) - 0.0
      r1_4(d1)  = r1_4(d1)  + 1.0
      r1_8(d1)  = r1_8(d1)  - 1.0
      r1_16(d1) = r1_16(d1) + 1.0
      r1_4(d1+d2)  = r1_4(d1+d2)  - 0.0
      r1_8(d1*d2)  = r1_8(d1*d2)  + 0.0
      r1_16(d2/d1) = r1_16(d2/d1) - 0.0
      r1_4(d1+d2)  = r1_4(d1+d2)  + 1.0
      r1_8(d1*d2)  = r1_8(d1*d2)  - 1.0
      r1_16(d2/d1) = r1_16(d2/d1) + 1.0
      r1_4(a1)  = r1_4(a1)  - 0.0
      r1_8(a1)  = r1_8(a1)  + 0.0
      r1_16(a1) = r1_16(a1) - 0.0
      r1_4(a1)  = r1_4(a1)  + 1.0
      r1_8(a1)  = r1_8(a1)  - 1.0
      r1_16(a1) = r1_16(a1) + 1.0
      r1_4(a1+a2)  = r1_4(a1+a2)  - 0.0
      r1_8(a1+a2)  = r1_8(a1+a2)  + 0.0
      r1_16(a1+a2) = r1_16(a1+a2) - 0.0
      r1_4(a1+a2)  = r1_4(a1+a2)  - 1.0
      r1_8(a1+a2)  = r1_8(a1+a2)  + 1.0
      r1_16(a1+a2) = r1_16(a1+a2) - 1.0
      r1_4(maxval(a1))  = r1_4(maxval(a1))  + 0.0
      r1_8(maxval(a2))  = r1_8(maxval(a2))  - 0.0
      r1_16(maxval(a2)) = r1_16(maxval(a2)) + 0.0
      r1_4(maxval(a1))  = r1_4(maxval(a1))  - 1.0
      r1_8(maxval(a2))  = r1_8(maxval(a2))  + 1.0
      r1_16(maxval(a2)) = r1_16(maxval(a2)) - 1.0

      do i=1, N
         r1_4     = r1_4  - 0.0
         r1_8     = r1_8  + 0.0
         r1_16    = r1_16 - 0.0
         r1_4     = r1_4  + 1.0
         r1_8     = r1_8  - 1.0
         r1_16    = r1_16 + 1.0
         r1_4(5)  = r1_4(5)  - 0.0
         r1_8(5)  = r1_8(5)  + 0.0
         r1_16(5) = r1_16(5) - 0.0
         r1_4(3)  = r1_4(3)  + 1.0
         r1_8(3)  = r1_8(3)  - 1.0
         r1_16(3) = r1_16(3) + 1.0
         r1_4(i)  = r1_4(i)  - 0.0
         r1_8(i)  = r1_8(i)  + 0.0
         r1_16(i) = r1_16(i) - 0.0
         r1_4(i)  = r1_4(i)  + 1.0
         r1_8(i)  = r1_8(i)  - 1.0
         r1_16(i) = r1_16(i) + 1.0
         r1_4(i*d1)   = r1_4(i*d1)   - 0.0
         r1_8(d1*i)   = r1_8(d1*i)   + 0.0
         r1_16(N-i+1) = r1_16(N-i+1) - 0.0
         r1_4(i*d1)   = r1_4(i*d1)   + 1.0
         r1_8(d1*i)   = r1_8(d1*i)   - 1.0
         r1_16(N-i+1) = r1_16(N-i+1) + 1.0
         r1_4(a1)  = r1_4(a1)  - 0.0
         r1_8(a1)  = r1_8(a1)  + 0.0
         r1_16(a1) = r1_16(a1) - 0.0
         r1_4(a1)  = r1_4(a1)  + 1.0
         r1_8(a1)  = r1_8(a1)  - 1.0
         r1_16(a1) = r1_16(a1) + 1.0
         r1_4(a1+a2)  = r1_4(a1+a2)  - 0.0
         r1_8(a1+a2)  = r1_8(a1+a2)  + 0.0
         r1_16(a1+a2) = r1_16(a1+a2) - 0.0
         r1_4(a1+a2)  = r1_4(a1+a2)  - 1.0
         r1_8(a1+a2)  = r1_8(a1+a2)  + 1.0
         r1_16(a1+a2) = r1_16(a1+a2) - 1.0
         r1_4(maxval(a2))  = r1_4(maxval(a2))  + 0.0
         r1_8(maxval(a1))  = r1_8(maxval(a1))  - 0.0
         r1_16(maxval(a1)) = r1_16(maxval(a1)) + 0.0
         r1_4(maxval(a2))  = r1_4(maxval(a2))  - 1.0
         r1_8(maxval(a1))  = r1_8(maxval(a1))  + 1.0
         r1_16(maxval(a1)) = r1_16(maxval(a1)) - 1.0
      enddo

      r2_4     = r2_4  - 0.0
      r2_8     = r2_8  + 0.0
      r2_16    = r2_16 - 0.0
      r2_4     = r2_4  + 1.0
      r2_8     = r2_8  - 1.0
      r2_16    = r2_16 + 1.0
      r2_4(2,4)  = r2_4(2,4)  - 0.0
      r2_8(3,5)  = r2_8(3,5)  + 0.0
      r2_16(4,1) = r2_16(4,1) - 0.0
      r2_4(2,4)  = r2_4(2,4)  - 1.0
      r2_8(3,5)  = r2_8(3,5)  + 1.0
      r2_16(4,1) = r2_16(4,1) - 1.0
      r2_4(d1,d2)  = r2_4(d1,d2)  - 0.0
      r2_8(d1,d2)  = r2_8(d1,d2)  + 0.0
      r2_16(d2,d1) = r2_16(d2,d1) - 0.0
      r2_4(d1,d2)  = r2_4(d1,d2)  + 1.0
      r2_8(d2,d1)  = r2_8(d2,d1)  - 1.0
      r2_16(d1,d2) = r2_16(d1,d2) + 1.0
      r2_4(d1+d2,d1+d2)  = r2_4(d1+d2,d1+d2)  - 0.0
      r2_8(d1*d2,d1+d2)  = r2_8(d1*d2,d1+d2)  + 0.0
      r2_16(d2/d1,d1*d2) = r2_16(d2/d1,d1*d2) - 0.0
      r2_4(d1+d2,d1+d2)  = r2_4(d1+d2,d1+d2)  + 1.0
      r2_8(d1*d2,d1+d2)  = r2_8(d1*d2,d1+d2)  - 1.0
      r2_16(d2/d1,d1*d2) = r2_16(d2/d1,d1*d2) + 1.0
      r2_4(a1,a1)  = r2_4(a1,a1)  - 0.0
      r2_8(a1,a2)  = r2_8(a1,a2)  + 0.0
      r2_16(a2,a2) = r2_16(a2,a2) - 0.0
      r2_4(a1,a1)  = r2_4(a1,a1)  - 1.0
      r2_8(a1,a2)  = r2_8(a1,a2)  + 1.0
      r2_16(a2,a2) = r2_16(a2,a2) - 1.0
      r2_4(a1+a2,a1+a2)  = r2_4(a1+a2,a1+a2)  - 0.0
      r2_8(a1+a2,a2+a1)  = r2_8(a1+a2,a2+a1)  + 0.0
      r2_16(a2+a1,a2+a2) = r2_16(a2+a1,a2+a2) - 0.0
      r2_4(a1+a2,a1+a2)  = r2_4(a1+a2,a1+a2)  + 1.0
      r2_8(a1+a2,a2+a1)  = r2_8(a1+a2,a2+a1)  - 1.0
      r2_16(a2+a1,a2+a2) = r2_16(a2+a1,a2+a2) + 1.0
      r2_4(maxval(a1),minval(a1))
     &     = r2_4(maxval(a1),minval(a1))  + 0.0
      r2_8(maxval(a2),minval(a2))
     &     = r2_8(maxval(a2),minval(a2))  - 0.0
      r2_16(maxval(a2),minval(a1))
     &     = r2_16(maxval(a2),minval(a1)) + 0.0
      r2_4(maxval(a1),minval(a1+a2))
     &     = r2_4(maxval(a1),minval(a1+a2))  - 1.0
      r2_8(maxval(a2),minval(a2))
     &     = r2_8(maxval(a2),minval(a2))  + 1.0
      r2_16(minval(a2),maxval(a1))
     &     = r2_16(minval(a2),maxval(a1)) - 1.0

      do i=1, N
         do j=1, N
            r2_4     = r2_4  - 0.0
            r2_8     = r2_8  + 0.0
            r2_16    = r2_16 - 0.0
            r2_4     = r2_4  + 1.0
            r2_8     = r2_8  - 1.0
            r2_16    = r2_16 + 1.0
            r2_4(2,4)  = r2_4(2,4)  - 0.0
            r2_8(3,5)  = r2_8(3,5)  + 0.0
            r2_16(4,1) = r2_16(4,1) - 0.0
            r2_4(2,4)  = r2_4(2,4)  - 1.0
            r2_8(3,5)  = r2_8(3,5)  + 1.0
            r2_16(4,1) = r2_16(4,1) - 1.0
            r2_4(i,j)  = r2_4(i,j)  - 0.0
            r2_8(j,i)  = r2_8(j,i)  + 0.0
            r2_16(i,j) = r2_16(i,j) - 0.0
            r2_4(i,j)  = r2_4(i,j)  + 1.0
            r2_8(j,i)  = r2_8(j,i)  - 1.0
            r2_16(i,j) = r2_16(i,j) + 1.0
            r2_4(i*d1,j*d1)  = r2_4(i*d1,j*d1)  - 0.0
            r2_8(d1*(N-i+1),j*d1)
     &           = r2_8(d1*(N-i+1),j*d1) + 0.0
            r2_16(j*d1,N-i+1)
     &           = r2_16(j*d1,N-i+1) - 0.0
            r2_4(i*d1,j*d1)  = r2_4(i*d1,j*d1)  + 1.0
            r2_8(d1*(N-i+1),j*d1)
     &           = r2_8(d1*(N-i+1),j*d1) - 1.0
            r2_16(j*d1,N-i+1) = r2_16(j*d1,N-i+1) + 1.0
            r2_4(a1,a1)  = r2_4(a1,a1)  - 0.0
            r2_8(a1,a2)  = r2_8(a1,a2)  + 0.0
            r2_16(a2,a2) = r2_16(a2,a2) - 0.0
            r2_4(a1,a1)  = r2_4(a1,a1)  + 1.0
            r2_8(a1,a2)  = r2_8(a1,a2)  - 1.0
            r2_16(a2,a2) = r2_16(a2,a2) + 1.0
            r2_4(a1+a2,a1+a2)
     &           = r2_4(a1+a2,a1+a2)  - 0.0
            r2_8(a1+a2,a2+a1)
     &           = r2_8(a1+a2,a2+a1)  + 0.0
            r2_16(a2+a1,a2+a2)
     &           = r2_16(a2+a1,a2+a2) - 0.0
            r2_4(a1+a2,a1+a2)
     &           = r2_4(a1+a2,a1+a2)  + 1.0
            r2_8(a1+a2,a2+a1)
     &           = r2_8(a1+a2,a2+a1)  - 1.0
            r2_16(a2+a1,a2+a2)
     &           = r2_16(a2+a1,a2+a2) + 1.0
            r2_4(maxval(a1),minval(a1))
     &           = r2_4(maxval(a1),minval(a1))  + 0.0
            r2_8(maxval(a2),minval(a2))
     &           = r2_8(maxval(a2),minval(a2))  - 0.0
            r2_16(maxval(a2),minval(a1))
     &           = r2_16(maxval(a2),minval(a1)) + 0.0
            r2_4(maxval(a1),minval(a1+a2))
     &           = r2_4(maxval(a1),minval(a1+a2))  - 0.0
            r2_8(maxval(a2),minval(a2))
     &           = r2_8(maxval(a2),minval(a2))  + 0.0
            r2_16(minval(a2),maxval(a1))
     &           = r2_16(minval(a2),maxval(a1)) - 0.0
         enddo
      enddo

      r3_8(d1,d1+d2,d2) = r3_8(d1,d1+d2,d2) + 0.0
      r3_8(d1,d1+d2,d2+d2)
     &     = r3_8(d1,d1+d2,d2+d2) - 1.0
      do i=1,N
         do j=1,N
            do k=1,N
               r3_8(i,N-j*d1+1,N-k+1)
     &              = r3_8(i,N-j*d1+1,N-k+1) - 0.0
               r3_8(i,N-j*d1+1,N-k+1)
     &              = r3_8(i,N-j*d1+1,N-k+1) + 1.0
            enddo
         enddo
      enddo

      ires = sum_cmplx()


      if (ires .eq. ANS) then
         print *,"OK"
      else
         print *,"NG"
      endif

      end

      subroutine init_cmplx
      use sub_mod

      r1_4  = 0.0
      r1_8  = 0.0
      r1_16 = 0.0
      r2_4  = 0.0
      r2_8  = 0.0
      r2_16 = 0.0
      r3_8  = 0.0

      end

      integer function sum_cmplx()
      use sub_mod
      real*16 ans

      ans = sum(r1_4) + sum(r1_8) + sum(r1_16) +
     &     sum(r2_4) + sum(r2_8) + sum(r2_16) + sum(r3_8)

      sum_cmplx = int(ans,kind=4)
      end
