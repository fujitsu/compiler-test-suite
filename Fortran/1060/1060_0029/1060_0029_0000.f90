interface
subroutine sub(i)
integer*4,value:: i
end subroutine
end interface

  call sub(1)
  
  print *,'PASS'

end program
