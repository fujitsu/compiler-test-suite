      program main
      integer*4 ia, ic(10), id, ie, it
      integer*4 :: loop=90000, thread=4
!$    integer*4 OMP_GET_MAX_THREADS
!$    integer*4 OMP_GET_THREAD_NUM
      ia = 0
      ic = 0
      ie = 0
!$    thread = OMP_GET_MAX_THREADS()
!$omp parallel private(it)
!$    it = OMP_GET_THREAD_NUM() + 1
!$omp single
      do i = 1,loop
          ia = ia+1
      enddo
!$omp atomic
      ie=ie+1
!$omp end single nowait
      ic(it)=ia
!$omp end parallel
      id=0
      do i=1,thread
          if(ic(i).eq.ia) id=id+1
      enddo
      write(*,*) "------ test --"
      write(*,*) "       parallel private(it)"
      write(*,*) "       single nowait -----"
      if (id.le.thread .and. ie.eq.1) then
          write(*,*) "OK"
      else
          write(*,*) "NG!  SINGLE directive not active!"
          write(*,*) "     ie=",ie," must be 1 "
          write(*,*) "     id=",id," .lt. ", thread
          write(*,*) "     ic=", ic
      endif
      stop
      end

