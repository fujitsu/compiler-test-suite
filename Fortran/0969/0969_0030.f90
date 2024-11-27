interface
 subroutine isub01(is01_ds01)
  interface
   subroutine is01_is01(is01_is01_df01)
    interface
     function is01_is01_if01(is01_is01_if01_arg01) result(is01_is01_irst01)
      integer :: is01_is01_if01_arg01
      integer :: is01_is01_irst01
     end function
    end interface
    procedure(is01_is01_if01) :: is01_is01_df01
   end subroutine
  end interface
  procedure(is01_is01) :: is01_ds01
 end subroutine

 subroutine isub02(is02_ds01)
  interface
   subroutine is02_is01(is02_is01_df01)
    interface
     function is02_is01_if01(is02_is01_if01_arg01) result(is02_is01_irst01)
      logical :: is02_is01_if01_arg01
      integer :: is02_is01_drst01
     end function
    end interface
    procedure(is02_is01_if01) :: is02_is01_df01
   end subroutine
  end interface
  procedure(is02_is01) :: is02_ds01
 end subroutine
end interface

call csub01(isub01)

contains
 subroutine csub01(cs01_ds01)
  interface
   subroutine cs01_is01(cs01_is01_ds01)
    interface
     subroutine cs01_is01_is01(cs01_is01_is01_df01)
      interface
       function cs01_is01_is01_if01(cs01_is01_is01_if01_arg01) result(cs01_is01_is01_irst01)
        integer :: cs01_is01_is01_if01_arg01
        integer :: cs01_is01_is01_irst01
       end function
      end interface
      procedure(cs01_is01_is01_if01) :: cs01_is01_is01_df01
     end subroutine
    end interface
    procedure(cs01_is01_is01) :: cs01_is01_ds01
   end subroutine
   subroutine cs01_is02(cs01_is02_df01)
    interface
     function cs01_is02_if01(cs01_is02_if01_arg01) result(cs01_is02_drst01)
      integer :: cs01_is02_if01_arg01
      integer :: cs01_is02_drst01
     end function
    end interface
    procedure(cs01_is02_if01) :: cs01_is02_df01
   end subroutine
  end interface
  procedure(cs01_is01) :: cs01_ds01
  call cs01_ds01(cs01_is02)
 end subroutine

end


subroutine isub01(is01_ds01)
 interface
  subroutine is01_is01(is01_is01_df01)
   interface
    function is01_is01_if01(is01_is01_if01_arg01) result(is01_is01_irst01)
     integer :: is01_is01_if01_arg01
     integer :: is01_is01_irst01
    end function
   end interface
   procedure(is01_is01_if01) :: is01_is01_df01
  end subroutine
  function is01_if01(is01_if01_arg01) result(is01_irst01)
   integer :: is01_if01_arg01
   integer :: is01_irst01
  end function
 end interface
 procedure(is01_is01) :: is01_ds01
 call is01_ds01(is01_if01)
end subroutine

subroutine isub02(is02_ds01)
 interface
  subroutine is02_is01(is02_is01_df01)
   interface
    function is02_is01_if01(is02_is01_if01_arg01) result(is02_is01_irst01)
     logical :: is02_is01_if01_arg01
     integer :: is02_is01_drst01
    end function
   end interface
   procedure(is02_is01_if01) :: is02_is01_df01
  end subroutine
  function is02_if01(is02_if01_arg01) result(is02_irst01)
   logical :: is02_if01_arg01
   integer :: is02_irst01
  end function
 end interface
 procedure(is02_is01) :: is02_ds01
 call is02_ds01(is02_if01)
end subroutine

subroutine cs01_is02(cs01_is02_df01)
 interface
  function cs01_is02_if01(cs01_is02_if01_arg01) result(cs01_is02_drst01)
   integer :: cs01_is02_if01_arg01
   integer :: cs01_is02_drst01
  end function
 end interface
 procedure(cs01_is02_if01) :: cs01_is02_df01
 if (cs01_is02_df01(2).eq.2) print *,'pass'
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
