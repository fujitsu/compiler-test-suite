module mod
bind(c) :: na
integer :: ii
end

use mod
ii=1
na=ii
na=na
print *,"pass" 
end
