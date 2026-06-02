use, intrinsic :: ieee_arithmetic
real,parameter::b=huge(1.0)
real,parameter::a=b*b
real,parameter::c=a
integer,parameter::d=exponent(c)
real,parameter::e=rrspacing(c)
real,parameter::f=fraction(c)
real,parameter::g=spacing(c)

if(d/=huge(0)) print *,'err1'
if(e==0.0) then
   goto 10
else if(ieee_is_nan(e) .neqv. ieee_is_nan(rrspacing(c))) then
   if (ieee_is_nan(e) .and. .not.ieee_is_nan(rrspacing(c))) then
     goto 10
   endif
   print *,'err2',e,ieee_is_nan(e)
   endif
10 if(ieee_class(f)==ieee_positive_inf) then
      goto 20
   else if(ieee_class(f)/=ieee_quiet_nan) then
      print *,'err3'
      endif
20    if(ieee_class(g)==ieee_positive_inf) then
         goto 30
      elseif(ieee_class(g)/=ieee_quiet_nan) then
         print *,'err4'
endif
30 if(d/=exponent(c)) print *,'err5'
if(e==rrspacing(c))then
goto 40
else if(ieee_is_nan(e).neqv. ieee_is_nan(rrspacing(c))) then
   if (ieee_is_nan(e) .and. .not.ieee_is_nan(rrspacing(c))) then
     goto 40
   endif
 print *,'err6'
endif
40 if(f==fraction(c)) then
goto 50
else if(ieee_is_nan(f) .neqv.ieee_is_nan(fraction(c))) then
   if (ieee_is_nan(f) .and. .not.ieee_is_nan(fraction(c))) then
     goto 50
   endif
print *,'err7'
endif
50 if(g==spacing(c))then
goto 60
else if(ieee_is_nan(g).neqv.ieee_is_nan(spacing(c))) then
   if (ieee_is_nan(g) .and. .not.ieee_is_nan(spacing(c))) then
     goto 60
   endif
 print *,'err8'
endif

60 print *,'pass'
end program
