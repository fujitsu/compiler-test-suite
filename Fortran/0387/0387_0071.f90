real,    external :: real_function01
integer, external :: integer_function01

real              :: real_function02
integer           :: integer_function02
external          :: unknown_proc01, unknown_proc02, unknown_proc03, unknown_proc04, real_function02, real_function03, integer_function02, integer_function03
integer           :: integer_function03
real              :: real_function03

real              :: rr

call unknown_proc01()
rr = unknown_proc02()

print *,'pass'

contains
 subroutine csub1(dreal_function01, dreal_function02, dreal_function03, dinteger_function01, dinteger_function02, dinteger_function03, dunknown_proc01, dunknown_proc02, dunknown_proc03, dunknown_proc04)

 real,    external :: dreal_function01
 integer, external :: dinteger_function01

 real              :: dreal_function02
 integer           :: dinteger_function02
 external          :: dunknown_proc01, dunknown_proc02, dunknown_proc03, dunknown_proc04, dreal_function02, dreal_function03, dinteger_function02, dinteger_function03
 integer           :: dinteger_function03
 real              :: dreal_function03

 real              :: rr

 call dunknown_proc01()
 rr = dunknown_proc02()

 end subroutine
end

subroutine unknown_proc01()
end subroutine
function unknown_proc02() result(rst)
 rst = 0.0
end function
subroutine unknown_proc03()
end subroutine
function unknown_proc04() result(rst)
 rst = 0.0
end function

function real_function01() result(rst)
 rst = 1.0
end function
function real_function02() result(rst)
 rst = 2.0
end function
function real_function03() result(rst)
 rst = 3.0
end function

function integer_function01() result(rst)
 rst = 1
end function
function integer_function02() result(rst)
 rst = 1
end function
function integer_function03() result(rst)
 rst = 1
end function


subroutine dunknown_proc01()
end subroutine
function dunknown_proc02() result(rst)
 rst = 0.0
end function
subroutine dunknown_proc03()
end subroutine
function dunknown_proc04() result(rst)
 rst = 0.0
end function

function dreal_function01() result(rst)
 rst = 1.0
end function
function dreal_function02() result(rst)
 rst = 2.0
end function
function dreal_function03() result(rst)
 rst = 3.0
end function

function dinteger_function01() result(rst)
 rst = 1
end function
function dinteger_function02() result(rst)
 rst = 1
end function
function dinteger_function03() result(rst)
 rst = 1
end function
