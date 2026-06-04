      common /com/ ia(10)
      do j=1,10
        ia(j)=j
      enddo
      i=100
!$omp parallel private(/com/)
      do i=1,10
        ia(i)=i+10
      enddo
      if (any(ia/=(/11,12,13,14,15,16,17,18,19,20/))) print *,"fail"
!$    if (i/=11.and.i/=100) print *,"fail"
!$omp endparallel
!$    if (.true.) then
!$      if (any(ia/=(/1,2,3,4,5,6,7,8,9,10/))) print *,"fail"
!$    else
        if (any(ia/=(/11,12,13,14,15,16,17,18,19,20/))) print *,"fail"
!$    endif
      print *,'pass'
      end
