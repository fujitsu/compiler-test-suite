module m
 interface
   module subroutine sub
   end subroutine
   module subroutine su
   end subroutine
 end interface
end

submodule(m)smod
contains
  subroutine subx
write(9,*) 2
call sub
  end subroutine
  subroutine suby
print *,202
  end subroutine
  module subroutine sub
write(9,*) 1
  end subroutine
end

submodule(m:smod)ssmod
contains
  module subroutine su
write(9,*) 1
  end subroutine
end

use m
call sub
call subx
rewind 9
read(9,*)k;if (k/=1) print *,101
read(9,*)k;if (k/=3) print *,102
    print *,'pass'
end
subroutine subx
write(9,*) 3
end
