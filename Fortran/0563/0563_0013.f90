PROGRAM MAIN
IMPLICIT NONE
integer  :: err
character(len=6) :: src
character(len=:), allocatable   :: ch1, ch2
src='source'
allocate(ch1,ch2, source=src, STAT = err)

if(ch1.ne.'source')print*,101
if(ch2.ne.'source')print*,102
if(len(ch1).ne.6)print*,103
if(len(ch2).ne.6)print*,104
if(err.ne.0)print*,105
 print *,'pass'
END PROGRAM
