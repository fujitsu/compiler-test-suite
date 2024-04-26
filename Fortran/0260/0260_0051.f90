module variable_declaration
                
                integer,parameter :: val =8
                integer,parameter :: a=16, b=8
                
                integer(kind=8) :: a0

                type(integer(8))                :: a1
                type(integer(kind=8))           :: a2
                type(integer*8)                 :: a3
                type(integer(kind = val))       :: a4
                type(integer(kind=(12-4)))      :: a5
                type(integer(kind=(a-b)))       :: a6
                type(integer(12-4))             :: a7
                type(integer(a-8))              :: a8
                type(integer(16-b))             :: a9
                type(integer(2*4))              :: a10
                type(integer(((16)-(2*4))))     :: a11        
                contains 

                subroutine variable_declare

                integer,parameter :: val =8
                integer,parameter :: a=16, b=8

                integer(kind=8) :: a0

                type(integer(8))                :: a1
                type(integer(kind=8))           :: a2
                type(integer*8)                 :: a3
                type(integer(kind = val))       :: a4
                type(integer(kind=(12-4)))      :: a5
                type(integer(kind=(a-b)))       :: a6
                type(integer(12-4))             :: a7
                type(integer(a-8))              :: a8
                type(integer(16-b))             :: a9
                type(integer(2*4))              :: a10
                type(integer(((16)-(2*4))))     :: a11   
                
                if(kind(a0) /= kind(a1)) print*,"101"
                if(kind(a0) /= kind(a2)) print*,"102"
                if(kind(a0) /= kind(a3)) print*,"103"
                if(kind(a0) /= kind(a4)) print*,"104"
                if(kind(a0) /= kind(a5)) print*,"105"
                if(kind(a0) /= kind(a6)) print*,"106"
                if(kind(a0) /= kind(a7)) print*,"107"
                if(kind(a0) /= kind(a8)) print*,"108"
                if(kind(a0) /= kind(a9)) print*,"109"
                if(kind(a0) /= kind(a10)) print*,"1010"
                if(kind(a0) /= kind(a11)) print*,"1011"
                end subroutine variable_declare

end module variable_declaration

program main
use variable_declaration

        implicit none

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

        call variable_declare

        print*,"pass"
 
end program main



