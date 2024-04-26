program main
        implicit none
interface 
    subroutine variable_declaration()
        integer,parameter :: val =8
        integer,parameter :: a=16, b=8

        complex(8) a0;

        type(complex(8))                :: a1
        type(complex(8))                :: a2(3)
        type(complex(8))                :: a3(2,2)
        type( complex)            :: a4

        type(complex*16)                :: a6
        type(complex(kind = val))       :: a7
        type(complex(kind=(12-4)))      :: a8
        type(complex(kind=(a-b)))       :: a9
        type(complex(12-4))             :: a10
        type(complex(a-8))              :: a11
        type(complex(16-b))             :: a12
        type(complex(2*4))              :: a13
        type(complex(((16)-(2*4))))     :: a14
     end subroutine
end interface    
        call variable_declaration

end   
     subroutine variable_declaration
        complex(8) a0;
        integer,parameter :: val =8
        integer,parameter :: a=16, b=8

        type(complex(8))                :: a1
        type(complex(8))                :: a2(3)
        type(complex(8))                :: a3(2,2)
        type(complex)            :: a4

        type(complex*16)                :: a6
        type(complex(kind = val))       :: a7
        type(complex(kind=(12-4)))      :: a8
        type(complex(kind=(a-b)))       :: a9
        type(complex(12-4))             :: a10
        type(complex(a-8))              :: a11
        type(complex(16-b))             :: a12
        type(complex(2*4))              :: a13
        type(complex(((16)-(2*4))))     :: a14

        if(kind(a0) /= kind(a1)) print*,101
        if(kind(a0) /= kind(a2)) print*,102
        if(kind(a0) /= kind(a3)) print*,103
        if(kind(a4) /= 4) print*,104

        if(kind(a0) /= kind(a6)) print*,106
        if(kind(a0) /= kind(a7)) print*,107
        if(kind(a0) /= kind(a8)) print*,108
        if(kind(a0) /= kind(a9)) print*,109
        if(kind(a0) /= kind(a10)) print*,110
        if(kind(a0) /= kind(a11)) print*,111
        if(kind(a0) /= kind(a12)) print*,112
        if(kind(a0) /= kind(a13)) print*,113
        if(kind(a0) /= kind(a13)) print*,114

                
        print*,"pass"
        end subroutine variable_declaration
        



