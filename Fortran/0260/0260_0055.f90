module m
procedure(type(integer))::psi
procedure(type(integer)) pint1
procedure(type(integer))::pint2
procedure(type(integer*8)) pint3
procedure(type(integer*8))::pint4
procedure(type(integer(8))) pint5
procedure(type(integer(8)))::pint6
procedure(type(integer(kind=8))) pint8
end module

use m
type(integer) :: xx
type(integer(8)) :: yy
type(integer)  y1
type(integer)::y2
type(integer*8) y3
type(integer*8)::y4
type(integer(8)) y5
type(integer(8))::y6
type(integer(kind=8)) y8
yy=fun()
xx=psi()
y1 = pint1()
y2 = pint2()
y3 = pint3()
y4 = pint4()
y5 = pint5()
y6 = pint6()
y8 = pint8()
if(kind(xx) /=4) print *,101
if(kind(yy) /=8) print *,102
if(xx /=100) print *,103
if(yy /=199) print *,104
if(y1 /= 11) print *,101,y1
if(kind(y1) /= 4) print *,102,kind(y1)
if(y2 /= 11) print *,103,y2
if(kind(y2) /= 4) print *,104,kind(y2)
if(y3 /= 11) print *,105
if(kind(y3) /= 8) print *,106
if(y4 /= 11) print *,107
if(kind(y4) /= 8) print *,108
if(y4 /= 11) print *,109
if(kind(y4) /= 8) print *,110
if(y5 /= 11) print *,111
if(kind(y5) /= 8) print *,112
if(y6 /= 11) print *,113
if(kind(y6) /= 8) print *,114
if(y8 /= 11) print *,115
if(kind(y8) /= 8) print *,116,kind(y8)

print *,"pass"
contains
        type(integer(8)) function fun()
        procedure(type(integer)) :: psi
        type(integer(8))::ch=199
        fun=ch
        end function
end        
        type(integer) function psi()
         psi=100
        end function

        type(integer(kind=4)) function pint1()
            pint1=11
        end function

        type(integer(kind=4)) function pint2()
            pint2=11
        end function

        type(integer(kind=8)) function pint3()
            pint3=11
        end function

        type(integer(kind=8)) function pint4()
            pint4=11
        end function

        type(integer(kind=8)) function pint5()
            pint5=11
        end function

        type(integer(kind=8)) function pint6()
            pint6=11
        end function

        type(integer(kind=8)) function pint8()
            pint8=11
        end function
