interface
function ifun() result(iii)
procedure(integer),pointer :: iii
end function
end interface
procedure(integer),pointer :: iii
iii=>ifun()
j=iii()
if (j.ne.1) print *,'fail'
print *,"pass"
end

function ifun() result(iii)
interface
function ext() result(eee)
integer :: eee
end function
end interface
procedure(integer),pointer :: iii
iii=>ext
end function

function ext() result(eee)
integer :: eee
eee=1
end function
