module variable_declaration
                
                integer,parameter :: val =8
                integer,parameter :: a=16, b=8
               
                complex(8) a0;

                type(complex(8))                :: a1
                type(complex(8))                :: a2(3)
                type(complex(8))                :: a3(2,2)
                type(complex*16)                :: a6
                type(complex(kind = val))       :: a7
                type(complex(kind=(12-4)))      :: a8
                type(complex(kind=(a-b)))       :: a9
                type(complex(12-4))             :: a10
                type(complex(a-8))              :: a11
                type(complex(16-b))             :: a12
                type(complex(2*4))              :: a13
                type(complex(((16)-(2*4))))     :: a14

                contains 

                subroutine variable_declare

                integer,parameter :: val =8
                integer,parameter :: a=16, b=8

               complex(8) a0;

                type(complex(8))                :: a1
                type(complex(8))                :: a2(3)
                type(complex(8))                :: a3(2,2)
                type(complex*16)                :: a6
                type(complex(kind = val))       :: a7
                type(complex(kind=(12-4)))      :: a8
                type(complex(kind=(a-b)))       :: a9
                type(complex(12-4))             :: a10
                type(complex(a-8))              :: a11
                type(complex(16-b))             :: a12
                type(complex(2*4))              :: a13
                type(complex(((16)-(2*4))))     :: a14
                
                if(kind(a0) /= kind(a1)) print*,100
                if(kind(a0) /= kind(a2)) print*,101
                if(kind(a0) /= kind(a3)) print*,102

                if(kind(a0) /= kind(a6)) print*,105
                if(kind(a0) /= kind(a7)) print*,106
                if(kind(a0) /= kind(a8)) print*,107
                if(kind(a0) /= kind(a9)) print*,108
                if(kind(a0) /= kind(a10)) print*,109
                if(kind(a0) /= kind(a11)) print*,110
                if(kind(a0) /= kind(a12)) print*,111
                if(kind(a0) /= kind(a13)) print*,112
                if(kind(a0) /= kind(a14)) print*,113
 
                end subroutine variable_declare

end module variable_declaration

program main
use variable_declaration

        implicit none

        if(kind(a0) /= kind(a1)) print*,114
        if(kind(a0) /= kind(a2)) print*,115
        if(kind(a0) /= kind(a3)) print*,116

        if(kind(a0) /= kind(a6)) print*,118
        if(kind(a0) /= kind(a7)) print*,119
        if(kind(a0) /= kind(a8)) print*,120
        if(kind(a0) /= kind(a9)) print*,121
        if(kind(a0) /= kind(a10)) print*,122
        if(kind(a0) /= kind(a11)) print*,123
        if(kind(a0) /= kind(a12)) print*,124
        if(kind(a0) /= kind(a13)) print*,125
        if(kind(a0) /= kind(a14)) print*,126

        call variable_declare

        print*,"pass"
 
end program main



