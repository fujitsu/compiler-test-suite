module m
  integer,save,bind(c) :: i
end 

use m
print *,'pass'
end
