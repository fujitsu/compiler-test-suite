subroutine sub(xx)
  integer xx
  if (xx .eq. 2) then
     stop
  end if

end subroutine sub

program main
  call sub (0)
  print *, "OK"
  call sub (1)
  print *, "OK"
  call sub (2)
  print *, "NG"
  call sub (3)
  print *, "NG"
end program main
