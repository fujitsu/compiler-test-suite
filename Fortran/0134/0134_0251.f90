subroutine s
parameter (k=int(1))
intrinsic int
if (k/=1)print *,101
if (int(2)/=2)print *,102
end
call s
print *,'pass'
end
