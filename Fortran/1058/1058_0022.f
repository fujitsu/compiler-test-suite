      program main
      real*4 ra, rb, rc, rd
      integer*4 it
      integer*4 :: ith=4
!$    integer*4 OMP_GET_MAX_THREADS
!$    integer*4 OMP_GET_THREAD_NUM

      ra=10.91
      rc=2.8
!$    ith=OMP_GET_MAX_THREADS()

!$omp parallel reduction(+:ra) reduction(max:rc) private(it)
!$    it=OMP_GET_THREAD_NUM()+1
      ra=ra+(it*11.0972)
      rc=it*1.007*(-1)**it
!$omp end parallel

      rb=10.91
      rd=2.8
      do i=1,ith
         rb=rb+(i*11.0972)
         rd=max(rd,real(i*1.007*(-1)**i))
      enddo
      write(*,*) "----- parallel reduction(+:ra) reduction(max:rc)",
     +                 " private(it) -----"
      if(abs(ra-rb).lt.abs(rb)*1e-4 .and. rc.eq.rd) then
         write(*,*) "OK"
      else
         write(*,*) "NG   REDUCTION(+) clause is incorrect"
         write(*,*) "     ra=", ra, "  It must be ", rb
         write(*,*) "     rc=", rc, "  It must be ", rd
      end if

      stop
      end

