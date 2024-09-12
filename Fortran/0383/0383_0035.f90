module mod01
  interface
    function exsub(iii)
      import
      procedure(ment01) :: iii
    end function
  end interface
  contains
  function xfunc01() result(ret)
    entry ment01() result(ret)
  end function
end module
use mod01
print *,'pass'
end
