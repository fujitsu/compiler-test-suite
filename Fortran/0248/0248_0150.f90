PROGRAM MAIN
IMPLICIT NONE
integer  :: err
character :: src
character(len=:), pointer   :: ch
src='mold'
allocate(ch, mold=src, STAT = err)
if( err .EQ. 0 ) then
  print *,'pass'
else
  print *,102
  ch='m'
endif 
END PROGRAM
