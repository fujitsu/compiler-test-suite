program main
        implicit none

        integer,parameter :: val =8
        integer,parameter :: a=16, b=8

        call variable_declaration
        
        contains
        subroutine variable_declaration
                real(kind=8) :: a0

                type(real(8))                :: a1
                type(real(kind=8))           :: a2
                type(real*8)                 :: a3
                type(real(kind = val))       :: a4
                type(real(kind=(12-4)))      :: a5
                type(real(kind=(a-b)))       :: a6
                type(real(12-4))             :: a7
                type(real(a-8))              :: a8
                type(real(16-b))             :: a9
                type(real(2*4))              :: a10
                type(real(((16)-(2*4))))     :: a11
                type(double precision)       :: a13

                TYPE(real(SELECTED_REAL_KIND(8, 3))) :: a14

                if(kind(a0) /= kind(a1)) print*,101
                if(kind(a0) /= kind(a2)) print*,102
                if(kind(a0) /= kind(a3)) print*,103
                if(kind(a0) /= kind(a4)) print*,104
                if(kind(a0) /= kind(a5)) print*,105
                if(kind(a0) /= kind(a6)) print*,106
                if(kind(a0) /= kind(a7)) print*,107
                if(kind(a0) /= kind(a8)) print*,108
                if(kind(a0) /= kind(a9)) print*,109
                if(kind(a0) /= kind(a10)) print*,1010
                if(kind(a0) /= kind(a11)) print*,1011 
                if(kind(a0) /= (kind(a13))) print*,1013 
                if(kind(a0) /= (kind(a14))) print*,1014 

                print*,"pass"
        end subroutine variable_declaration
        
end program main



