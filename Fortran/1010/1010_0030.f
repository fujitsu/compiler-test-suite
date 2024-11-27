c
c
c
c
c
      program main
      complex*8 ca(20), cb(20)
      integer*4 it, ier
      integer*4 :: loop=20, ith=4
!$    integer*4 OMP_GET_MAX_THREADS
!$    integer*4 OMP_GET_THREAD_NUM
      complex*8 ma, mt
      common /com1/ ma, mt
!$omp threadprivate(/com1/)
c
      ca=cmplx(0,0)
      cb=cmplx(0,0)
      ma=cmplx(1,1)
      mt=cmplx(1,1)
!$    ith=OMP_GET_MAX_THREADS()
c
!$omp parallel copyin(/com1/) private(it)
!$    it=OMP_GET_THREAD_NUM()+1
      cb(it)=mt
      mt=cmplx(it,it)
      call sub()
      ca(it)=ma
!$omp end parallel
c
      ier=0
      do i=1,ith
         if(ca(i).ne.cmplx(i+1,i+1)) ier=ier+1
         if(cb(i).ne.cmplx(1,1)) ier=ier+1
      enddo
      do i=ith+1,loop
         if(ca(i).ne.cmplx(0,0)) ier=ier+1
         if(cb(i).ne.cmplx(0,0)) ier=ier+1
      enddo
      write(*,*) "----- test --"
      write(*,*) "      threadprivate(/com1/)"
      write(*,*) "      parallel copyin(/com1/) -----"
      if(ier.eq.0) then
         write(*,*) "OK"
      else
         write(*,*) " NG  COPYIN Directive is not active"
         write(*,*) "      ier=", ier
         write(*,*) "      ca=", ca
         write(*,*) "      cb=", cb
      end if
c
      stop
      end

      subroutine sub()
      complex*8 ma, mt
      common /com1/ ma, mt
!$omp threadprivate(/com1/)
c
      ma=ma+mt
c
      return
      end
