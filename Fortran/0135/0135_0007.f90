 module mod
    contains
    function mproc02(arg1) result(ret)
      integer :: arg1
      character(10),allocatable :: ret
      allocate(character(arg1):: ret)
      if (len(ret)/=10)print *,101
      ret = "3456789012"
    end function
 end module
 use mod
 if (len(mproc02(10))/=10)print *,103
 if (mproc02(10)/="3456789012")print *,104
print *,'pass'
 end
