module m
 logical :: sub1_called=.false.
 logical :: sub2_called=.false.
contains
 subroutine sub1
  sub1_called = .true.
 end subroutine
 subroutine sub2
  sub2_called = .true.
 end subroutine
end

use m
call sub1
if (.not. sub1_called .or. sub2_called) print *,101
sub1_called = .false.
call sub2
if (.not. sub2_called .or. sub1_called) print *,102
print *,'pass'
end
