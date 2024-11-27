elemental subroutine sub(i)
intent(in) :: i
integer j(i)
j=i
end subroutine

elemental function  isub(i)
intent(in) :: i
integer j(int(i))
ii=j(1)
isub=1
end

module mod
integer aaaa
contains 
elemental subroutine sub(i)
intent(in) :: i
integer j(bit_size(aaaa))
integer j1(bit_size(i))
integer j2(bit_size(int(i)))
end subroutine
end
use mod
end
