subroutine s1
parameter (el=1.0d-10)
parameter (eh=1.0d07)
parameter(ee= log(el/eh))
e= log(el/eh)
if (abs( e - ee )> 0.00001 ) print *,101
end
call s1
print *,'pass'
end
