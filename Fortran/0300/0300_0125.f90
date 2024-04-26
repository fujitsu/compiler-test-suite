module mod
contains
function fun(ii) result(ians)
ians=ifun(ii)
return
contains
function ifun(ii) result(ians)
ians=ii
end function
end function
end

use mod
write(6,*) 'ok'
end
