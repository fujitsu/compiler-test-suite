subroutine s1
integer(2),parameter::i2=int(10.0,4)
integer(2)::k21,k22
a=10.0
k21=int(10.0,4)
k22=int(a,4)
if (i2/=10)print *,101
if (k21/=10)print *,102
if (k22/=10)print *,103
end
call s1
print *,'pass'
end
