program test
  integer,dimension(3,3,3,3,3,3,3) :: hhhh
  integer :: i01,i02,i03,i04,i05,i06,i07,i08,i09,i10
  integer :: bi01,bi02,bi03
  hhhh=0
!$omp parallel
!$omp do collapse(13) 
  do i01=1,3
  do i02=1,3
  do i03=1,3
  do i04=1,3
  do i05=1,3
  do i06=1,3
  do i07=1,3
  do i08=1,3
  do i09=1,3
  do i10=1,3
  do bi01=1,2
  do bi02=1,1
  do bi03=1,3

     hhhh(i01,i02,i03,i04,i05,i06,i07) = hhhh(i01,i02,i03,i04,i05,i06,i07) + 1
  end do
  end do
  end do

  end do
  end do
  end do
  end do
  end do
  end do
  end do
  end do
  end do
  end do
!$omp end do  
!$omp end parallel

print *,sum(hhhh)


end program test
