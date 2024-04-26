module m
  integer ,allocatable :: q0(:)
end module m

module m4
  use m,only:q00=>q0
end module m4

program main
  use m
  allocate (q0(2))
  call sub2()
  if (any(q0 .ne. (/11,12/))) then
     print *,"NG",q0
  else
     print *,"OK"
  end if
end program main

recursive subroutine sub2()
  use m
  use m4
  q0=(/11,12/)
end subroutine sub2
