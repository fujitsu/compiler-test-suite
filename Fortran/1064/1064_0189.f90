MODULE mod1
    IMPLICIT NONE
    TYPE ty0
    INTEGER :: ii = 10
    CONTAINS
         FINAL::dest
    END TYPE

CONTAINS
    function ff()
    character(4) :: ff
    write(1,*) 202
    block
        type(ty0) :: obj1
        write(1,*) 302
        ff='pass'
    end block
    end function

    SUBROUTINE dest(dmy)
    type(ty0) :: dmy
    write(1,*) '1 ', dmy
    END SUBROUTINE
END MODULE

use mod1
character(4) :: ch
ch=ff()
rewind 1
read(1,*) k
if (k/=202) print *,1001
read(1,*) k
if (k/=302) print *,1002
read(1,*) k1,k2
if (k1/=1) print *,1011
if (k2/=10) print *,1012
print*,'pass'

End
