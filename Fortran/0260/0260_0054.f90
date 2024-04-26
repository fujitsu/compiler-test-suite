interface
  type(real(kind=8)) function psi()
  
  end function
end interface
call xxx(psi)
contains
subroutine xxx(psi)
    procedure(type(real(kind=8))) :: psi
    procedure(type(real)) pint1
    procedure(type(real))::pint2
    procedure(type(real*8)) pint3
    procedure(type(real*8))::pint4
    procedure(type(real(8))) pint5
    procedure(type(real(8)))::pint6
    procedure(type(real(kind=8))) pint8
    type(real(kind=8))::  yy1
    type(real)  y1
    type(real)::y2
    type(real*8) y3
    type(real*8)::y4
    type(real(8)) y5
    type(real(8))::y6
    type(real(kind=8)) y8
    
    yy1 = psi()
    y1 = pint1()
    y2 = pint2()
    y3 = pint3()
    y4 = pint4()
    y5 = pint5()
    y6 = pint6()
    y8 = pint8()
    if(yy1 /= 11.111) print *,1011
    if(kind(yy1) /= 8) print *,1012
    if(y1 /= 11.111) print *,101,y1
    if(kind(y1) /= 4) print *,102,kind(y1)
    if(y2 /= 11.111) print *,103,y2
    if(kind(y2) /= 4) print *,104,kind(y2)
    if(y3 /= 11.111) print *,105
    if(kind(y3) /= 8) print *,106
    if(y4 /= 11.111) print *,107
    if(kind(y4) /= 8) print *,108
    if(y4 /= 11.111) print *,109
    if(kind(y4) /= 8) print *,110
    if(y5 /= 11.111) print *,111
    if(kind(y5) /= 8) print *,112
    if(y6 /= 11.111) print *,113
    if(kind(y6) /= 8) print *,114
    if(y8 /= 11.111) print *,115
    if(kind(y8) /= 8) print *,116

    print *,"Pass"    
end subroutine

end
type(real(kind=8)) function psi()
    psi=11.111
end function

type(real(kind=4)) function pint1()
    pint1=11.111
end function

type(real(kind=4)) function pint2()
    pint2=11.111
end function

type(real(kind=8)) function pint3()
    pint3=11.111
end function

type(real(kind=8)) function pint4()
    pint4=11.111
end function

type(real(kind=8)) function pint5()
    pint5=11.111
end function

type(real(kind=8)) function pint6()
    pint6=11.111
end function

type(real(kind=8)) function pint8()
    pint8=11.111
end function

