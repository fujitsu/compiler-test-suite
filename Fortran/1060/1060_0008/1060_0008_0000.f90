interface
subroutine sub(r, i)
real*4 r
integer*4,value:: i
end subroutine
subroutine ent(i, r)
real*4 r
integer*4,value:: i
end subroutine
end interface

  call sub(2.0, %val(1))
  call ent(%val(2), 1.0)
  
  print *,'PASS'

end program
