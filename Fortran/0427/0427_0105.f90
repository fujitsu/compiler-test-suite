      module m
type ty1
integer iii
      procedure(logical),nopass,pointer::aaa
end type
type (ty1) ::sss
contains
function aaaa()
logical aaa
end function
      end module
      function aaa1() result(a)
      a=1
      end function
      function aaa() result(a)
      use m
      a=1
      end function
      print *,'pass'
      end
