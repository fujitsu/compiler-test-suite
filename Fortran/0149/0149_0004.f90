program main
  block
  end block
  print *,'pass'
  contains
    function f()
      integer :: f
      block
      end block
      f = 0
    end function f
    subroutine s()
      block
      end block
    end subroutine s
end

function f()
  integer :: f
  block
  end block
  f = 0
end

subroutine s()
  block
  end block
end subroutine s
