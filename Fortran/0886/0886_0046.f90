
  call test (av())
  contains
  subroutine test(v)
     integer, asynchronous,contiguous :: v(:)
  end subroutine 

  function av()
   integer, asynchronous,pointer :: av(:)
   allocate(av(5))
   av=2
  end function
end 

