interface
 subroutine isub01a(dsub01)
  interface
   subroutine dsub01()
   end subroutine
  end interface
 end subroutine
 subroutine isub01b(dsub01)
  interface
   subroutine isub01()
   end subroutine
  end interface
  procedure(isub01) :: dsub01
 end subroutine
 subroutine isub02a(dfunc01)
  interface
   function dfunc01() result(drst01)
    integer :: drst01
   end function
  end interface
 end subroutine
 subroutine isub02b(dfunc01)
  interface
   function ifunc01() result(irst01)
    integer :: irst01
   end function
  end interface
  procedure(ifunc01) :: dfunc01
 end subroutine
 subroutine isub03a(dfunc02)
  interface
   function dfunc02(df02_arg01) result(drst02)
    integer :: df02_arg01
    integer :: drst02
   end function
  end interface
 end subroutine
 subroutine isub03b(dfunc02)
  interface
   function ifunc02(if02_arg01) result(irst02)
    integer :: if02_arg01
    integer :: irst02
   end function
  end interface
  procedure(ifunc02) :: dfunc02
 end subroutine
 subroutine isub04a(dfunc03)
  interface
   function dfunc03(df03_arg01) result(drst03)
    type ty01
     sequence
     integer :: i01
    end type
    type(ty01) :: df03_arg01
    integer :: drst03
   end function
  end interface
 end subroutine
 subroutine isub04b(dfunc03)
  interface
   function ifunc03(if03_arg01) result(irst03)
    type ty01
     sequence
     integer :: i01
    end type
    type(ty01) :: if03_arg01
    integer :: irst03
   end function
  end interface
  procedure(ifunc03) :: dfunc03
 end subroutine
 subroutine isub05a(dfunc04)
  interface
   function dfunc04(df04_arg01) result(drst04)
    type ty01
     sequence
     integer :: i01
    end type
    integer    :: df04_arg01
    type(ty01) :: drst04
   end function
  end interface
 end subroutine
 subroutine isub05b(dfunc04)
  interface
   function ifunc04(if04_arg01) result(irst04)
    type ty01
     sequence
     integer :: i01
    end type
    integer    :: if04_arg01
    type(ty01) :: irst04
   end function
  end interface
  procedure(ifunc04) :: dfunc04
 end subroutine
 subroutine isub06a(dfunc05)
  interface
   function dfunc05(df05_arg01) result(drst05)
    type ty01
     sequence
     procedure(integer), pointer, nopass :: i01
    end type
    type(ty01) :: df05_arg01
    integer :: drst05
   end function
  end interface
 end subroutine
 subroutine isub06b(dfunc05)
  interface
   function ifunc05(if05_arg01) result(irst05)
    type ty01
     sequence
     procedure(integer), pointer, nopass :: i01
    end type
    type(ty01) :: if05_arg01
    integer :: irst05
   end function
  end interface
  procedure(ifunc05) :: dfunc05
 end subroutine
 subroutine isub07a(dfunc06)
  interface
   function dfunc06(df06_arg01) result(drst06)
    type ty01
     sequence
     procedure(integer), pointer, nopass :: i01
    end type
    integer    :: df06_arg01
    type(ty01) :: drst06
   end function
  end interface
 end subroutine
 subroutine isub07b(dfunc06)
  interface
   function ifunc06(if06_arg01) result(irst06)
    type ty01
     sequence
     procedure(integer), pointer, nopass :: i01
    end type
    integer    :: if06_arg01
    type(ty01) :: irst06
   end function
  end interface
  procedure(ifunc06) :: dfunc06
 end subroutine

 subroutine isub08a(dfunc07)
  interface
   function dfunc07(df07_arg01) result(drst07)
    interface
     function df07_ifunc01() result(df07_irst01)
      integer :: df07_irst01
     end function
    end interface
    type ty01
     sequence
     procedure(df07_ifunc01), pointer, nopass :: i01
    end type
    type(ty01) :: df07_arg01
    integer :: drst07
   end function
  end interface
 end subroutine
 subroutine isub08b(dfunc07)
  interface
   function ifunc07(if07_arg01) result(irst07)
    interface
     function if07_ifunc01() result(if07_irst01)
      integer :: if07_irst01
     end function
    end interface
    type ty01
     sequence
     procedure(if07_ifunc01), pointer, nopass :: i01
    end type
    type(ty01) :: if07_arg01
    integer :: irst07
   end function
  end interface
  procedure(ifunc07) :: dfunc07
 end subroutine
 subroutine isub09a(dfunc08)
  interface
   function dfunc08(df08_arg01) result(drst08)
    interface
     function df08_ifunc01() result(df08_irst01)
      integer :: df08_irst01
     end function
    end interface
    type ty01
     sequence
     procedure(df08_ifunc01), pointer, nopass :: i01
    end type
    integer    :: df08_arg01
    type(ty01) :: drst08
   end function
  end interface
 end subroutine
 subroutine isub09b(dfunc08)
  interface
   function ifunc08(if08_arg01) result(irst08)
    interface
     function if08_ifunc01() result(if08_irst01)
      integer :: if08_irst01
     end function
    end interface
    type ty01
     sequence
     procedure(if08_ifunc01), pointer, nopass :: i01
    end type
    integer    :: if08_arg01
    type(ty01) :: irst08
   end function
  end interface
  procedure(ifunc08) :: dfunc08
 end subroutine
end interface

end

subroutine isub01a(dsub01)
 interface
  subroutine dsub01(ds01_arg01)
   integer :: ds01_arg01
  end subroutine
 end interface
end subroutine

subroutine isub01b(dsub01)
 interface
  subroutine isub01(is01_arg01)
   integer :: is01_arg01
  end subroutine
 end interface
 procedure(isub01) :: dsub01
end subroutine

subroutine isub02a(dfunc01)
 interface
  function dfunc01(df01_arg01) result(drst01)
   integer :: df01_arg01
   integer :: drst01
  end function
 end interface
end subroutine

subroutine isub02b(dfunc01)
 interface
  function ifunc01(if01_arg01) result(irst01)
   integer :: if01_arg01
   integer :: irst01
  end function
 end interface
 procedure(ifunc01) :: dfunc01
end subroutine

subroutine isub03a(dfunc02)
 interface
  function dfunc02(df02_arg01) result(drst02)
   logical :: df02_arg01
   integer :: drst02
  end function
 end interface
end subroutine

subroutine isub03b(dfunc02)
 interface
  function ifunc02(if02_arg01) result(irst02)
   logical :: if02_arg01
   integer :: irst02
  end function
 end interface
 procedure(ifunc02) :: dfunc02
end subroutine

subroutine isub04a(dfunc03)
 interface
  function dfunc03(df03_arg01) result(drst03)
   type ty01
    sequence
    logical :: i01
   end type
   type(ty01) :: df03_arg01
   integer :: drst03
  end function
 end interface
end subroutine

subroutine isub04b(dfunc03)
 interface
  function ifunc03(if03_arg01) result(irst03)
   type ty01
    sequence
    logical :: i01
   end type
   type(ty01) :: if03_arg01
   integer :: irst03
  end function
 end interface
 procedure(ifunc03) :: dfunc03
end subroutine

subroutine isub05a(dfunc04)
 interface
  function dfunc04(df04_arg01) result(drst04)
   type ty01
    sequence
    logical :: i01
   end type
   logical    :: df04_arg01
   type(ty01) :: drst04
  end function
 end interface
end subroutine

subroutine isub05b(dfunc04)
 interface
  function ifunc04(if04_arg01) result(irst04)
   type ty01
    sequence
    integer :: i01
   end type
   logical    :: if04_arg01
   type(ty01) :: irst04
  end function
 end interface
 procedure(ifunc04) :: dfunc04
end subroutine

subroutine isub06a(dfunc05)
 interface
  function dfunc05(df05_arg01) result(drst05)
   type ty01
    sequence
    procedure(logical), pointer, nopass :: i01
   end type
   type(ty01) :: df05_arg01
   integer :: drst05
  end function
 end interface
end subroutine

subroutine isub06b(dfunc05)
 interface
  function ifunc05(if05_arg01) result(irst05)
   type ty01
    sequence
    procedure(logical), pointer, nopass :: i01
   end type
   type(ty01) :: if05_arg01
   integer :: irst05
  end function
 end interface
 procedure(ifunc05) :: dfunc05
end subroutine

subroutine isub07a(dfunc06)
 interface
  function dfunc06(df06_arg01) result(drst06)
   type ty01
    sequence
    procedure(logical), pointer, nopass :: i01
   end type
   integer    :: df06_arg01
   type(ty01) :: drst06
  end function
 end interface
end subroutine

subroutine isub07b(dfunc06)
 interface
  function ifunc06(if06_arg01) result(irst06)
   type ty01
    sequence
    procedure(logical), pointer, nopass :: i01
   end type
   integer    :: if06_arg01
   type(ty01) :: irst06
  end function
 end interface
 procedure(ifunc06) :: dfunc06
end subroutine

subroutine isub08a(dfunc07)
 interface
  function dfunc07(df07_arg01) result(drst07)
   interface
    function df07_ifunc01(df07_if01_arg01) result(df07_irst01)
     integer :: df07_if01_arg01
     integer :: df07_irst01
    end function
   end interface
   type ty01
    sequence
    procedure(df07_ifunc01), pointer, nopass :: i01
   end type
   type(ty01) :: df07_arg01
   integer :: drst07
  end function
 end interface
end subroutine

subroutine isub08b(dfunc07)
 interface
  function ifunc07(if07_arg01) result(irst07)
   interface
    function if07_ifunc01(if07_if01_arg01) result(if07_irst01)
     integer :: if07_if01_arg01
     integer :: if07_irst01
    end function
   end interface
   type ty01
    sequence
    procedure(if07_ifunc01), pointer, nopass :: i01
   end type
   type(ty01) :: if07_arg01
   integer :: irst07
  end function
 end interface
 procedure(ifunc07) :: dfunc07
end subroutine

subroutine isub09a(dfunc08)
 interface
  function dfunc08(df08_arg01) result(drst08)
   interface
    function df08_ifunc01(df08_if01_arg01) result(df08_irst01)
     integer :: df08_if01_arg01
     integer :: df08_irst01
    end function
   end interface
   type ty01
   sequence
    procedure(df08_ifunc01), pointer, nopass :: i01
   end type
   integer    :: df08_arg01
   type(ty01) :: drst08
  end function
 end interface
end subroutine

subroutine isub09b(dfunc08)
 interface
  function ifunc08(if08_arg01) result(irst08)
   interface
    function if08_ifunc01(if08_if01_arg01) result(if08_irst01)
     integer :: if08_if01_arg01
     integer :: if08_irst01
    end function
   end interface
   type ty01
    sequence
    procedure(if08_ifunc01), pointer, nopass :: i01
   end type
   integer    :: if08_arg01
   type(ty01) :: irst08
  end function
 end interface
 procedure(ifunc08) :: dfunc08
end subroutine
