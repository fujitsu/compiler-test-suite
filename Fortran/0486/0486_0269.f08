subroutine s1
parameter (aa= erfc(1.0) )
b=1.0
c=erfc( b )
a= erfc( 1.0 )
if (abs(aa- 0.157) > 0.001) print *,101
if (abs(c - 0.157) > 0.001) print *,102
if (abs(a - 0.157) > 0.001) print *,103
end
call s1
print *,'pass'
end
