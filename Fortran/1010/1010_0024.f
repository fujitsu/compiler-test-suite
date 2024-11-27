c
c
c
c
c
c
c
c
      program main
      integer*4 ia(10), ier
      integer*4 :: loop=150, loop2=10, thread=4
!$    integer*4 OMP_GET_MAX_THREADS
!$    integer*4 OMP_GET_THREAD_NUM
      integer*4 ma, mt
      common /com1/ ma, mt
!$omp threadprivate(/com1/)
c
      ia = 0
      mt = 1
!$    thread = OMP_GET_MAX_THREADS()
c
!$omp parallel
!$    mt=OMP_GET_THREAD_NUM()+1
      ma = 0
      do i=1,loop
         call sub()
      enddo
      ia(mt)=ma
!$omp end parallel
c
      ier = 0
      do i=1,thread
         if(ia(i).ne.i*loop) ier=ier+1
      enddo
      do i=thread+1,loop2
         if(ia(i).ne.0) ier=ier+1
      enddo
      write(*,*) "----- test --"
      write(*,*) "      threadprivate(/com1/) parallel do -----"
      if(ier.eq.0) then
         write(*,*) "OK"
      else
         write(*,*) " NG  THREADPRIVATE is not active"
         write(*,*) "      ia=", ia
      endif
c
      stop
      end

      subroutine sub()
      integer*4 ma, mt
      common /com1/ ma, mt
!$omp threadprivate(/com1/)
c
      ma=ma+mt
c
      return
      end
