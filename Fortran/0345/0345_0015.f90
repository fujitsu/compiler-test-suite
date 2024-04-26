module modb
contains
   recursive subroutine func(i)
     i=777
   end subroutine

   recursive subroutine xxxxxx(i)
   call func(i)
   end subroutine
end

subroutine xxxxxx(i)
call sssaa(i)
end

subroutine sssaa(i)
use modb
call xxxxxx(i)
end

call xxxxxx(i);if (i/=777) print *,'error';print *,'pass';end
