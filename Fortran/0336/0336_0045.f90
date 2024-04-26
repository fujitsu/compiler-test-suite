program main

  real(kind=8),dimension(1:8) :: a

  a = 1
  call sub(a)
  if (maxval(a) == 2) then
    print *,"OK"
  else
    print *,"NG"
  endif

end program

subroutine sub(a)
  real(kind=8),dimension(1:8) :: a,b

  b = 1
  a(1:8) = a(1:8) + b(1:8)
  
end subroutine
