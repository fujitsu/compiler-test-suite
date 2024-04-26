program main

  real(kind=8),dimension(1:8,1:10,4:9) :: a

  a = 1
  call sub(a)
  if (minval(a)==2) then
    print *,"OK"
  else
    print *,"NG"
  endif

end program

subroutine sub(a)
  real(kind=8),dimension(1:8,1:10,4:9) :: a,b

  b = 1
  a(1:8,:,4:9) = a(1:8,:,4:9) + b(1:8,1:10,4:9)
  
end subroutine
