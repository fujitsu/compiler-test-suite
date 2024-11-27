!
!
!
!
!
!
      program main
      integer*4 ic, ier
      complex*8 cb(50), cd(50)
      integer*4 :: loop=50, loop5=5
      integer*4   mii(5), mi2(5)
      real*4      mrr(5), mr2(5)
      complex*8   mcc(5), mc2(5)
      character*4 mss(5), ms2(5)
      common /com1/ mii, mrr, mcc, mss
      common /com2/ mi2, mr2, mc2, ms2
!
      cb = (0,0)
      mii = 7
      mrr = 3.5
      mcc = (1.9,8.1)
      mss = 'str'
!
!$omp parallel
!$omp do lastprivate(/com1/) private(ic)
      do j=1, loop
         ic=mod(j,loop5)+1
         mii(ic) = j
         mrr(ic) = (-1)*j
         mcc(ic) = cmplx(j,(-1)*j)
         write(mss(ic),'(i4.4)')j
         cb(j) = cmplx(real(mii(ic)),mrr(ic)) + mcc(ic)
      end do
!$omp end do
!$omp end parallel
!
      ier = 0
      do j=1, loop
         ic=mod(j,loop5)+1
         mi2(ic) = j
         mr2(ic) = (-1)*j
         mc2(ic) = cmplx(j,(-1)*j)
         write(ms2(ic),'(i4.4)')j
         cd(j) = cmplx(real(mi2(ic)),mr2(ic)) + mc2(ic)
      enddo
      do j=1, loop
         if (cb(j).ne.cd(j)) then
            ier=ier+1
            write(*,*) "E  j=",j," cb(j)=",cb(j)," cd(j)=",cd(j)
         endif
      enddo
      do j=1, loop5
         if(mii(j).ne.mi2(j)) ier=ier+1
         if(mrr(j).ne.mr2(j)) ier=ier+1
         if(mcc(j).ne.mc2(j)) ier=ier+1
         if(mss(j).ne.ms2(j)) ier=ier+1
      enddo
      write(*,*) "----- test --"
      write(*,*) "      parallel"
      write(*,*) "      do lastprivate(/com1/) private(ic) ------"
      if(ier.eq.0) then
         write(*,*) "OK"
      else
         write(*,*) "NG  LASTPRIVATE clause is not active"
         do j=1, loop5
            write(*,*) "      j=",j," /com1/ ",mii(j),mrr(j),
     +                                                    mcc(j),mss(j)
            write(*,*) "           /com2/ ",mi2(j),mr2(j),mc2(j),ms2(j)
         enddo
         write(*,*) "     ier=",ier
      endif
      stop
      end
