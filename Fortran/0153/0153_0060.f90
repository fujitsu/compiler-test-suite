module m1
interface
   subroutine prc()
   end subroutine
   subroutine gnr(k)
   end subroutine
end interface
interface gnr
  procedure prc
end interface
end
use m1
call prc()
print *,'pass'
end

   subroutine prc()
   end subroutine
   subroutine gnr(k)
   k=k+1
   end subroutine
