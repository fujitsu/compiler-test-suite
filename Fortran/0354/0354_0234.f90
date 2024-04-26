subroutine sub(array_a, array_b)
  integer*8 array_a(100), array_b(100), i
  do i=1,100
     array_b(i) = array_a(i)
  end do
  if (array_b(99) .ne. 99) then
     print *,"NG",array_b(99)
  end if
  print *,"end"
end subroutine sub

program main
  integer*8 array_a(100), array_b(100), i
  do i=1,100
     array_a(i) = i
  end do
  call sub(array_a, array_b)
end program main
