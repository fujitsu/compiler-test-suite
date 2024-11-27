!
!
!
!
!
!
      program main
      integer*4 ic, ier
      complex*8 cb(50)
      character*4 ss
      integer*4 :: loop=50, loop5=5
      integer*4   mii(5)
      real*4      mrr(5)
      complex*8   mcc(5)
      character*4 mss(5)
      common /com1/ mii, mrr, mcc, mss
!
      cb = (0,0)
      do j=1, loop5
         mii(j) = j
         mrr(j) = j
         mcc(j) = cmplx(j,j)
         write(mss(j),'(i4.4)') j
      enddo
!
!$omp parallel
!$omp do private(/com1/,ic)
      do j=1, loop
         ic = mod(j,loop5)+1
         mii(ic) = j
         mrr(ic) = (-1)*j
         mcc(ic) = cmplx(j,(-1)*j)
         cb(mii(ic)) = cmplx(real(mii(ic)),mrr(ic)) + mcc(ic)
         write(mss(ic),'(i4.4)')(-1)*j
      end do
!$omp end do
!$omp end parallel
!
      ier = 0
      do j=1, loop
          if (cb(j).ne.cmplx(j*2,j*(-2))) then
             ier=ier+1
             write(*,*) "E  j=",j," cb(j)=",cb(j)," must be ",j*2.0
          endif
      enddo
      do j=1, loop5
         if(mii(j).ne.j) ier=ier+1
         if(mrr(j).ne.j) ier=ier+1
         if(mcc(j).ne.cmplx(j,j)) ier=ier+1
         write(ss,'(i4.4)')j
         if(mss(j).ne.ss) ier=ier+1
      enddo
      write(*,*) "----- test --"
      write(*,*) "      parallel"
      write(*,*) "      do private(/com1/,ic) ------"
      if(ier.eq.0) then
         write(*,*) "OK"
      else
         write(*,*) "NG  PRIVATE clause is not active"
         write(*,*) "     ier=",ier
         do j=1, loop5
         write(*,*) "     j=",j," /com1/ ",mii(j),mrr(j),mcc(j),mss(j)
         enddo
      endif
      stop
      end
