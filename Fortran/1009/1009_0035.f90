      program main
      integer*4 ia(10),ib(10),ic(10)
      integer*4 :: n=10
      ia = 0
      ib = 0
      ic = 0
      iflg = 0

!$omp parallel
!$omp do ordered
      do i = 1,n
        if( i .le. 5 ) then
          ia(i) = i
!$omp ordered
         write(10,*) ia(i)
!$omp end ordered
        endif

        if( i .gt. 5 ) then
          ia(i) = -i
!$omp ordered
          write(10,*) ia(i)
!$omp end ordered
        endif
      enddo
!$omp enddo
!$omp end parallel

      rewind(10)
      do i = 1,n
        read(10,*) ib(i)
      enddo

      do i = 1,n
        if( i .le. 5 ) then
          ic(i) = i
        endif
        if( i .gt. 5 ) then
          ic(i) = -i
        endif
      enddo

      do i = 1,n
        if( ib(i) .ne. ic(i) ) then
           iflg = 1
        endif
      enddo
      if( iflg .ne. 0 ) then
         write(*,*)"NG"
      else
         write(*,*)"OK"
      endif

      end
