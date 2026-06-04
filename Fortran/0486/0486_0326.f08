subroutine s1
parameter (aa= erfc_scaled(10.0) )
b=10.0
c=erfc_scaled( b )
a= erfc_scaled( 10.0 )
if (abs(aa- 0.05614) > 0.001) print *,101
if (abs(c - 0.05614) > 0.001) print *,102
if (abs(a - 0.05614) > 0.001) print *,103
end
call s1
print *,'pass'
end
