module m
  integer,private :: a(101,102,103,9)
end

submodule(m)smod
end

use m
print *,shape(a)
end
