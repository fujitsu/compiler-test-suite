      module mod_a
      integer N
      common /com/N
      real kei
      common /com2/kei
      integer ANS,OKANS
      common /com3/ANS,OKANS

      contains
      subroutine sub_a
      real(kind=4) :: mlocal
      real(kind=4),dimension(N) :: marray1, marray2

      mlocal = real(-N/2)
      ma_loop1: do i=1,N
         if (i < N/2) then 
            marray1(i) = real(i/N)*0.00001
            marray2(i) = real(mod(i,2))*0.00001
         else
            marray1(i) = 0.00001*real(i)/real(N)
            marray2(i) = real(mod(i,4))*0.00001
         endif
         mlocal = mlocal + marray2(i)
         mlocal = mlocal - marray1(i)
      end do ma_loop1
      rsum = -mlocal
      ma_loop2: do i=2,N
         rsum = rsum + marray1(i)*marray2(i)
      end do ma_loop2
      kei = kei + rsum
      end subroutine
      end module

      module mod_b
      use mod_a

      contains
      subroutine sub_b
      real(kind=4) :: mlocal, dlocal, rsum
      real(kind=4),dimension(N) :: marray1, marray2, ma

      N = 250000
      mb_loop1: do i=1,N
         if (i < N/2) then 
            marray1(i) = real(i)/real(N)
            marray2(i) = real(i/N)
         else
            marray1(i) = real(i/N)
            marray2(i) = real(i)/real(N)
         endif
      end do mb_loop1
      mlocal = marray1(3) + marray2(1)
      dlocal = marray1(6) + marray2(4)
      rsum = 0.0
      ma = 0.

      mb_loop2: do i=1,N-5
      ma(i)=rsum+marray2(i)*(mlocal*marray1(i+4)+dlocal*marray1(i+5))
      end do mb_loop2
      rsum = sum(ma)
      kei = kei + rsum
      end subroutine
      end module

      program main
      use mod_a
      use mod_b
      real(kind=4) :: mlocal

      mlocal = kei
      main_loop1: do i=1,int(mlocal)
         call sub_a
         call sub_b
      end do main_loop1

      if ((int(kei)>=ANS-OKANS).and.(int(kei)<=ANS+OKANS)) then
         print *,"** OK **"
      else
         print *,"** NG **",int(kei),ANS-OKANS,ANS+OKANS
      endif
      end program

      block data
      integer N
      common  /com/N
      real kei
      common /com2/kei
      integer ANS, OKANS
      common /com3/ANS,OKANS
      
      data N/1000000/
      data kei/1./
      data ANS/500001/OKANS/10/
      end

