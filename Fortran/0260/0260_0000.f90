program main
        implicit none

        integer,parameter ::  b=8

        character(kind=1) :: a0='a' 
        INTEGER, PARAMETER :: bb=1

        TYPE(CHARACTER(len=10,kind=1)),dimension(100)          :: a1="hello 1"
        TYPE(CHARACTER(len=b, kind=bb))         :: a2
        CHARACTER(kind=1),dimension(5)    :: a3
        TYPE(CHARACTER(len=b, kind=bb))         :: a4
        TYPE(CHARACTER(len=16-4, kind=16-15))   :: a5
        
        if(kind(a0) /= kind(a1)) print*,101
        if(len(a0) /= 1) print*,102
        
        if(kind(a0) /= kind(a2)) print*,103
        if(kind(a0) /= kind(a3)) print*,104
        if(kind(a0) /= kind(a4)) print*,105
        if(kind(a0) /= kind(a5)) print*,106

print*,"pass"
end program main



