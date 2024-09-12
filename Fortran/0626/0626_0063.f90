module m1
  type b0
     integer::x1
  end type
end 
module m2
  use m1,tb0=>b0
  type b0
     integer::y1
  end type
  type,extends(tb0)::e1
     type(b0)::e11
     integer::e12
  end type
end
module m3
use m2,ttb0=>tb0,te1=>e1
  type,extends(te1)::ex
     integer::f22
  end type
end
use m3
print *,'pass'
end
