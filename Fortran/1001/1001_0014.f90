interface
function ifun() result(i)
integer :: i(10)
end function
end interface
integer i(10)
i=1;i=i
if (.false.)i=ifun()
end
function ifun() result(i)
integer :: i
i=1
end function
