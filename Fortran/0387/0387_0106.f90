module mod01
 interface ifunc
  function ifunc01(difunc01) result(irst01)
    interface
     function difunc01() result(dirst01)
      character(1) :: dirst01
     end function
    end interface
   procedure(character(1)), pointer :: irst01
  end function
  function ifunc02(difunc01, difunc02) result(irst02)
   interface
    function difunc01() result(dirst01)
     character(1) :: dirst01
    end function
    function difunc02() result(dirst02)
     character(2) :: dirst02
    end function
   end interface
   procedure(character(2)), pointer :: irst02
  end function
  function ifunc03(difunc01, difunc02, difunc03) result(irst03)
   interface
    function difunc01() result(dirst01)
     character(1) :: dirst01
    end function
    function difunc02() result(dirst02)
     character(2) :: dirst02
    end function
    function difunc03() result(dirst03)
     character(3) :: dirst03
    end function
   end interface
   procedure(character(3)), pointer :: irst03
  end function
  function ifunc04() result(irst04)
   interface
    function difunc04() result(dirst04)
     character(4) :: dirst04
    end function
   end interface
   procedure(character(4)), pointer :: irst04
  end function
 end interface
end module

use mod01

procedure(character(4)), pointer :: pprocp01

pprocp01 => ifunc()

print *,pprocp01()

end

function ifunc01(difunc01) result(irst01)
 interface
  function difunc01() result(dirst01)
   character(1) :: dirst01
  end function
 end interface
 procedure(character(1)), pointer :: irst01
 irst01 => difunc01
end function

function ifunc02(difunc01, difunc02) result(irst02)
 interface
  function difunc01() result(dirst01)
   character(1) :: dirst01
  end function
  function difunc02() result(dirst02)
   character(2) :: dirst02
  end function
 end interface
 procedure(character(2)), pointer :: irst02
 irst02 => difunc02
end function

function ifunc03(difunc01, difunc02, difunc03) result(irst03)
 interface
  function difunc01() result(dirst01)
   character(1) :: dirst01
  end function
  function difunc02() result(dirst02)
   character(2) :: dirst02
  end function
  function difunc03() result(dirst03)
   character(3) :: dirst03
  end function
 end interface
 procedure(character(3)), pointer :: irst03
 irst03 => difunc03
end function

function ifunc04() result(irst04)
 interface
  function difunc04() result(dirst04)
   character(4) :: dirst04
  end function
 end interface
 procedure(character(4)), pointer :: irst04
 irst04 => difunc04
end function

function difunc01() result(dirst01)
 character(1) :: dirst01
 dirst01 = 'A'
end function

function difunc02() result(dirst02)
 character(2) :: dirst02
 dirst02 = 'ok'
end function

function difunc03() result(dirst03)
 character(3) :: dirst03
 dirst03 = 'err'
end function

function difunc04() result(dirst04)
 character(4) :: dirst04
 dirst04 = 'pass'
end function
