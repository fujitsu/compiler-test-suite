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
write(10,*) 2
call sub
  end subroutine
  subroutine suby
print *,202
   contains
   subroutine sub
write(10,*) 100
  end subroutine
  end subroutine
end

submodule(m:smod)ssmod
contains
  module subroutine su
write(10,*) 11
  end subroutine
  module subroutine sub
write(10,*) 1
  end subroutine
end

use m
call sub
call subx
rewind 10
read(10,*)k;if (k/=1) print *,101
read(10,*)k;if (k/=3) print *,102
    print *,'pass'
end
subroutine subx
write(10,*) 3
end
   subroutine sub
write(10,*) 100
  end subroutine
