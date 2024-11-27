interface
recursive function ifun() result(i)
end function
end interface
i=1;i=i
if (.false.)i=ifun()
end
function ifun() result(i)
i=1
end function
