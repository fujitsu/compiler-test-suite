PROGRAM MAIN
IMPLICIT NONE
integer  :: err
character :: src
character(len=:), pointer   :: ch1,ch2
src='source'
allocate(ch1,ch2, source=src, STAT = err)
if(ch1.ne.'s')print*,101
if(ch2.ne.'s')print*,102
if(len(ch1).ne.1)print*,103
if(len(ch2).ne.1)print*,104
if(err.ne.0)print*,105
 print *,'pass'
END PROGRAM
