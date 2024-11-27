interface
 subroutine isub01(is01_ds01)
  interface
   subroutine is01_ds01(is01_ds01_df01)
    interface
     function is01_ds01_df01(is01_ds01_df01_arg01) result(is01_ds01_drst01)
      integer :: is01_ds01_df01_arg01
      integer :: is01_ds01_drst01
     end function
    end interface
   end subroutine
  end interface
 end subroutine
 subroutine isub02(is02_ds01)
  interface
   subroutine is02_ds01(is02_ds01_df01)
    interface
     function is02_ds01_df01(is02_ds01_df01_arg01) result(is02_ds01_drst01)
      logical :: is02_ds01_df01_arg01
      integer :: is02_ds01_drst01
     end function
    end interface
   end subroutine
  end interface
 end subroutine
end interface

call csub01(isub01)

contains
 subroutine csub01(cs01_ds01)
  interface
   subroutine cs01_ds01(cs01_ds01_ds01)
    interface
     subroutine cs01_ds01_ds01(cs01_ds01_ds01_df01)
      interface
       function cs01_ds01_ds01_df01(cs01_ds01_ds01_df01_arg01) result(cs01_ds01_ds01_drst01)
        integer :: cs01_ds01_ds01_df01_arg01
        integer :: cs01_ds01_ds01_drst01
       end function
      end interface
     end subroutine
    end interface
   end subroutine
   subroutine cs01_is01(cs01_is01_df01)
    interface
     function cs01_is01_df01(cs01_is01_df01_arg01) result(cs01_is01_drst01)
      integer :: cs01_is01_df01_arg01
      integer :: cs01_is01_drst01
     end function
    end interface
   end subroutine
  end interface
  call cs01_ds01(cs01_is01)

 end subroutine

end

subroutine isub01(is01_ds01)
 interface
  subroutine is01_ds01(is01_ds01_df01)
   interface
    function is01_ds01_df01(is01_ds01_df01_arg01) result(is01_ds01_drst01)
     integer :: is01_ds01_df01_arg01
     integer :: is01_ds01_drst01
    end function
   end interface
  end subroutine
  function is01_if01(is01_if01_arg01) result(is01_irst01)
   integer :: is01_if01_arg01
   integer :: is01_irst01
  end function
 end interface
 call is01_ds01(is01_if01)
end subroutine

subroutine isub02(is02_ds01)
 interface
  subroutine is02_ds01(is02_ds01_df01)
   interface
    function is02_ds01_df01(is02_ds01_df01_arg01) result(is02_ds01_drst01)
     logical :: is02_ds01_df01_arg01
     integer :: is02_ds01_drst01
    end function
   end interface
  end subroutine
  function is02_if01(is02_if01_arg01) result(is02_irst01)
   logical :: is02_if01_arg01
   integer :: is02_irst01
  end function
 end interface
 call is02_ds01(is02_if01)
end subroutine

subroutine cs01_is01(cs01_is01_df01)
 interface
  function cs01_is01_df01(cs01_is01_df01_arg01) result(cs01_is01_drst01)
   integer :: cs01_is01_df01_arg01
   integer :: cs01_is01_drst01
  end function
 end interface
 if (cs01_is01_df01(2).eq.2) print *,'pass'
end subroutine

function is01_if01(is01_if01_arg01) result(is01_irst01)
 integer :: is01_if01_arg01
 integer :: is01_irst01
 is01_irst01 = is01_if01_arg01 + is01_if01_arg01 - is01_if01_arg01 * is01_if01_arg01 / is01_if01_arg01
end function

function is02_if01(is02_if01_arg01) result(is02_irst01)
 logical :: is02_if01_arg01
 integer :: is02_irst01
 integer :: ii_01
 ii_01 = 2
 if (is02_if01_arg01) ii_01 = ii_01 * ii_01
 is02_irst01 = ii_01
end function
