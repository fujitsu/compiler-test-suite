c
c
c
c
c
c
      program main
      integer*4 ia(10), it, ier
      integer*4 :: loop = 10, thread=4
!$    integer*4 OMP_GET_MAX_THREADS
!$    integer*4 OMP_GET_THREAD_NUM
      integer*8 mi8(10)
      integer*1 mi1(10)
      common /com1/ mi8, mi1
c
      it = 99
      ia = 999
      do i=1,loop
         mi8(i) = i*100
         mi1(i) = i
      enddo
!$    thread = OMP_GET_MAX_THREADS()
c
!$omp parallel private(it,/com1/)
!$    it = OMP_GET_THREAD_NUM() + 1
      mi8(it) = it
      mi1(it) = it
      ia(it) = mi8(it)+mi1(it)
!$omp end parallel
c
      ier = 0
      do i=1,thread
          if (ia(i).ne.i*2) ier=ier+1
      enddo
      do i=thread+1, loop
          if (ia(i).ne.999) ier=ier+1
      enddo
      do i=1,loop
          if (mi8(i).ne.i*100) ier=ier+1
          if (mi1(i).ne.i) ier=ier+1
      enddo
      write(*,*) "----- test --",
     +                        " parallel private(it,/com1/) ------"
      if(it.eq.99 .and. ier.eq.0) then
         write(*,*) "OK"
      else
         write(*,*) "NG  PRIVATE clause is not active"
         write(*,*) "     ier=", ier, " It must be 0"
         write(*,*) "     it=", it, " It must be 99"
         write(*,*) "     ia=",ia
         write(*,*) "     mi8=", mi8
         write(*,*) "     mi1=", mi1
      endif
      stop
      end

