module m1
contains
subroutine s(var)
       character(*), allocatable :: var
       allocate(character(*)::var)

if (var%len/=2) print *,101
end subroutine
      end
use m1
       character(2), allocatable :: var
call s(var)

      print *,'pass'
end
