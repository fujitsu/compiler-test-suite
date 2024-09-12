module m01
structure /szzz/
 structure wq    
  structure wq
   character*1 dsg1
   character*1 dsg2(2)
  end structure
 end structure
end structure
 record/szzz/wq
end
module m02
use m01
end
print *,'pass'
end
