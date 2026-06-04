interface
  subroutine sub(x,y,z)
    integer :: x
    real    :: y
    character :: z
  end subroutine
end interface
procedure (sub), pointer :: p
  p => sub
  call p(1,1.0,"a")
  call p(x=1,y=1.0,z="a")
  call p(1,1.0,z="a")
  call p(1,y=1.0,z="a")
  call p(y=1.0,z="a",x=1)
  call p(z="a",x=1,y=1.0)
 print *,'pass'
 end

  subroutine sub(x,y,z)
    integer :: x
    real    :: y
    character :: z
    if (x.ne.1) print *,'fail'
    if (y.ne.1.0_4) print *,'fail'
    if (z.ne."a") print *,'fail'
  end subroutine

