subroutine sub (array_a, array_b, init_value, end_value, inc_value)
  integer*8 array_a(100), array_b(100), init_value, end_value, inc_value, i

  do i=init_value,100,2
     array_b(i) = array_a(i+1)
  end do
  if (array_b(65) .ne. 66) then
     print *,"1. NG",array_b(65)
  end if
  
  do i=init_value,end_value,2
     array_b(i) = array_a(i+1)
  end do
  if (array_b(13) .ne. 14) then
     print *,"2. NG",array_b(13)
  end if

  do i=init_value,end_value-1,inc_value
     array_b(i) = array_a(i+1)
  end do
  if (array_b(33) .ne. 34) then
     print *,"3. NG",array_b(33)
  end if
  
  do i=50,end_value-1,2
     array_b(i) = array_a(i+1)
  end do
  if (array_b(84) .ne. 85) then
     print *,"4. NG",array_b(84)
  end if

  do i=50,end_value-1,inc_value
     array_b(i) = array_a(i+1)
  end do
  if (array_b(50) .ne. 51) then
     print *,"5. NG",array_b(50)
  end if

  do i=50,99,inc_value
     array_b(i) = array_a(i+1)
  end do
  if (array_b(77) .ne. 78) then
     print *,"6. NG",array_b(77)
  end if
  print *,"end"
end subroutine sub

program main
  integer*8 array_a(100), array_b(100), i
  do i=1,100
     array_a(i) = i
  end do
  call sub(array_a, array_b, 1_8, 100_8, 1_8)
end program main
