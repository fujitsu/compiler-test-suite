
      module sub_mod
      integer, parameter :: N=3
      complex*8  a7_8(N,N,N,N,N,N,N)
      complex*16 a7_16(N,N,N,N,N,N,N)
      complex*32 a7_32(N,N,N,N,N,N,N)
      common /com7/a7_8,a7_16,a7_32

      end


      program main
      use sub_mod
      integer d1,d2
      integer a1(N),a2(N),a3(N)
      integer res
      integer sum_cmplx
      integer,parameter::ANS=1422200

      call init_cmplx()

      d1 = sin(0.0) + cos(0.0) + tan(0.0)
      d2 = cos(0.0) + cos(0.0)
      a1 = (/(MOD(i,3)+1,i=1,N)/)
      a2 = (/(MOD(i,2)+1,i=1,N)/)
      a3 = (/(MOD(i,2),i=1,N)/)

      a7_8(1,2,3,2,1,2,3)  = a7_8(1,2,3,2,1,2,3)  - 1.0
      a7_16(1,2,3,1,2,3,3) = a7_16(1,2,3,1,2,3,3) + 1.0
      a7_32(1,3,2,1,2,1,3) = a7_32(1,3,2,1,2,1,3) - 1.0
      a7_8(d1,d2,d1,d2,d1,d2,d1) = a7_8(d1,d2,d1,d2,d1,d2,d1) + 1.0
      a7_16(d2,d2,d1,d1,d1,d2,d1) = a7_16(d2,d2,d1,d1,d1,d2,d1) - 1.0
      a7_32(d1,d2,d1,d2,d1,d2,d1) = a7_32(d1,d2,d1,d2,d1,d2,d1) + 1.0
      a7_8(d1+d2,d1*d2,d2/d1,d1+d2,d1*d2,d2/d1,d2+d1)
     &     = a7_8(d1+d2,d1*d2,d2/d1,d1+d2,d1*d2,d2/d1,d2+d1) - 1.0
      a7_16(d1+d2,d1*d2,d2/d1,d1+d2,d2+d1,d2/d1,d2*d1)
     &     = a7_16(d1+d2,d1*d2,d2/d1,d1+d2,d2+d1,d2/d1,d2*d1) + 1.0
      a7_32(d1+d2,d1*d2,d2/d1,d1+d2,d1*d2,d2/d1,d2+d1)
     &     = a7_32(d1+d2,d1*d2,d2/d1,d1+d2,d1*d2,d2/d1,d2+d1) - 1.0
      a7_8(a1,a2,a1,a2,a1,a2,a1)
     &     = a7_8(a1,a2,a1,a2,a1,a2,a1) + 1.0
      a7_16(a2,a2,a2+a3,a1,a3+a2,a2,a1)
     &     = a7_16(a2,a2,a2+a3,a1,a3+a2,a2,a1) - 1.0
      a7_32(a3+a2,a2,a1,a2,a2,a2,a1)
     &     = a7_32(a3+a2,a2,a1,a2,a2,a2,a1) + 1.0
      a7_8(maxval(a1),maxval(a2),minval(a1),minval(a2),
     &     maxval(a1),maxval(a2),minval(a1))
     &     = a7_8(maxval(a1),maxval(a2),minval(a1),minval(a2),
     &     maxval(a1),maxval(a2),minval(a1)) + 1.0
      a7_16(maxval(a1),maxval(a2),minval(a1),minval(a2),
     &     maxval(a1),maxval(a2),minval(a1))
     &     = a7_16(maxval(a1),maxval(a2),minval(a1),minval(a2),
     &     maxval(a1),maxval(a2),minval(a1)) + 1.0
      a7_32(maxval(a1),maxval(a2),minval(a1),minval(a2),
     &     maxval(a1),maxval(a2),minval(a1))
     &     = a7_32(maxval(a1),maxval(a2),minval(a1),minval(a2),
     &     maxval(a1),maxval(a2),minval(a1)) + 1.0

      do i1=1, N
         do i2=1, N
            do i3=1, N
               do i4=1, N
                  do i5=1, N
                     do i6=1, N
                        do i7=1, N
                           a7_8(1,2,3,2,1,2,3)
     &                          = a7_8(1,2,3,2,1,2,3)  - 1.0
                           a7_16(1,2,3,1,2,3,3)
     &                          = a7_16(1,2,3,1,2,3,3) + 1.0
                           a7_32(1,3,1,2,2,1,3)
     &                          = a7_32(1,3,1,2,2,1,3) - 1.0
                           a7_8(i1,i2,i3,i4,i5,i6,i7)
     &                          = a7_8(i1,i2,i3,i4,i5,i6,i7) + 1.0
                           a7_16(i4,i5,i6,i7,i1,i2,i3)
     &                          = a7_16(i4,i5,i6,i7,i1,i2,i3) - 1.0
                           a7_32(i2,i1,i3,i6,i7,i4,i5)
     &                          = a7_32(i2,i1,i3,i6,i7,i4,i5) + 1.0
                           a7_8(N-i1+1,i2*d1,i3*1,i4/d1,N-i5+1,
     &                          d1*i6,-i7+N+1)
     &                          = a7_8(N-i1+1,i2*d1,i3*1,i4/d1,
     &                          N-i5+1,d1*i6,-i7+N+1) - 1.0
                           a7_16(N-i2+1,i4*d1,i3*1,i7*d1,N-i5+1,
     &                          d1*i6,i1/d1)
     &                          = a7_16(N-i2+1,i4*d1,i3*1,i7*d1,
     &                          N-i5+1,d1*i6,i1/d1) + 1.0
                           a7_32(i6*d1,i4+d2-2,i1+d1-1,i3*d1,
     &                          1*i5,N-i7+1,i2)
     &                          = a7_32(i6*d1,i4+d2-2,i1+d1-1,i3*d1,
     &                          1*i5,N-i7+1,i2) - 1.0
                           a7_8(a1,a2,a1,a2,a1,a2,a1)
     &                          = a7_8(a1,a2,a1,a2,a1,a2,a1) + 1.0
                           a7_16(a2,a2,a2+a3,a1,a3+a2,a2,a1)
     &                          = a7_16(a2,a2,a2+a3,a1,a3+a2,
     &                          a2,a1) - 1.0
                           a7_32(a3+a2,a2,a1,a2,a2,a2,a1)
     &                          = a7_32(a3+a2,a2,a1,a2,a2,a2,a1)
     &                          + 1.0
                           a7_8(maxval(a1),maxval(a2),minval(a1),
     &                          minval(a2),maxval(a1),maxval(a2),
     &                          minval(a1))
     &                          = a7_8(maxval(a1),maxval(a2),
     &                          minval(a1),minval(a2),maxval(a1),
     &                          maxval(a2),minval(a1)) + 1.0
                           a7_16(maxval(a1),maxval(a2),minval(a1),
     &                          minval(a2),maxval(a1),maxval(a2),
     &                          minval(a1))
     &                          = a7_16(maxval(a1),maxval(a2),
     &                          minval(a1),minval(a2),maxval(a1),
     &                          maxval(a2),minval(a1)) + 1.0
                           a7_32(maxval(a1),maxval(a2),minval(a1),
     &                          minval(a2),maxval(a1),maxval(a2),
     &                          minval(a1))
     &                          = a7_32(maxval(a1),maxval(a2),
     &                          minval(a1),minval(a2),maxval(a1),
     &                          maxval(a2),minval(a1))+ 1.0
                        enddo
                     enddo
                  enddo
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

      a7_8  = (0.0,0.0)
      a7_16 = (0.0,0.0)
      a7_32 = (0.0,0.0)

      end

      subroutine print_cmplx
      use sub_mod

      print *,sum(a7_8)
      print *,sum(a7_16)
      print *,sum(a7_32)

      end

      integer function sum_cmplx()
      use sub_mod
      complex*32 res
      
      res = sum(a7_8) + sum(a7_16) + sum(a7_32)
      
      sum_cmplx = int((real(res)+aimag(res)),kind=4)
      end
