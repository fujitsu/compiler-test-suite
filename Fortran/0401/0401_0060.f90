module m 
  common /com/ a
end module m

use m
save /com/
common /com/ b
print *,'pass'
end
