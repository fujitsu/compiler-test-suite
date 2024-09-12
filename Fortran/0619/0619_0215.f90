subroutine s1
real(int(real(dble(4.0d0)))),parameter::r=real(dble(1.0d0))
real(idint(real(dble(4.0d0),8))),parameter::d=real(dble(1.0d0))
if (abs(r-1)>.0001)print *,101
if (abs(d-1)>.0001)print *,101
end
call s1
print *,'pass'
end
