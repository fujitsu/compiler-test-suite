c 

      module sub_mod
      integer, parameter :: N=3
      real*4  r7_4(N,N,N,N,N,N,N)
      real*8  r7_8(N,N,N,N,N,N,N)
      real*16 r7_16(N,N,N,N,N,N,N)
      common /com7a/r7_4
      common /com7b/r7_8,r7_16

      end


      program main
      use sub_mod
      integer d1,d2
      integer a1(N),a2(N),a3(N)
      integer ires
      integer sum_cmplx
      integer,parameter::ANS = 6196419

      call init_cmplx()

      d1 = sin(0.0) + cos(0.0) + tan(0.0)
      d2 = cos(0.0) + cos(0.0)
      a1 = (/(MOD(i,3)+1,i=1,N)/)
      a2 = (/(MOD(i,2)+1,i=1,N)/)
      a3 = (/(MOD(i,2),i=1,N)/)

c
c
      r7_4  = r7_4  - 0.0
      r7_8  = r7_8  + 0.0
      r7_16 = r7_16 - 0.0
      r7_4  = r7_4  + 1.0
      r7_8  = r7_8  - 1.0
      r7_16 = r7_16 + 1.0
c
      r7_4(1,2,3,2,1,2,3)  = r7_4(1,2,3,2,1,2,3)  - 0.0
      r7_8(1,2,3,1,2,3,3)  = r7_8(1,2,3,1,2,3,3)  + 0.0
      r7_16(1,3,2,1,2,1,3) = r7_16(1,3,2,1,2,1,3) - 0.0
      r7_4(1,2,3,2,1,2,3)  = r7_4(1,2,3,2,1,2,3)  + 1.0
      r7_8(1,2,3,1,2,3,3)  = r7_8(1,2,3,1,2,3,3)  - 1.0
      r7_16(1,3,2,1,2,1,3) = r7_16(1,3,2,1,2,1,3) + 1.0
c
      r7_4(d1,d2,d1,d2,d1,d2,d1)  = r7_4(d1,d2,d1,d2,d1,d2,d1)  + 0.0
      r7_8(d2,d2,d1,d1,d1,d2,d1)  = r7_8(d2,d2,d1,d1,d1,d2,d1)  - 0.0
      r7_16(d1,d2,d1,d2,d1,d2,d1) = r7_16(d1,d2,d1,d2,d1,d2,d1) + 0.0
      r7_4(d1,d2,d1,d2,d1,d2,d1)  = r7_4(d1,d2,d1,d2,d1,d2,d1)  - 1.0
      r7_8(d2,d2,d1,d1,d1,d2,d1)  = r7_8(d2,d2,d1,d1,d1,d2,d1)  + 1.0
      r7_16(d1,d2,d1,d2,d1,d2,d1) = r7_16(d1,d2,d1,d2,d1,d2,d1) - 1.0
c
      r7_4(d1+d2,d1*d2,d2/d1,d1+d2,d1*d2,d2/d1,d2+d1)
     &     = r7_4(d1+d2,d1*d2,d2/d1,d1+d2,d1*d2,d2/d1,d2+d1)  + 0.0
      r7_8(d1+d2,d1*d2,d2/d1,d1+d2,d2+d1,d2/d1,d2*d1)
     &     = r7_8(d1+d2,d1*d2,d2/d1,d1+d2,d2+d1,d2/d1,d2*d1)  - 0.0
      r7_16(d1+d2,d1*d2,d2/d1,d1+d2,d1*d2,d2/d1,d2+d1)
     &     = r7_16(d1+d2,d1*d2,d2/d1,d1+d2,d1*d2,d2/d1,d2+d1) + 0.0
      r7_4(d1+d2,d1*d2,d2/d1,d1+d2,d1*d2,d2/d1,d2+d1)
     &     = r7_4(d1+d2,d1*d2,d2/d1,d1+d2,d1*d2,d2/d1,d2+d1)  - 1.0
      r7_8(d1+d2,d1*d2,d2/d1,d1+d2,d2+d1,d2/d1,d2*d1)
     &     = r7_8(d1+d2,d1*d2,d2/d1,d1+d2,d2+d1,d2/d1,d2*d1)  + 1.0
      r7_16(d1+d2,d1*d2,d2/d1,d1+d2,d1*d2,d2/d1,d2+d1)
     &     = r7_16(d1+d2,d1*d2,d2/d1,d1+d2,d1*d2,d2/d1,d2+d1) - 1.0
c
      r7_4(a1,a2,a1,a2,a1,a2,a1)
     &     = r7_4(a1,a2,a1,a2,a1,a2,a1) + 0.0
      r7_8(a2,a2,a2+a3,a1,a3+a2,a2,a1)
     &     = r7_8(a2,a2,a2+a3,a1,a3+a2,a2,a1) - 0.0
      r7_16(a3+a2,a2,a1,a2,a2,a2,a1)
     &     = r7_16(a3+a2,a2,a1,a2,a2,a2,a1) + 0.0
      r7_4(a1,a2,a1,a2,a1,a2,a1)
     &     = r7_4(a1,a2,a1,a2,a1,a2,a1) + 1.0
      r7_8(a2,a2,a2+a3,a1,a3+a2,a2,a1)
     &     = r7_8(a2,a2,a2+a3,a1,a3+a2,a2,a1) - 1.0
      r7_16(a3+a2,a2,a1,a2,a2,a2,a1)
     &     = r7_16(a3+a2,a2,a1,a2,a2,a2,a1) + 1.0
c
      r7_4(maxval(a1),maxval(a2),minval(a1),minval(a2),
     &     maxval(a1),maxval(a2),minval(a1))
     &     = r7_4(maxval(a1),maxval(a2),minval(a1),minval(a2),
     &     maxval(a1),maxval(a2),minval(a1)) - 0.0
      r7_8(maxval(a1),maxval(a2),minval(a1),minval(a2),
     &     maxval(a1),maxval(a2),minval(a1))
     &     = r7_8(maxval(a1),maxval(a2),minval(a1),minval(a2),
     &     maxval(a1),maxval(a2),minval(a1)) + 0.0
      r7_16(maxval(a1),maxval(a2),minval(a1),minval(a2),
     &     maxval(a1),maxval(a2),minval(a1))
     &     = r7_16(maxval(a1),maxval(a2),minval(a1),minval(a2),
     &     maxval(a1),maxval(a2),minval(a1)) - 0.0
      r7_4(maxval(a1),maxval(a2),minval(a1),minval(a2),
     &     maxval(a3+a2),maxval(a2),minval(a1))
     &     = r7_4(maxval(a1),maxval(a2),minval(a1),minval(a2),
     &     maxval(a3+a2),maxval(a2),minval(a1)) + 1.0
      r7_8(maxval(a1),maxval(a2),minval(a1),minval(a2),
     &     maxval(a1),maxval(a2),minval(a2+a3))
     &     = r7_8(maxval(a1),maxval(a2),minval(a1),minval(a2),
     &     maxval(a1),maxval(a2),minval(a2+a3)) - 1.0
      r7_16(maxval(a1),maxval(a2),minval(a1),minval(a2),
     &     maxval(a1),maxval(a2+a3),minval(a1))
     &     = r7_16(maxval(a1),maxval(a2),minval(a1),minval(a2),
     &     maxval(a1),maxval(a2+a3),minval(a1)) + 1.0
      do i1=1, N
         do i2=1, N
            do i3=1, N
               do i4=1, N
                  do i5=1, N
                     do i6=1, N
                        do i7=1, N
c
                           r7_4  = r7_4  - 0.0
                           r7_8  = r7_8  + 0.0
                           r7_16 = r7_16 - 0.0
                           r7_4  = r7_4  + 1.0
                           r7_8  = r7_8  - 1.0
                           r7_16 = r7_16 + 1.0
c
                           r7_4(1,2,3,2,1,2,3)
     &                          = r7_4(1,2,3,2,1,2,3)  - 0.0
                           r7_8(1,2,3,1,2,3,3)
     &                          = r7_8(1,2,3,1,2,3,3)  + 0.0
                           r7_16(1,3,2,1,2,1,3)
     &                          = r7_16(1,3,2,1,2,1,3) - 0.0
                           r7_4(1,2,3,2,1,2,3)
     &                          = r7_4(1,2,3,2,1,2,3)  + 1.0
                           r7_8(1,2,3,1,2,3,3)
     &                          = r7_8(1,2,3,1,2,3,3)  - 1.0
                           r7_16(1,3,2,1,2,1,3)
     &                          = r7_16(1,3,2,1,2,1,3) + 1.0
c
                           r7_4(d1,d2,d1,d2,d1,d2,d1)
     &                          = r7_4(d1,d2,d1,d2,d1,d2,d1)
     &                          + 0.0
                           r7_8(d2,d2,d1,d1,d1,d2,d1)
     &                          = r7_8(d2,d2,d1,d1,d1,d2,d1)
     &                          - 0.0
                           r7_16(d1,d2,d1,d2,d1,d2,d1)
     &                          = r7_16(d1,d2,d1,d2,d1,d2,d1)
     &                          + 0.0
                           r7_4(d1,d2,d1,d2,d1,d2,d1)
     &                          = r7_4(d1,d2,d1,d2,d1,d2,d1)
     &                          - 1.0
                           r7_8(d2,d2,d1,d1,d1,d2,d1)
     &                          = r7_8(d2,d2,d1,d1,d1,d2,d1)
     &                          + 1.0
                           r7_16(d1,d2,d1,d2,d1,d2,d1)
     &                          = r7_16(d1,d2,d1,d2,d1,d2,d1)
     &                          - 1.0
c
                           r7_4(d1+d2,d1*d2,d2/d1,d1+d2,d1*d2,
     &                          d2/d1,d2+d1) = r7_4(d1+d2,
     &                          d1*d2,d2/d1,d1+d2,d1*d2,d2/d1,
     &                          d2+d1)  + 0.0
                           r7_8(d1+d2,d1*d2,d2/d1,d1+d2,d2+d1,
     &                          d2/d1,d2*d1) = r7_8(d1+d2,
     &                          d1*d2,d2/d1,d1+d2,d2+d1,d2/d1,
     &                          d2*d1)  - 0.0
                           r7_16(d1+d2,d1*d2,d2/d1,d1+d2,d1*d2,
     &                          d2/d1,d2+d1) = r7_16(d1+d2,
     &                          d1*d2,d2/d1,d1+d2,d1*d2,d2/d1,
     &                          d2+d1) + 0.0
                           r7_4(d1+d2,d1*d2,d2/d1,d1+d2,d1*d2,
     &                          d2/d1,d2+d1) = r7_4(d1+d2,
     &                          d1*d2,d2/d1,d1+d2,d1*d2,d2/d1,
     &                          d2+d1)  - 1.0
                           r7_8(d1+d2,d1*d2,d2/d1,d1+d2,d2+d1,
     &                          d2/d1,d2*d1) = r7_8(d1+d2,
     &                          d1*d2,d2/d1,d1+d2,d2+d1,d2/d1,
     &                          d2*d1)  + 1.0
                           r7_16(d1+d2,d1*d2,d2/d1,d1+d2,d1*d2,
     &                          d2/d1,d2+d1) = r7_16(d1+d2,
     &                          d1*d2,d2/d1,d1+d2,d1*d2,d2/d1,
     &                          d2+d1) - 1.0
c
                           r7_4(a1,a2,a1,a2,a1,a2,a1)
     &                          = r7_4(a1,a2,a1,a2,a1,a2,a1)
     &                          + 0.0
                           r7_8(a2,a2,a2+a3,a1,a3+a2,a2,a1)
     &                          = r7_8(a2,a2,a2+a3,a1,a3+a2,a2,a1)
     &                          - 0.0
                           r7_16(a3+a2,a2,a1,a2,a2,a2,a1)
     &                          = r7_16(a3+a2,a2,a1,a2,a2,a2,a1)
     &                          + 0.0
                           r7_4(a1,a2,a1,a2,a1,a2,a1)
     &                          = r7_4(a1,a2,a1,a2,a1,a2,a1)
     &                          + 1.0
                           r7_8(a2,a2,a2+a3,a1,a3+a2,a2,a1)
     &                          = r7_8(a2,a2,a2+a3,a1,a3+a2,a2,a1)
     &                          - 1.0
                           r7_16(a3+a2,a2,a1,a2,a2,a2,a1)
     &                          = r7_16(a3+a2,a2,a1,a2,a2,a2,a1)
     &                          + 1.0
c
                           r7_4(maxval(a1),maxval(a2),minval(a1),
     &                          minval(a2),maxval(a1),maxval(a2),
     &                          minval(a1)) = r7_4(maxval(a1),
     &                          maxval(a2),minval(a1),minval(a2),
     &                          maxval(a1),maxval(a2),minval(a1))
     &                          - 0.0
                           r7_8(maxval(a1),maxval(a2),minval(a1),
     &                          minval(a2),maxval(a1),maxval(a2),
     &                          minval(a1))= r7_8(maxval(a1),
     &                          maxval(a2),minval(a1),minval(a2),
     &                          maxval(a1),maxval(a2),minval(a1))
     &                          + 0.0
                           r7_16(maxval(a1),maxval(a2),minval(a1),
     &                          minval(a2),maxval(a1),maxval(a2),
     &                          minval(a1))= r7_16(maxval(a1),
     &                          maxval(a2),minval(a1),minval(a2),
     &                          maxval(a1),maxval(a2),minval(a1))
     &                          - 0.0
                           r7_4(maxval(a1),maxval(a2),minval(a1),
     &                          minval(a2),maxval(a1),maxval(a2),
     &                          minval(a1)) = r7_4(maxval(a1),
     &                          maxval(a2),minval(a1),minval(a2),
     &                          maxval(a1),maxval(a2),minval(a1))
     &                          - 1.0
                           r7_8(maxval(a2+a3),maxval(a2),minval(a1),
     &                          minval(a2),maxval(a1),maxval(a2),
     &                          minval(a1))= r7_8(maxval(a2+a3),
     &                          maxval(a2),minval(a1),minval(a2),
     &                          maxval(a1),maxval(a2),minval(a1))
     &                          + 1.0
                           r7_16(maxval(a1),maxval(a2),minval(a1),
     &                          minval(a2),maxval(a1),maxval(a2),
     &                          minval(a1))= r7_16(maxval(a1),
     &                          maxval(a2),minval(a1),minval(a2),
     &                          maxval(a1),maxval(a2),minval(a1))
     &                          - 2.0
                        enddo
                     enddo
                  enddo
               enddo
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

      r7_4  = (0.0,0.0)
      r7_8 = (0.0,0.0)
      r7_16 = (0.0,0.0)

      end

      subroutine print_cmplx
      use sub_mod

      print *,sum(r7_4)
      print *,sum(r7_8)
      print *,sum(r7_16)

      end

      integer function sum_cmplx()
      use sub_mod
      real*16 res
      
      res = sum(r7_4) + sum(r7_8) + sum(r7_16)

      sum_cmplx = int(res,kind=4)
      end
