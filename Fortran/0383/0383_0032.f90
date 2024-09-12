module mod01
  interface
    function exsub(iii)
      import
      type str
        procedure(ment01),nopass,pointer :: iii
      end type
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
