
module mod
implicit character(:) (a)
contains
subroutine aaa(aa)
external :: aa
call aa
end subroutine
end
use mod
implicit character(:) (a)
external ::ap
common k
call aaa(ap)
if (k/=10)print *,k
print *,"pass"
end
subroutine ap
common k
k=10
end


