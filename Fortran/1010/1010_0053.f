c
c
c
c
c
      program main
      complex*32 ca(20), cb(20)
      integer*4 it, ier
      integer*4 :: loop=20, ith=4
!$    integer*4 OMP_GET_MAX_THREADS
!$    integer*4 OMP_GET_THREAD_NUM
      complex*32 ma(20), mt(20)
      common /com1/ ma, mt, it
!$omp threadprivate(/com1/)
c
      it = 0
      ca=cmplx(0,0)
      cb=cmplx(0,0)
      ma=cmplx(1,1)
      mt=cmplx(1,1)
!$    ith=OMP_GET_MAX_THREADS()
c
!$omp parallel do copyin(ma,mt) schedule(static)
      do i=1, ith
!$       it=OMP_GET_THREAD_NUM()+1
         cb(it)=mt(it)
         mt(it)=cmplx(it,it)
         call sub()
         ca(it)=ma(it)
      end do
!$omp end parallel do
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
      write(*,*) "      parallel copyin(ma,mt) -----"
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
      integer*4 it
      complex*32 ma(20), mt(20)
      common /com1/ ma, mt ,it
!$omp threadprivate(/com1/)
c
      ma(it)=ma(it)+mt(it)
c
      return
      end