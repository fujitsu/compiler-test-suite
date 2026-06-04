program main
  integer a(1024), a_index

  a_index = 0

!$omp parallel do ordered
  do i=1, 1024
!$omp ordered
     a_index = a_index+1
     a(i) = a_index
!$omp end ordered
  end do

  a_index = 0
  do i=2, 1024
     if(i .ne. a(i)) then
        a_index = 1
        exit
     end if
  end do

  if(a_index .ne. 0) then
     write(*,*) "ORDERED directive is not active"
  else
     write(*,*) "ok"
  end if

end program main
