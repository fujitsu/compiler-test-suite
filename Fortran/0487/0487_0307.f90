module mod
integer::k=1
contains 
  subroutine s1
    call k
    contains
      subroutine k
      end
  end 
end

use mod
if (k/=1) print *,101
call s1
print *,'pass'
end
