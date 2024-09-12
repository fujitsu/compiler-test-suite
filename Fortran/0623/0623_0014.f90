print *,'pass'

end

function func01() result(rst)
 type :: ty01
  sequence
  procedure(func01), pointer, nopass :: pr_pn01
 end type
 type (ty01) :: rst, func02
 rst = func02()
end function

function func02() result(rst)
 type :: ty01
  sequence
  procedure(func02), pointer, nopass :: pr_pn01
 end type
 type (ty01) :: rst, func01
 rst = func01()
end function
