program main
  i=2
  call square(i)
  j=2
  call quad(j)
  if ( i == 4 .and. j == 16) then
     print *, "pass"
  else
     print *, "ng"
  endif 
end program main

subroutine quad(k)
  k=k*k
entry square(k)
  k=k*k
  return
end subroutine quad
