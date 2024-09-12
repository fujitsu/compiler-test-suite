module mod
  type ty0
     integer,allocatable :: ia
     integer :: ii(10)=1
  end type ty0
  type(ty0) ::str
end module mod

use mod

allocate(str%ia)
str%ia=0
print *,str%ia
print *,str%ii

end

