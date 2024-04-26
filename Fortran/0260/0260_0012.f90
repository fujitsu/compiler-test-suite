module m

                integer,parameter ::  b=8

                character(kind=1) :: a0
                INTEGER, PARAMETER :: bb=1

                TYPE(CHARACTER(len=10,kind=1))          :: a1="hello 1"
                TYPE(CHARACTER(len=b, kind=bb))         :: a2
                TYPE(CHARACTER(kind=1))                 :: a3
                TYPE(CHARACTER(len=b, kind=bb))       :: a4
                TYPE(CHARACTER(len=16-4, kind=16-15))   :: a5

                contains 

                subroutine variable_declare
                integer,parameter :: b=8

                character(kind=1) :: a0
                INTEGER, PARAMETER :: bb=1

                TYPE(CHARACTER(len=10,kind=1))          :: a1="hello 1"
                TYPE(CHARACTER(len=b, kind=bb)),parameter         ::a2="aaaaa"
                TYPE(CHARACTER(kind=1))                 :: a3
                TYPE(CHARACTER(len=b, kind=bb))       :: a4
                TYPE(CHARACTER(len=16-4, kind=16-15))   :: a5
                a1="0123456789"

                a3="aa"
                a4="asasasas"
                a5="dasddasdadadaas"
                if(kind(a0) /= kind(a1)) print*,101
                if(kind(a0) /= kind(a2)) print*,102
                if(kind(a0) /= kind(a3)) print*,103
                if(kind(a0) /= kind(a4)) print*,104
                if(kind(a0) /= kind(a5)) print*,105
                end subroutine variable_declare
end module

use m

        implicit none

        if(kind(a0) /= kind(a1)) print*,106
        if(kind(a0) /= kind(a2)) print*,107
        if(kind(a0) /= kind(a3)) print*,108
        if(kind(a0) /= kind(a4)) print*,109
        if(kind(a0) /= kind(a5)) print*,110

        call variable_declare
        print *,"Pass"
end 
