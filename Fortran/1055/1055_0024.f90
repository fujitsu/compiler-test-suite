!
!
!
!
!
!
!
      program main
      integer*4 ia(10), ib, ith, ier
      integer*4 :: thread=4, loop=50, loop2=10
!$    integer*4 OMP_GET_MAX_THREADS
!$    integer*4 OMP_GET_THREAD_NUM
      integer*4, target :: ti(50)
      integer*4, pointer :: pt(:)
!
      ia = 0
      ib = 0
      do i=1,loop
         ti(i)=mod(i*19,31)
      enddo
!$    thread=OMP_GET_MAX_THREADS()
!
!$omp parallel private(pt,ith)
!$    ith=OMP_GET_THREAD_NUM()+1
      pt=>ti
      do i=1,loop
         ia(ith)=ia(ith)+pt(i)
      enddo
!$omp end parallel
!
      do i=1,loop
         ib=ib+ti(i)
      enddo
      ier=0
      do i=1,thread
         if(ia(i).ne.ib) ier=ier+1
      enddo
      do i=thread+1,loop2
         if(ia(i).ne.0) ier=ier+1
      enddo
      write(*,*) "----- test90 --"
      write(*,*) "      parallel private(tt1,ith) ------"
      if ( ier.eq.0 ) then
         write(*,*)"OK"
      else
         write(*,*)"NG!  PRIVATE clause is not active!"
         write(*,*)"     ier=",ier," ib=",ib
         write(*,*)"     ia=",ia
      endif
      stop
      end
