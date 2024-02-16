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
write(1,*) 2
call sub
  end subroutine
  subroutine suby
print *,202
   contains
   subroutine sub
write(1,*) 100
  end subroutine
  end subroutine
end

submodule(m:smod)ssmod
contains
  module subroutine su
write(1,*) 11
  end subroutine
  module subroutine sub
write(1,*) 1
  end subroutine
end

use m
call sub
call subx
rewind 1
read(1,*)k;if (k/=1) print *,101
read(1,*)k;if (k/=3) print *,102
    print *,'pass'
end
subroutine subx
write(1,*) 3
end
   subroutine sub
write(1,*) 100
  end subroutine
