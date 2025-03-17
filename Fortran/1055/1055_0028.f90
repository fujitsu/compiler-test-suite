!
!
!
!
!
!
      program main
      integer*4 ia(10), it, ier
      integer*4 :: thread=4, loop=10
!$    integer*4 OMP_GET_MAX_THREADS
!$    integer*4 OMP_GET_THREAD_NUM
      type t1
         integer*4   tia(10)
         real*4      trr
         complex*8   tcc
         character*4 tsa(10)
      end type
      type (t1) tt1
!
      ia = 0
      tt1%tia = 0
      tt1%trr = 0.0
      tt1%tcc = (0.0,0.0)
      tt1%tsa = 'str'
!$    thread=OMP_GET_MAX_THREADS()
!
!$omp parallel  private(tt1,it)
      it=OMP_GET_THREAD_NUM()+1
      tt1%trr = it*11.1
      tt1%tcc = cmplx(it*1.1,(-1)*it*0.1)
      do i=1,loop
         tt1%tia(i) = it*10+i
         write(tt1%tsa(i),'(i2.2)')it*10+i
      enddo
      ia(it)=it
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
         if(tt1%tia(i).ne.0) ier=ier+1
         if(tt1%tsa(i).ne.'str') ier=ier+1
      enddo
      if(tt1%trr.ne.0.0) ier=ier+1
      if(tt1%tcc.ne.(0.0,0.0)) ier=ier+1
      write(*,*) "----- test90 --"
      write(*,*) "      parallel private(tt1,it) ------"
      if ( ier.eq.0 ) then
         write(*,*)"OK"
      else
         write(*,*)"NG!  PRIVATE clause is not active!"
         write(*,*)"     ia=",ia
         write(*,*)"     tt1%tia=",tt1%tia
         write(*,*)"     tt1%trr=",tt1%trr
         write(*,*)"     tt1%tcc=",tt1%tcc
         write(*,*)"     tt1%tsa=",tt1%tsa
      endif
      stop
      end
