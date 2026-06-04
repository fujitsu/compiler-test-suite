module mod01
  type :: str
    integer(kind=8) :: iii1
    integer(kind=8) :: iii2
    integer(kind=8) :: iii3
    integer(kind=8) :: iii4
  end type
end module

subroutine sub01(iii1,iii2,iii3,iii4,iii5,iii6,arg01)
  use mod01
  integer,value :: iii1,iii2,iii3,iii4,iii5,iii6
  type(str),value :: arg01
  if (arg01%iii1 .ne. 1) print *,'ng01'
  if (arg01%iii2 .ne. 2) print *,'ng02'
  if (arg01%iii3 .ne. 3) print *,'ng03'
  if (arg01%iii4 .ne. 4) print *,'ng04'
!$omp task 
  if (arg01%iii1 .ne. 1) print *,'ng05'
  if (arg01%iii2 .ne. 2) print *,'ng06'
  if (arg01%iii3 .ne. 3) print *,'ng07'
  if (arg01%iii4 .ne. 4) print *,'ng08'
!$omp end task
end subroutine

subroutine sub02(iii1,iii2,iii3,iii4,iii5,iii6,arg01)
  use mod01
  integer:: iii1,iii2,iii3,iii4,iii5,iii6
  type(str):: arg01
  if (arg01%iii1 .ne. 1) print *,'ng01'
  if (arg01%iii2 .ne. 2) print *,'ng02'
  if (arg01%iii3 .ne. 3) print *,'ng03'
  if (arg01%iii4 .ne. 4) print *,'ng04'
!$omp task 
  if (arg01%iii1 .ne. 1) print *,'ng05'
  if (arg01%iii2 .ne. 2) print *,'ng06'
  if (arg01%iii3 .ne. 3) print *,'ng07'
  if (arg01%iii4 .ne. 4) print *,'ng08'
!$omp end task
end subroutine

use mod01
interface
subroutine sub01(iii1,iii2,iii3,iii4,iii5,iii6,arg01)
  use mod01
  integer,value:: iii1,iii2,iii3,iii4,iii5,iii6
  type(str),value:: arg01
end subroutine
subroutine sub02(iii1,iii2,iii3,iii4,iii5,iii6,arg01)
  use mod01
  integer:: iii1,iii2,iii3,iii4,iii5,iii6
  type(str):: arg01
end subroutine
end interface
type(str) :: local=str(1,2,3,4)
call sub01(1,2,3,4,5,6,local)
call sub02(1,2,3,4,5,6,local)
print *,'ok'
end
