c
c
c
c
c
c
      program main
      integer*4 it, ier
      complex*8 ia,ib(10)
      real*4 ic,id
      integer*4 :: loop=10, loop2=50, thread=4
!$    integer*4 OMP_GET_MAX_THREADS
!$    integer*4 OMP_GET_THREAD_NUM
c
      ia = (1,1)
      ib = (0,0)
!$    thread = OMP_GET_MAX_THREADS()
c
!$omp parallel private(it)
!$    it = OMP_GET_THREAD_NUM() + 1
!$omp sections private(ia)
      ia=(0,0)
      do i=1,loop2
          ia=ia+cmplx(it,it)
      enddo
      ib(it)=ib(it)+ia
!$omp section
      ia=(0,0)
      do i=1,loop2
          ia=ia+cmplx(it,it)
      enddo
      ib(it)=ib(it)+ia
!$omp section
      ia=(0,0)
      do i=1,loop2
          ia=ia+cmplx(it,it)
      enddo
      ib(it)=ib(it)+ia
!$omp end sections
!$omp end parallel
c
      ic = 0.
      id = 0.
      ier = 0
      do i=1,thread
          ic=ic + real(ib(i))/(loop2*i)
          id=id + imag(ib(i))/(loop2*i)
      enddo
      do i=thread+1, loop
          if (ib(i).ne.cmplx(0.0)) ier=ier+1
      enddo
      write(*,*) "----- TEST --"
      write(*,*) "      parallel private(it)"
      write(*,*) "      sections private(ia) ------"
      if(ia.eq.(1,1) .and. ic.eq.3. .and. 
     +                 id.eq.3. .and. ier.eq.0) then
         write(*,*) "OK"
      else
         write(*,*) "NG!  SECTIONS PRIVATE clause is not active"
         write(*,*) "     ia=", ia, " It must be (1,1)"
         write(*,*) "     ic=", ic, " It must be 3"
         write(*,*) "     id=", id, " It must be 3"
         write(*,*) "     ib=", ib
         write(*,*) "     ier=", ier
      endif
      stop
      end

