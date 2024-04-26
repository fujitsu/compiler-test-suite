PROGRAM MAIN
IMPLICIT NONE
integer  :: err
character(len=6) :: src
character(len=:), allocatable   :: ch
src='mold'
allocate(ch, mold=src, STAT = err)
if( err .EQ. 0 .AND. len(ch) .eq. 6) then
  print *,'pass'
else
  print *,102
ch='m'
endif 
END PROGRAM
