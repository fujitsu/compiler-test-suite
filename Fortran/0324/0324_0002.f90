interface
function test05()
volatile test05
end function
function test07()
volatile test07
end function
function test06()
end function
function ok01()
end function
end interface
call = test01()
call = test05()
call = test06()
call = test07()
call = test08()
call = ok01()
call =call
print *,'pass'
contains
function test08()
volatile test08
test08 =1
end function
end
function test01()
volatile test01
test01 =1
end function

function test05()
volatile test05
test05 =1
end function

function ok01()
ok01 =1
end function

function test06()
volatile test06
test06 =1
end function

function test07()
test07 =1
end function
