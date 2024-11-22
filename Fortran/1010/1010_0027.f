c
c
c
c
c
c
c
c
      program main
      integer*4 ia(10), ib(10), it, ier
      integer*4 :: loop=10, ith=4
!$    integer*4 OMP_GET_MAX_THREADS
!$    integer*4 OMP_GET_THREAD_NUM
      integer*4 ma, mt
      common /com1/ ma, mt
!$omp threadprivate(/com1/)
c
      ia=0
      ib=0
      ma=1
      mt=1
!$    ith=OMP_GET_MAX_THREADS()
c
!$omp parallel copyin(/com1/) private(it)
!$    it=OMP_GET_THREAD_NUM()+1
      ib(it)=mt
      mt=it
      call sub()
      ia(mt)=ma
!$omp end parallel
c
      ier=0
      do i=1,ith
         if(ia(i).ne.i+1) ier=ier+1
         if(ib(i).ne.1) ier=ier+1
      enddo
      do i=ith+1,loop
         if(ia(i).ne.0) ier=ier+1
         if(ib(i).ne.0) ier=ier+1
      enddo
      write(*,*) "----- test --"
      write(*,*) "      threadprivate(/com1/)"
      write(*,*) "      parallel copyin(/com1/) -----"
      if(ier.eq.0) then
         write(*,*) "OK"
      else
         write(*,*) " NG  COPYIN Directive is not active"
         write(*,*) "      ier=", ier
         write(*,*) "      ia=", ia
         write(*,*) "      ib=", ib
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