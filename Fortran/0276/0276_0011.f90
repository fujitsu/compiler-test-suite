 CHARACTER(len=4) :: x*80="test"
character(len=4),target :: tar*80="trgt"
 character(len=4) :: N1="fort"
WRITE (UNIT=x, FMT='(B)') N1
WRITE (UNIT=fun(), FMT='(B)') N1
if(tar .ne. x)print*,"101",fun()
print*,"Pass"
CONTAINS
function fun()
character(len=4),pointer :: fun*80
 fun=>tar
end function
END
