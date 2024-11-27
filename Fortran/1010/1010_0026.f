c
c
c
c
c
c
c
c
      program main
      integer*4 ia(10), ib, ic, icnst, it, ier
      integer*4 :: loop=10, ith=4
!$    integer*4 OMP_GET_MAX_THREADS
!$    integer*4 OMP_GET_THREAD_NUM
      integer*4 ma, mt
      common /com1/ ma, mt
!$omp threadprivate(/com1/)
c
      ia = 0
      ic = 0
      icnst = 100
!$    ith = OMP_GET_MAX_THREADS()
c
!$omp parallel private(it)
!$    it=OMP_GET_THREAD_NUM()+1
      mt = it
!$omp sections
      call sub(icnst)
      ia(it)=ia(it)+ma+1
!$omp section
      call sub(icnst)
      ia(it)=ia(it)+ma+1
!$omp section
      call sub(icnst)
      ia(it)=ia(it)+ma+1
!$omp end sections
!$omp end parallel
c
      ier = 0
      do i=1,ith
         ib=ia(i)/(i*icnst)
         ic=ic+ib
         if(ia(i).ne.0 .and. ib.eq.0) ier=ier+1
      enddo
      do i=ith+1,loop
         if(ia(i).ne.0) ier=ier+1
      enddo
      if(ic.ne.3) ier=ier+1
      write(*,*) "----- test --"
      write(*,*) "      threadprivate(/com1/) parallel -----"
      if(ier.eq.0) then
         write(*,*) "OK"
      else
         write(*,*) " NG  THREADPRIVATE is not active"
         write(*,*) "      ier=", ier
         write(*,*) "      ia=", ia
         write(*,*) "      ic=", ic
      endif
c
      stop
      end

      subroutine sub(icnst)
      integer*4 icnst
      integer*4 iw
      real*8 rw
      integer*4 ma, mt
      common /com1/ ma, mt
!$omp threadprivate(/com1/)
c
      ma = 0
      iw = 0
      ww = 0
      rw= 0
      do i=1,50000
         iw=mod(i,10)
         rw=rw+iw+i
      enddo
      ma=ma+mt*icnst
c
      return
      end
