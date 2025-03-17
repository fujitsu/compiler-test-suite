!
!
!
!
!
!
      program main
      integer*4 itn, ier
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
      type (t1), target :: tt1(10)
      type (t1), pointer :: pt1
!
      do i=1,loop
         write(ss,'(i4.4)')i
         tt1(i)=t1(i,real(i),cmplx(i,i),ss)
      enddo
!$    thread=OMP_GET_MAX_THREADS()
!
!$omp parallel  private(pt1,itn,ss)
      itn=OMP_GET_THREAD_NUM()+1
      pt1=>tt1(itn)
      write(ss,'(i4.4)')itn*10
      pt1=t1(itn*10, real(itn*10.0), cmplx(itn*10,itn*(-10)),ss)
!$omp end parallel
!
      ier=0
      do i=1,thread
         if(tt1(i)%tii.ne.i*10) ier=ier+1
         if(tt1(i)%trr.ne.real(i*10)) ier=ier+1
         if(tt1(i)%tcc.ne.cmplx(i*10,i*(-10))) ier=ier+1
         write(ss,'(i4.4)')i*10
         if(tt1(i)%tss.ne.ss) ier=ier+1
      enddo
      do i=thread+1,loop
         if(tt1(i)%tii.ne.i) ier=ier+1
         if(tt1(i)%trr.ne.real(i)) ier=ier+1
         if(tt1(i)%tcc.ne.cmplx(i,i)) ier=ier+1
         write(ss,'(i4.4)')i
         if(tt1(i)%tss.ne.ss) ier=ier+1
      enddo
      write(*,*) "----- test90 --"
      write(*,*) "      parallel private(pt1) ------"
      if ( ier.eq.0 ) then
         write(*,*)"OK"
      else
         write(*,*)"NG!  PRIVATE clause is not active!"
         do i=1,loop
            write(*,*)"     i=",i," tt1(i)=",tt1(i)
         enddo
      endif
      stop
      end
