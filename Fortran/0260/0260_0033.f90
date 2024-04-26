program main
        implicit none

        integer,parameter :: val =8
        integer,parameter :: a=16, b=8

        call variable_declaration
        
        contains
        subroutine variable_declaration
                integer(kind=8) :: a0

                type(logical(8))                :: a1
                type(logical(kind=8))           :: a2
                type(logical*8)                 :: a3
                type(logical(kind = val))       :: a4
                type(logical(kind=(12-4)))      :: a5
                type(logical(kind=(a-b)))       :: a6
                type(logical(12-4))             :: a7
                type(logical(a-8))              :: a8
                type(logical(16-b))             :: a9
                type(logical(2*4))              :: a10
                type(logical(((16)-(2*4))))     :: a11
        
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
                
                print*,"pass"
        end subroutine variable_declaration
        
end program main



