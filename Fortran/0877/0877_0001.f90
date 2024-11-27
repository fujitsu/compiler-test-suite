interface
function ifun() result(sub)
allocatable :: sub
end function

end interface
call = ifun()
end
function ifun() result(sub)
end function
