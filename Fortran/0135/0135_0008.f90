 module mod
    contains
    function mp(arg1) result(ret)
      integer :: arg1
      character(2),pointer :: ret
      if ((arg1)/=10)print *,100
      allocate(ret)
      if (len(ret)/=2)print *,101
      ret = "34"
    end function
    function ma(arg1) result(ret)
      integer :: arg1
      character(2),allocatable :: ret
      if ((arg1)/=10)print *,200
      allocate(ret)
      if (len(ret)/=2)print *,102
      ret = "52"
    end function
    function mb(arg1) result(ret)
      integer :: arg1
      character(2),allocatable :: ret(:)
      if ((arg1)/=10)print *,200
      allocate(ret(2))
      if (len(ret)/=2)print *,102
      ret = "51"
    end function
 end module
 use mod
 if (mp(10)/="34")print *,103
 if (any(mb(10)/="51"))print *,104
 if (ma(10)/="52")print *,105
print *,'pass'
 end
