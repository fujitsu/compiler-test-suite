      program main
      integer*4 ia(10), it, ier
      logical*4 la(10)
      integer*4 :: loop=10, itn=4
!$    integer*4 OMP_GET_MAX_THREADS
!$    integer*4 OMP_GET_THREAD_NUM
!$    logical*4 OMP_IN_PARALLEL
      ia = 0
      la = .false.
!$    itn=OMP_GET_MAX_THREADS()
!$omp parallel if(mod(itn,2).eq.0 .and. itn.gt.2.and.itn.le.loop)
!$omp+         private(it)
!$    it = OMP_GET_THREAD_NUM() + 1
      ia(it) = it
      la(it) = OMP_IN_PARALLEL()
!$omp end parallel
      ier=0
      if(mod(itn,2).eq.0 .and. itn.gt.2.and.itn.le.loop)then
         do i=1,itn
            if( .not. la(i) ) ier=ier+1
         enddo
         do i=itn+1, loop
            if( la(i) ) ier=ier+1
         enddo
      else
         itn=1
         do i=1,loop
            if( la(i) ) ier=ier+1
         enddo
      endif
      do i=1,itn
         if( ia(i) .ne. i ) ier=ier+1
      enddo
      do i=itn+1, loop
         if( ia(i) .ne. 0 ) ier=ier+1
      enddo
      write(*,*) "----- test --"
      write(*,*) "      parallel if(mod(itn,2).eq.0",
     +                 " .and. itn.gt.2.and.itn.le.loop)"
      write(*,*) "      private(it) -----"
      if(ier .eq. 0) then
         write(*,*) "OK!"
      else
         write(*,*) "NG  IF Clause is incorrect"
         write(*,*) "     ier=", ier
         write(*,*) "     ia=", ia
         write(*,*) "     la=", la
      endif
      stop
      end

