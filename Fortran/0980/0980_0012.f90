module mod
integer ,protected ,target :: i
end

use mod
pointer :: ip
ip=>i
end
