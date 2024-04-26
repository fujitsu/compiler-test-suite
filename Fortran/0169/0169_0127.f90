module m
  integer,parameter :: i=5,j=9
  private j
end

use m
integer:: j=20
if (i/=5 .or. j/=20) print *,101
print *,'pass'
end
