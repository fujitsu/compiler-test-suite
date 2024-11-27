      program main
      complex*8 ca, cb(10)
      integer*4 ic , it, ier
      integer*4 :: loop=10, loop2=90000, thread=4
!$    integer*4 OMP_GET_MAX_THREADS
!$    integer*4 OMP_GET_THREAD_NUM
      ca = (-1.,0.)
      cb = (0.,0.)
!$    thread = OMP_GET_MAX_THREADS()
!$omp parallel private(it)
!$    it = OMP_GET_THREAD_NUM() + 1
!$omp sections private(ca)
      ca=(0.,0.)
      do i=1,loop2
          ca=ca+cmplx(it,it)
      enddo
      cb(it)=cb(it)+ca
!$omp section
      ca=(0.,0.)
      do i=1,loop2
          ca=ca+cmplx(it,it)
      enddo
      cb(it)=cb(it)+ca
!$omp section
      ca=(0.,0.)
      do i=1,loop2
          ca=ca+cmplx(it,it)
      enddo
      cb(it)=cb(it)+ca
!$omp end sections
!$omp end parallel
      ic = 0
      ier = 0
      do i=1,thread
          ic=ic + int(cb(i))/(loop2*i)
      enddo
      do i=thread+1, loop
          if (cb(i).ne.(0.,0.)) ier=ier+1
      enddo
      write(*,*) "----- test --"
      write(*,*) "      parallel private(it)"
      write(*,*) "      sections private(ca) ------"
      if(ca.eq.(-1.,0.) .and. ic.eq.3 .and. ier.eq.0) then
         write(*,*) "OK"
      else
         write(*,*) "NG  SECTIONS PRIVATE clause is not active"
         write(*,*) "     ca=", ca, " It must be (-1.0,0.0)"
         write(*,*) "     ic=", ic, " It must be 3"
         write(*,*) "     cb=", cb
      endif
      stop
      end

