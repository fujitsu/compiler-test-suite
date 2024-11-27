c
c
c
c
c
c
      program main
      integer*4 ia(10), ier
      integer*4 :: loop=10, ith=4
!$    integer*4 OMP_GET_MAX_THREADS
!$    integer*4 OMP_GET_THREAD_NUM
      integer*4 ma, mt
      common /com1/ ma, mt
!$omp threadprivate(/com1/)
c
      ia = 0
      ma = 1
      mt = 1
!$    ith = OMP_GET_MAX_THREADS()
c
!$omp parallel copyin(ma)
!$    mt=OMP_GET_THREAD_NUM()+1
      call sub()
      ia(mt)=ma
!$omp end parallel
c
      ier = 0
      do i=1,ith
         if(ia(i).ne.i+1) ier=ier+1
      enddo
      do i=ith+1,loop
         if(ia(i).ne.0) ier=ier+1
      enddo
      write(*,*) "----- test --"
      write(*,*) "      threadprivate(/com1/)"
      write(*,*) "      parallel copyin(ma) -----"
      if(ier.eq.0) then
         write(*,*) "OK"
      else
         write(*,*) " NG  COPYIN Directive is not active"
         write(*,*) "      ier=", ier
         write(*,*) "      ia=", ia
      end if
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
