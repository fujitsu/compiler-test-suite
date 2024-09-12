module m 
  common /com/ a
end module m

use m
bind(c) /com/
common /com/ b
print *,'pass'
end
