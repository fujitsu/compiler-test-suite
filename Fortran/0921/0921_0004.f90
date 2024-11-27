call sub()
contains
subroutine sub()
integer,parameter :: ii(2) = [1,2]
integer :: arr(4)
integer :: jj(3)

data ((arr(ii+jj-1),integer::jj=1,2),ii(jj),integer::ii=1,2)/3,4,7,8,9,10/

end
end

