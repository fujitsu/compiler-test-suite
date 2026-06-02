      type zzz
        integer*4 aaa(5)
      end type 
      type (zzz) z1
      do i=1,5
        z1%aaa(i) = i
      enddo
!$omp parallel private(z1)
      do i=1,5
        z1%aaa(i) = i * (-1)
      enddo
!$    if (i==5) print *,"fail"
!$omp end parallel
!$    if (.true.) then
!$      if (any(z1%aaa/=(/ 1, 2, 3, 4, 5/))) print *,"fail"
!$    else
        if (any(z1%aaa/=(/-1,-2,-3,-4,-5/))) print *,"fail"
!$    endif
      print *,'pass'
      end
