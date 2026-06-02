      common /com/ ja(5),ia(10)
      ia=(/(i,i=1,10)/)
      ja=(/(i,i=1,5)/)
!$omp parallel private(/com/)
      do i=1,10
        ia(i)=i+10
        if (i.le.5) ja(i)=i*i
      enddo
      if (any(ia/=(/11,12,13,14,15,16,17,18,19,20/))) print *,"fail"
      if (any(ja/=(/ 1, 4, 9,16,25/))) print *,"fail"
!$omp endparallel
!$    if (.true.) then
!$      if (any(ia/=(/1,2,3,4,5,6,7,8,9,10/))) print *,"fail"
!$      if (any(ja/=(/1,2,3,4,5/))) print *,"fail"
!$    else
        if (any(ia/=(/11,12,13,14,15,16,17,18,19,20/))) print *,"fail"
        if (any(ja/=(/ 1, 4, 9,16,25/))) print *,"fail"
!$    endif
      print *,'pass'
      end
