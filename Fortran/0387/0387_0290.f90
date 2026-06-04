
interface
  subroutine   sub(x,y,z)
    integer :: x
    real    :: y
    character :: z
  end subroutine
end interface
procedure (sub), pointer :: p
  p => sub
  call  p(1,1.0,"a")
  call  p(x=1,y=1.0,z="a")
  call  p(1,1.0,z="a")
  call  p(1,y=1.0,z="a")
  call  p(y=1.0,z="a",x=1)
  call  p(z="a",x=1,y=1.0)
call test01()
 print *,'pass'
 end

  subroutine   sub(x,y,z)
    integer :: x
    real    :: y
    character :: z
    if (x.ne.1) print *,'fail'
    if (y.ne.1.0_4) print *,'fail'
    if (z.ne."a") print *,'fail'
  end subroutine   


subroutine test01()
interface
  subroutine   suba(x,y,z)
    optional :: x,y,z
    integer :: x
    real    :: y
    character :: z
  end subroutine
end interface
procedure (suba), pointer :: p
  p => suba
  call  p(1,1.0,"a")
  call  p(x=1,y=1.0,z="a")
  call  p(1,1.0,z="a")
  call  p(1,y=1.0,z="a")
  call  p(y=1.0,z="a",x=1)
  call  p(z="a",x=1,y=1.0)
  call  p(1,1.0)
  call  p(1)
  call  p()
  call  p(x=1,y=1.0)
  call  p(x=1)
  call  p(y=1.0)
  call  p(y=1.0,z="a")
  call  p(x=1,z="a")
  call  p(z="a")
  call  p(1,y=1.0)
  call  p(y=1.0,z="a")
  call  p(z="a",x=1)


end

  subroutine   suba(x,y,z)
    optional :: x,y,z
    integer :: x
    real    :: y
    character :: z
   if (present(x)) then
    if (x.ne.1) print *,'fail'
   endif
   if (present(y)) then
    if (y.ne.1.0_4) print *,'fail'
   endif
   if (present(z)) then
    if (z.ne."a") print *,'fail'
   endif
  end subroutine

