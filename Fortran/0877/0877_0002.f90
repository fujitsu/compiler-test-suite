interface
function ifun() result(sub)
pointer     :: sub
end function

end interface
call = ifun()
end
function ifun() result(sub)
end function
