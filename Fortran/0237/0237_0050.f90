subroutine s0
integer  ::q2=kind(dprod(1.0,1.0))
real(8) :: d=dsin( dprod(1.0,1.0) )
if (q2/=8) print *,101
if (abs(d-0.8414709848078965_8)>0.00001)print *,103,d
end
call s0
print *,'pass'
end

