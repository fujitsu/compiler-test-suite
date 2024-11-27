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
      integer*8 mi8
      integer*4 mi4
      integer*2 mi2
      integer*1 mi1
      common /com1/ mi8, mi4, mi2, mi1
c
      it = 9
      ia = 9
      mi8 = 800
!$    thread = OMP_GET_MAX_THREADS()
c
!$omp parallel private(it,/com1/)
!$    it = OMP_GET_THREAD_NUM() + 1
      mi8 = it
      mi4 = it
      mi2 = it
      mi1 = it
      ia(it) = mi8+mi4+mi2+mi1
!$omp end parallel
c
      ier = 0
      do i=1,thread
          if (ia(i).ne.i*4) ier=ier+1
      enddo
      do i=thread+1, loop
          if (ia(i).ne.9) ier=ier+1
      enddo
      write(*,*) "----- test --",
     +                        " parallel private(it,/com1/) ------"
      if(it.eq.9 .and. mi8.eq.800 .and. ier.eq.0) then
         write(*,*) "OK"
      else
         write(*,*) "NG  PRIVATE clause is not active"
         write(*,*) "     ier=", ier, " It must be 0"
         write(*,*) "     it=", it, " It must be 9"
         write(*,*) "     mi8=", mi8, " It must be 800"
         write(*,*) "     ia=",ia
      endif
      stop
      end

