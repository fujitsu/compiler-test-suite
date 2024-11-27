module mod
integer ,protected,pointer :: i
end
use mod
integer ,pointer :: ip
ip=>i
print *,"pass"
end
