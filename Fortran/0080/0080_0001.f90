module m
 interface
   module subroutine sub
   end subroutine
 end interface
end

submodule(m)smod
contains
  subroutine subx
write(2,*) 2
call sub
  end subroutine
end

submodule(m:smod)ssmod
contains
  module subroutine sub
write(2,*) 1
  end subroutine
end

use m
call sub
call subx
rewind 2
read(2,*)k;if (k/=1) print *,101
read(2,*)k;if (k/=3) print *,102
    print *,'pass'
end
subroutine subx
write(2,*) 3
end
