subroutine s1
if ( maskl( 31 ) /= -2) print *,101
if ( maskr( 2 )  /= 3) print *,102 
if (leadz( -1 )/= 0) print *,103
if (leadz(  0 )/=32) print *,104
if (leadz(  1 )/=31) print *,105

if (dshiftr( 1 , 16 , 3) /= 536870914) print *,106
if (dshiftl( 1 , x'40000000', 2) /= 5) print *,107

if (blt(-1 , 1 )) print *,108
if (ble(-1 , 1 )) print *,109
if (.not.bgt(-1 , 1 )) print *,110
if (.not.bge(-1 , 1 )) print *,111

if (abs(atanh(0.76)-0.9962150)>0.00001) print *,112
if (abs(asinh(0.1 )-9.9834077E-02)>0.00001E-2) print *,113
if (abs(acosh(1.5 )-0.9624236)>0.00001) print *,114
end
call s1
print *,'pass'
end


