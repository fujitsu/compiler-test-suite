!
!
!
!
!
!
      program main
      integer*4 ia(10), ier
      integer*4 :: thread=4, loop=10
!$    integer*4 OMP_GET_MAX_THREADS
!$    integer*4 OMP_GET_THREAD_NUM
      type t1
         integer*4   tii
         real*4      trr
         complex*8   tcc
         character*4 tss
      end type
      type (t1) tt1
!
      ia = 0
      tt1 = t1(0,0.,(0.,0.),'str')
!$    thread=OMP_GET_MAX_THREADS()
!
!$omp parallel  private(tt1)
      tt1%tii=OMP_GET_THREAD_NUM()+1
      tt1%trr = tt1%tii*11.1
      tt1%tcc = cmplx(tt1%tii*1.1,(-1)*tt1%tii*0.1)
      write(tt1%tss,'(i4.4)')tt1%tii
      ia(tt1%tii)=tt1%tii
!$omp end parallel
!
      ier = 0
      if(tt1%tii.ne.0) ier=ier+1
      if(tt1%trr.ne.0.) ier=ier+1
      if(tt1%tcc.ne.(0.,0.)) ier=ier+1
      if(tt1%tss.ne.'str') ier=ier+1
      do i=1,thread
         if(ia(i).ne.i) ier=ier+1
      enddo
      do i=thread+1,loop
         if(ia(i).ne.0) ier=ier+1
      enddo
      write(*,*) "----- test90 --"
      write(*,*) "      parallel private(tt1) ------"
      if ( ier.eq.0 ) then
         write(*,*)"OK"
      else
         write(*,*)"NG!  PRIVATE clause is not active!"
         write(*,*)"     tt1=",tt1
         write(*,*)"     ia=",ia
      endif
      stop
      end
