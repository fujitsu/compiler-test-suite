c
c
c
c
c
c
c
c
      program main
      integer*4 ia(150,10), ib(150,10), ier
      integer*4 :: loop=150, loop2=10, thread=4
!$    integer*4 OMP_GET_MAX_THREADS
!$    integer*4 OMP_GET_THREAD_NUM
      integer*4 ma(150), mt
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
      call sub(loop)
      do i=1,loop
         ia(i,mt)=ma(i)
      enddo
!$omp end parallel
c
      ib = 0
      do i=1,thread
         do j=1,loop
            ib(j,i)=ib(j,i)+i*j
         enddo
      enddo
      ier = 0
      do i=1,loop2
         do j=1,loop
            if(ia(j,i).ne.ib(j,i)) ier=ier+1
         enddo
      enddo
      write(*,*) "----- test --"
      write(*,*) "      threadprivate(/com1/) parallel do -----"
      if(ier.eq.0) then
         write(*,*) "OK"
      else
         write(*,*) " NG  THREADPRIVATE is not active"
      end if
c
      stop
      end

      subroutine sub(loop)
      integer*4 loop
      integer*4 ma(150), mt
      common /com1/ ma, mt
!$omp threadprivate(/com1/)
c
      do i=1,loop
         ma(i)=ma(i)+mt*i
      enddo
c
      return
      end
