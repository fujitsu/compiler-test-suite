!
!
!
!
!
!
      program main
      integer*4 ia(10), ith, ier
      integer*4 :: thread=4, loop=10
      character*4 ss
!$    integer*4 OMP_GET_MAX_THREADS
!$    integer*4 OMP_GET_THREAD_NUM
      type t1
         integer*4   tii
         real*4      trr
         complex*8   tcc
         character*4 tss
      end type
      type (t1) tt1(10)
!
      ia = 0
      do i=1,loop
         write(ss,'(i4.4)')i
         tt1(i) = t1(i, i*1.0, cmplx(i*10.0,i*0.1), ss)
      enddo
!$    thread=OMP_GET_MAX_THREADS()
!
!$omp parallel  private(tt1,ith,ss)
!$    ith=OMP_GET_THREAD_NUM()+1
      do i=1,loop
         write(ss,'(i4.4)')i*10+ith
         tt1(i) = t1(i*ith, i/(ith+1.3), cmplx(i*10.0,ith*1.0), ss)
      enddo
      ia(ith)=ith
!$omp end parallel
!
      ier=0
      do i=1,thread
         if(ia(i).ne.i) ier=ier+1
      enddo
      do i=thread+1,loop
         if(ia(i).ne.0) ier=ier+1
      enddo
      do i=1,loop
         if(tt1(i)%tii.ne.i) ier=ier+1
         if(tt1(i)%trr.ne.i*1.0) ier=ier+1
         if(tt1(i)%tcc.ne.cmplx(i*10.0,i*0.1)) ier=ier+1
         write(ss,'(i4.4)')i
         if(tt1(i)%tss.ne.ss) ier=ier+1
      enddo
      write(*,*) "----- test90 --"
      write(*,*) "      parallel private(tt1,ith) ------"
      if ( ier.eq.0 ) then
         write(*,*)"OK"
      else
         write(*,*)"NG!  PRIVATE clause is not active!"
         do i=1,loop
            write(*,*)"i=",i," tt1(i)=",tt1(i)
         enddo
         write(*,*)"     ier=",ier
         write(*,*)"     ia=",ia
      endif
      stop
      end
