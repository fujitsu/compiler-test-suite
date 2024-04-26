module modb
contains
   recursive subroutine func()
   end subroutine

   recursive subroutine xxxxxy
   return
   entry xxxxxx
   call func()
   end subroutine
end

subroutine xxxxxx
call sssaa()
end

subroutine sssaa()
use modb
call xxxxxx()
end

call xxxxxx;print *,'pass';end
