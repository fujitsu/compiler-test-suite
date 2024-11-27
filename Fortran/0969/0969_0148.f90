interface
 subroutine isub01(is01_df01)
  interface
   function ifunc01(if01_ds01) result(irst01)
    interface
     subroutine if01_ds01(if01_ds01_arg01)
      integer :: if01_ds01_arg01
     end subroutine
    end interface
    integer :: irst01
   end function
  end interface
  procedure(ifunc01) :: is01_df01
 end subroutine
 function ifunc01(if01_ds01) result(irst01)
  interface
   subroutine if01_ds01(if01_ds01_arg01)
    integer :: if01_ds01_arg01
   end subroutine
  end interface
  integer :: irst01
 end function
end interface

call csub01(ifunc01)

contains

 subroutine csub01(cs01_df01)
  procedure(cfunc01) :: cs01_df01
 end subroutine

 function cfunc01(cf01_ds01) result(crst01)
  interface
   subroutine cf01_ds01(cf01_ds01_arg01)
    integer :: cf01_ds01_arg01
   end subroutine
  end interface
  integer :: crst01
  call cf01_ds01(crst01)
 end function

end



subroutine isub01(is01_df01)
 interface
  function ifunc01(if01_ds01) result(irst01)
   interface
    subroutine if01_ds01(if01_ds01_arg01)
     integer :: if01_ds01_arg01
    end subroutine
   end interface
   integer :: irst01
  end function
 end interface
 procedure(ifunc01) :: is01_df01
end subroutine

function ifunc01(if01_ds01) result(irst01)
 interface
  subroutine if01_ds01(if01_ds01_arg01)
   integer :: if01_ds01_arg01
  end subroutine
 end interface
 integer :: irst01
 call if01_ds01(irst01)
end function
