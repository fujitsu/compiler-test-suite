module m1
 integer::a,b
end
module m2
  use m1
  private::a
end
use m2
print *,'pass'
end
