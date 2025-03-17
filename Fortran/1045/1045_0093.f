      program main
      integer*4 ia(50), ib, ic, it, iw
      integer*4 :: loop=50,st=1
!$    integer*4 OMP_GET_THREAD_NUM
      ia = 0
      ib = 0
!$omp parallel private(it)
!$    it = OMP_GET_THREAD_NUM() + 1
!$omp do schedule(dynamic)
      do i=st,loop
         ia(i) = it
         iw=0
         do j=1,10000
           iw=iw+j
           if(mod(iw,100).eq.0) iw=0
         end do
      end do
!$omp end do
!$omp end parallel
      ib = 0
      ic = 0
      do i=st, loop
         if (ia(i).ne.ic) then
           ib=ib+1
           ic=ia(i)
         endif
      end do
      write(*,*) "----- test --"
      write(*,*) "      parallel private(it)"
      write(*,*) "      do schedule(dynamic) -----"
      if(ib.ge.1) then
         write(*,*) "OK"
      else
         write(*,*) "NG  SCHEDULE clause is not active?"
         write(*,*) "     But, result will chainge runtime."
         write(*,*) "     Please check again with the same object."
         write(*,*) "     ib=",ib
         write(*,*) "     ia=",ia
      endif
      stop
      end

