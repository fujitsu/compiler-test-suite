c
c
c
c
c
c
c
      program main
      integer*4 ia(10), ith, ier
      integer*4 :: thread=4, loop=10
      character*4 ss
!$    integer*4 OMP_GET_MAX_THREADS
!$    integer*4 OMP_GET_THREAD_NUM
      integer*4   mii(10)
      real*4      mrr(10)
      complex*8   mcc(10)
      character*4 mss(10)
      common /com1/ mii, mrr, mcc, mss
c
      ia = 0
      do i=1,loop
         mii(i) = i
         mrr(i) = i*1.0
         mcc(i) = cmplx(i*10.0,i*0.1)
         write(mss(i),'(i4.4)')i
      enddo
!$    thread=OMP_GET_MAX_THREADS()
c
!$omp parallel  private(/com1/,ith)
!$    ith=OMP_GET_THREAD_NUM()+1
      do i=1,loop
         mii(i) = i*ith
         mrr(i) = i/(ith+1.3)
         mcc(i) = cmplx(i*10.0,ith*1.0)
         write(mss(i),'(i4.4)')i*10+ith
      enddo
      ia(ith)=ith
!$omp end parallel
c
      ier = 0
      do i=1,thread
         if(ia(i).ne.i) ier=ier+1
      enddo
      do i=thread+1,loop
         if(ia(i).ne.0) ier=ier+1
      enddo
      do i=1,loop
         if(mii(i).ne.i) ier=ier+1
         if(mrr(i).ne.i*1.0) ier=ier+1
         if(mcc(i).ne.cmplx(i*10.0,i*0.1)) ier=ier+1
         write(ss,'(i4.4)')i
         if(mss(i).ne.ss) ier=ier+1
      enddo
      write(*,*) "----- test --"
      write(*,*) "      parallel private(/com1/,ith) ------"
      if ( ier.eq.0 ) then
         write(*,*)"OK"
      else
         write(*,*)"NG  PRIVATE clause is not active"
         do i=1,loop
            write(*,*)"i=",i," mii(i)=",mii(i)," mrr(i)=",mrr(i)
            write(*,*)"      mcc(i)=",mcc(i)," mss(i)=",mss(i)
         enddo
         write(*,*)"     ier=",ier
         write(*,*)"     ia=",ia
      endif
      stop
      end
