subroutine sub(array_a, array_b)
  integer*8 i;
  integer*8 array_a(5000), array_b(5000)
  
  do i=1,100
     array_b(i) = array_a(i+1)
  end do
  if (array_b(55) .ne. 56) then
     print *,"1. NG",array_b(55)
  end if
  
  do i=1,100
     array_b(i) = array_a(i+4095)
  end do
  if (array_b(5) .ne. 4100) then
     print *,"2. NG",array_b(5)
  end if

  do i=1,100
     array_b(i) = array_a(i+4096)
  end do
  if (array_b(30) .ne. 4126) then
     print *,"3. NG",array_b(30)
  end if
  
  do i=10,2,-1
     array_b(i) = array_a(i-1)
  end do
  if (array_b(7) .ne. 6) then
     print *,"4. NG",array_b(7)
  end if
  
  do i=100,33,-1
     array_b(i) = array_a(i-32)
  end do
  if (array_b(66) .ne. 34) then
     print *,"5. NG",array_b(66)
  end if
  
  do i=100,34,-1
     array_b(i) = array_a(i-33)
  end do
  if (array_b(70) .ne. 37) then
     print *,"6. NG",array_b(70)
  end if
  
  do i=1,500,31 
     array_b(i) = array_a(i+3)
  end do
  if (array_b(63) .ne. 66) then
     print *,"7. NG",array_b(63)
  end if
  
  do i=1,500,32
     array_b(i) = array_a(i+4)
  end do
  if (array_b(161) .ne. 165) then
     print *,"8. NG",array_b(161)
  end if

  do i=500,100,-32
     array_b(i) = array_a(i-5)
  end do
  if (array_b(404) .ne. 399) then
     print *,"9. NG",array_b(404)
  end if

  do i=500,100,-33
     array_b(i) = array_a(i-6)
  end do
  if (array_b(236) .ne. 230) then
     print *,"10. NG",array_b(236)
  end if
  print *,"end"
end subroutine sub

program main
  integer*8 i
  integer*8 array_a(5000), array_b(5000)
  do i=1,5000
     array_a(i) = i
  end do
  call sub(array_a, array_b)
end program main
