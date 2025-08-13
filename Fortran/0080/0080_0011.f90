module m
 interface
   module subroutine sub
   end subroutine
   module subroutine su
   end subroutine
   module subroutine ww
   end subroutine
 end interface
end

submodule(m)smod
contains
  subroutine subx
write(11,*) 2
call sub
  end subroutine
  subroutine suby
print *,202
   contains
   subroutine sub
write(11,*) 100
  end subroutine
  end subroutine
  module subroutine ww
write(11,*) 5
call sub
   contains
   subroutine sub
write(11,*) 6
  end subroutine
  end subroutine
end

submodule(m:smod)ssmod
contains
  module subroutine su
write(11,*) 11
  end subroutine
  module subroutine sub
write(11,*) 1
  end subroutine
end

use m
call ww
call sub
call subx
rewind 11
read(11,*)k;if (k/=5) print *,111
read(11,*)k;if (k/=6) print *,121
read(11,*)k;if (k/=1) print *,101
read(11,*)k;if (k/=3) print *,102
    print *,'pass'
end
subroutine subx
write(11,*) 3
end
   subroutine sub
write(11,*) 100
  end subroutine
