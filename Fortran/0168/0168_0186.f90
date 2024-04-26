       type ty1
          integer :: arr
       end type
       type ty2
          type(ty1),allocatable:: cmp
       end type
       type(ty2) :: str2 = ty2(NULL())
       type(ty2) :: str3 
       str3 = ty2(NULL())
       if (allocated(str2% cmp)) print *,101
       if (allocated(str3% cmp)) print *,102
       print *,'pass'
      end
