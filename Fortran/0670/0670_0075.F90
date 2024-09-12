#define sizeof(X) size(transfer(X, (/1_ik1/)))
  integer, parameter :: ik1 = selected_int_kind(2)

  type test_str
     integer :: n_total
     integer :: n_core
     integer :: n_int
  end type test_str
  type(test_str) :: st

  if (sizeof(st)/=12)print *,'error'
if (selected_int_kind(2)/=1)print *,'error-2'
print *,'pass'

  stop
  end
