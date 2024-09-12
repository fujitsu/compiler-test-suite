  integer,volatile:: e(4)=[1,2,3,4]
  call test (e(::2))
print *,'pass'

contains
  subroutine test(v)
    integer, asynchronous :: v(:)
    if (v(1)/=1) print *,101
    if (v(2)/=3) print *,102
  end subroutine
end
