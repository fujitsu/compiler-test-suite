interface operator(.single.)
 function ifunc01(if01_arg01) result(irst01)
  interface
   function func01() result(rst01)
    character(4) :: rst01
   end function
  end interface
  type ty01
   sequence
   procedure(func01), pointer, nopass :: pr_pn01
  end type
  type (ty01), intent(in) :: if01_arg01
  character(4)            :: irst01
 end function
end interface
interface
 function func01() result(rst01)
  character(4) :: rst01
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
 function cfunc01() result(crst01)
  character(4) :: crst01
  crst01 = 'pass'
 end function
end

function func01() result(rst01)
 character(4) :: rst01
 rst01 = 'pass'
end function

function ifunc01(if01_arg01) result(irst01)
 interface
  function func01() result(rst01)
   character(4) :: rst01
  end function
 end interface
 type ty01
   sequence
  procedure(func01), pointer, nopass :: pr_pn01
 end type
 type (ty01), intent(in) :: if01_arg01
 character(4)            :: irst01
 irst01 = if01_arg01%pr_pn01()
end function
