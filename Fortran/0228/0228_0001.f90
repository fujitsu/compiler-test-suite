module m1
interface MPI_W
subroutine MPI_W(size, disp_unit, info, comm, &
      baseptr, win, ierror)
  integer(KIND=4), intent(in) :: size
  integer, intent(in) :: disp_unit
  integer, intent(in) :: info
  integer, intent(in) :: comm
  integer(KIND=4), intent(out) :: baseptr
  integer, intent(out) :: win
  integer, intent(out) :: ierror
end subroutine MPI_W
end interface
interface MPI_Q
subroutine MPI_Q(disp_unit, info, comm, &
      baseptr, win, ierror)
  integer, intent(in) :: disp_unit
  integer, intent(in) :: info
  integer, intent(in) :: comm
  integer(KIND=4), intent(out) :: baseptr
  integer, intent(out) :: win
  integer, intent(out) :: ierror
end subroutine MPI_Q
end interface
end
module m20
use m1
private
public::MPI_W
end
module m21
use m1
private
public::MPI_Q
end
module m30
use m20
use m21
private
public::MPI_W
end
module m31
use m20
use m21
private
public::MPI_Q
end
module m40
use m30
use m31
private
public::MPI_W
end
module m41
use m30
use m31
private
public::MPI_Q
end
use m40
use m41
print *,'pass'
end

