c
c
c
c
c
c
c
c
      program main
      integer*4 ia(10), ier
      integer*4 :: thread=4, loop=10
!$    integer*4 OMP_GET_MAX_THREADS
!$    integer*4 OMP_GET_THREAD_NUM
      integer*4   mii
      real*4      mrr
      complex*8   mcc
      character*5 mss
      common /com1/ mii, mrr, mcc, mss
c
      ia = 0
!$    thread=OMP_GET_MAX_THREADS()
c
!$omp parallel  private(/com1/)
      mii=OMP_GET_THREAD_NUM()+1
      mrr = mii*11.1
      mcc = cmplx(mii*1.1,(-1)*mii*0.1)
      write(mss,'(i4.4)')mii
      ia(mii)=mii
!$omp end parallel
c
      ier = 0
      do i=1,thread
         if(ia(i).ne.i) ier=ier+1
      enddo
      do i=thread+1,loop
         if(ia(i).ne.0) ier=ier+1
      enddo
      write(*,*) "----- test --"
      write(*,*) "      parallel private(/com1/) ------"
      if ( ier.eq.0 .and. mii .eq. 1 .and. mrr .eq. 1.0 .and.
     +     mcc.eq.(1.0,0.0) .and. mss.eq.'str' ) then
         write(*,*)"OK"
      else
         write(*,*)"NG  PRIVATE clause is not active"
         write(*,*)"     mii=",mii," mrr=",mrr," mss=",mss
         write(*,*)"     mcc=",mcc
         write(*,*)"     ia=",ia
      endif
c
      stop
      end
      block data
         integer*4   mii
         real*4      mrr
         complex*8   mcc
         character*5 mss
         common /com1/ mii, mrr, mcc, mss
         data mii /1/
         data mrr /1.0/
         data mcc /(1,0)/
         data mss /'str'/
      end