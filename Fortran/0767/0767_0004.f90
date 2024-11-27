module m1
 real:: value
end

module m2
 use m1
contains
 subroutine undef_ref
  write(1,*) value
 end subroutine
end

use m2,only: undef_ref
call undef_ref
print *,'pass'
end


