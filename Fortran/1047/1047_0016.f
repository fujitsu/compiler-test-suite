      program main
      integer*4 ia(10), it, ier
      integer*4 :: loop = 10, thread=4
!$    integer*4 OMP_GET_MAX_THREADS
!$    integer*4 OMP_GET_THREAD_NUM
      integer*8 ii8(10)
      integer*1 ii1(10)
      it = 99
      ia = 999
      do i=1,loop
         ii8(i) = i*100
         ii1(i) = i
      enddo
!$    thread = OMP_GET_MAX_THREADS()
!$omp parallel private(ii8,ii1,it)
!$    it = OMP_GET_THREAD_NUM() + 1
      ii8(it) = it
      ii1(it) = it
      ia(it) = ii8(it)+ii1(it)
!$omp end parallel
      ier = 0
      do i=1,thread
          if (ia(i).ne.i*2) ier=ier+1
      enddo
      do i=thread+1, loop
          if (ia(i).ne.999) ier=ier+1
      enddo
      do i=1,loop
          if (ii8(i).ne.i*100) ier=ier+1
          if (ii1(i).ne.i) ier=ier+1
      enddo
      write(*,*) "----- test --",
     +                        " parallel private(ii8,ii1,it) ------"
      if(it.eq.99 .and. ier.eq.0) then
         write(*,*) "OK"
      else
         write(*,*) "NG  PRIVATE clause is not active"
         write(*,*) "     ier=", ier, " It must be 0"
         write(*,*) "     it=", it, " It must be 99"
         write(*,*) "     ia=",ia
         write(*,*) "     ii8=", ii8
         write(*,*) "     ii1=", ii1
      endif
      stop
      end

