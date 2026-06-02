
interface
  function   sub(x,y,z)
    integer :: x
    real    :: y
    character :: z
  end function
end interface
procedure (sub), pointer :: p
integer :: call
  p => sub
  call = p(1,2.0,"a")
  call = p(x=1,y=2.0,z="a")
  call = p(1,2.0,z="a")
  call = p(1,y=2.0,z="a")
  call = p(y=2.0,z="a",x=1)
  call = p(z="a",x=1,y=2.0)
call test01()
 print *,'pass'
 end

  function   sub(x,y,z)
    integer :: x
    real    :: y
    character :: z
    if (x.ne.1) print *,'fail'
    if (y.ne.2.0_4) print *,'fail'
    if (z.ne."a") print *,'fail'
    sub=1
  end function   


subroutine test01()
interface
  function   suba(x,y,z)
    optional :: x,y,z
    integer :: x(1)
    real    :: y(1)
    character :: z
  end function
end interface
procedure (suba), pointer :: p
integer :: call
  p => suba
  call = suba((/1/),(/1.0/),"a")
  call = p((/1/),(/1.0/),"a")
  call = p(x=(/1/),y=(/1.0/),z="a")
  call = p((/1/),(/1.0/),z="a")
  call = p((/1/),y=(/1.0/),z="a")
  call = p(y=(/1.0/),z="a",x=(/1/))
  call = p(z="a",x=(/1/),y=(/1.0/))
  call = p((/1/),(/1.0/))
  call = p((/1/))
  call = p()
  call = p(x=(/1/),y=(/1.0/))
  call = p(x=(/1/))
  call = p(y=(/1.0/))
  call = p(y=(/1.0/),z="a")
  call = p(x=(/1/),z="a")
  call = p(z="a")
  call = p((/1/),y=(/1.0/))
  call = p(y=(/1.0/),z="a")
  call = p(z="a",x=(/1/))

  call = p(z="a",x=(/1/))
  call = p(z="a",y=(/1.0/))
  call = p(x=(/1/),y=(/1.0/))
  call = p(z="a")
  call = p(z="a",x=(/1/))
  call = p(z="a",y=(/1.0/))
  call = p(z="a",x=(/1/),y=(/1.0/))
  call = p(x=(/1/),z="a",y=(/1.0/))
  call = p(y=(/1.0/),z="a",x=(/1/))
  call = p(z="a",x=(/1/),y=(/1.0/))
  call = suba(z="a",x=(/1/),y=(/1.0/))
  call = p(z="a",x=(/1/),y=(/1.0/))
  call = p(z="a",x=(/1/),y=(/1.0/))
  call = suba(z="a",x=(/1/),y=(/1.0/))
  call = p(z="a",x=(/1,1/),y=(/1.0/))
  call = suba(z="a",x=(/1,1/),y=(/1.0/))

end

  function   suba(x,y,z)
    optional :: x,y,z
    integer :: x(1)
    real    :: y(1)
    character :: z
   if (present(x)) then
    if (x(1).ne.1) print *,'fail'
   endif
   if (present(y)) then
    if (y(1).ne.1.0_4) print *,'fail'
   endif
   if (present(z)) then
    if (z.ne."a") print *,'fail'
   endif
   suba=1
  end function

