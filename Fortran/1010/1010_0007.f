c
c
c
c
c
c
      program main
      integer*4 ib(10), it, ier
      integer*4 :: loop=10, thread=4
!$    integer*4 OMP_GET_MAX_THREADS
!$    integer*4 OMP_GET_THREAD_NUM
      integer*8 mi8
      integer*4 mi4
      integer*2 mi2
      integer*1 mi1
      common /com1/ mi8, mi4, mi2, mi1
c
      ib = 0
      mi8 = 1000
      mi4 = 100
      mi2 = 10
      mi1 = 1
!$    thread = OMP_GET_MAX_THREADS()
c
!$omp parallel firstprivate(/com1/) private(it)
!$    it = OMP_GET_THREAD_NUM() + 1
      ib(it) = mi8+mi4+mi2+mi1
      mi8=mi8*2
      mi4=mi4*2
      mi2=mi2*2
      mi1=mi1*2
!$omp end parallel
c
      ier = 0
      do i=1,thread
          if (ib(i).ne.mi8+mi4+mi2+mi1) ier=ier+1
      enddo
      do i=thread+1, loop
          if (ib(i).ne.0) ier=ier+1
      enddo
      write(*,*) "----- test --"
      write(*,*) "      parallel firstprivate(/com1/) private(it) -----"
      if(ier.eq.0) then
         write(*,*) "OK"
      else
         write(*,*) "NG  FIRSTPRIVATE clause is not active"
         write(*,*) "     ier=",ier
         write(*,*) "     mi8=",mi8," mi4=",mi4," mi2=",mi2," mi1=",mi1
         write(*,*) "     ib=",ib
      endif
      stop
      end

