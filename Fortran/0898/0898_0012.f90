  complex,pointer,volatile:: e(:)
  call test (e%re)

contains
  subroutine test(v)
    real, asynchronous,contiguous :: v(:)
    print*,v(1)
  end subroutine
end
