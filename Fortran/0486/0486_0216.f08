       INTEGER,PARAMETER::QKIND=SELECTED_REAL_KIND( 33, 20)
       PARAMETER(ONE=1.0E+00_QKIND , TOL=1.0E-17_QKIND)
       PARAMETER(ONEx=1.0E+00_16 , TOLx=1.0E-17_16)

if     (kind(1.0E+00_QKIND)/=16) print *,201
if (kind(1.0E-17_QKIND)/=16) print *,202

if (kind(ONE)/=4) print *,301
if (kind(TOL)/=4) print *,401
write(1,*)ONE,TOL
print *,'pass'
end
