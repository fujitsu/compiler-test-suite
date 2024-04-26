program main
  integer :: a(100) = 1
  integer :: b(100) = 2
  integer res, c
  res = 0
  do c = 1, 100
     if (a(c) .ne. b(c)) then 
        res = res + c
     endif
  end do

  if ( res .eq. 5050 ) then
     print *, "OK"
  else
     print *, "NG", res
  endif
end program main
