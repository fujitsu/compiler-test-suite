call test01()
 print *,'pass'
 end

subroutine test01()
interface
  function   suba(x,y,z)
    optional :: x,y,z
    integer,pointer :: x
    real    :: y
    character :: z
  end function
end interface
procedure (suba), pointer :: p
integer :: call
  p => suba
  call = p(null(),1.0,"a")
  call = p(x=null(),y=1.0,z="a")
  call = p(null(),1.0,z="a")
  call = p(null(),y=1.0,z="a")
  call = p(y=1.0,z="a",x=null())
  call = p(z="a",x=null(),y=1.0)
  call = p(null(),1.0)
  call = p(null())
  call = p()
  call = p(x=null(),y=1.0)
  call = p(x=null())
  call = p(y=1.0)
  call = p(y=1.0,z="a")
  call = p(x=null(),z="a")
  call = p(z="a")
  call = p(null(),y=1.0)
  call = p(y=1.0,z="a")
  call = p(z="a",x=null())

end

  function   suba(x,y,z)
    optional :: x,y,z
    integer,pointer :: x
    real    :: y
    character :: z
   if (present(x)) then
   endif
   if (present(y)) then
    if (y.ne.1.0_4) print *,'fail'
   endif
   if (present(z)) then
    if (z.ne."a") print *,'fail'
   endif
   suba=1
  end function
