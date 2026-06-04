      common /com/ dd(5),ii(5),ch(2)
      character*3 ch
      integer*4   ii
      real*8      dd
      ch(1) = 'abc'
      ch(2) = 'xyz'
      do i=1,5
        ii(i)=i
        dd(i)=dble(i)
      enddo
!$omp parallel private(/com/)
!$omp critical
      ch(1) = 'DEF'
      ch(2) = 'UVW'
      do i=1,5
        ii(i)=i*i
        dd(i)=dble(i+1)
      enddo
      if (ch(1)/='DEF') print *,"fail"
      if (ch(2)/='UVW') print *,"fail"
      if (any((/ii/)/=(/ 1, 4, 9,16,25/))) print *,"fail"
      if (any((/dd/)/=(/2.0D0,3.0D0,4.0D0,5.0D0,6.0D0/))) print *,"fail"
!$omp end critical
!$omp endparallel
!$    if (.true.) then
!$      if (ch(1)/='abc') print *,"fail"
!$      if (ch(2)/='xyz') print *,"fail"
!$      if (any((/ii/)/=(/ 1, 2, 3, 4, 5/))) print *,"fail"
!$      if (any((/dd/)/=(/1.0D0,2.0D0,3.0D0,4.0D0,5.0D0/))) print *,"fail"
!$    else
       if (ch(1)/='DEF') print *,"fail"
       if (ch(2)/='UVW') print *,"fail"
       if (any((/ii/)/=(/ 1, 4, 9,16,25/))) print *,"fail"
       if (any((/dd/)/=(/2.0D0,3.0D0,4.0D0,5.0D0,6.0D0/))) print *,"fail"
!$    endif
      print *,'pass'
      end
