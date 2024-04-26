call s
print *,'pass'
end
subroutine s
real :: freezing_point, conv_factor
parameter (freezing_point = 32.0, conv_factor = 9./5.)
if(freezing_point.ne.32.0) print *,'err'
if(abs(conv_factor-1.79999995)>=0.01) print *,'err2'
end
