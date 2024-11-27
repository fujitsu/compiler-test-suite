interface operator(.single.)
 function ifunc01(if01_arg01) result(irst01)
  interface
   function func01(f01_arg01) result(rst01)
    integer              :: f01_arg01
    character(f01_arg01) :: rst01
   end function
  end interface
  type ty01
   sequence
   procedure(func01), pointer, nopass :: pr_pn01
  end type
  type (ty01), intent(in) :: if01_arg01
  character               :: irst01
 end function
end interface
interface
 function func01(f01_arg01) result(rst01)
  integer              :: f01_arg01
  character(f01_arg01) :: rst01
 end function
end interface

type ty01
 sequence
 procedure(cfunc01), pointer, nopass :: pr_pn01
end type

type (ty01) :: t01

t01 = ty01(func01)

print *,.single.t01

contains
 function cfunc01(cf01_arg01) result(crst01)
  integer               :: cf01_arg01
  character(cf01_arg01) :: crst01
  crst01 = 'pass'
 end function
end

function func01(f01_arg01) result(rst01)
 integer              :: f01_arg01
 character(f01_arg01) :: rst01
 rst01 = 'pass'
end function

function ifunc01(if01_arg01) result(irst01)
 interface
  function func01(f01_arg01) result(rst01)
   integer              :: f01_arg01
   character(f01_arg01) :: rst01
  end function
 end interface
 type ty01
   sequence
  procedure(func01), pointer, nopass :: pr_pn01
 end type
 type (ty01), intent(in) :: if01_arg01
 character               :: irst01
 irst01 = if01_arg01%pr_pn01(4)
end function
