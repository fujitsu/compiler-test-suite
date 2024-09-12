common /a/ i1,d
real(8)::d
integer(1)::i1
d=1.
if (d/=1) print *,101
write(1,*)mod(loc(d),8)
print *,'pass'
end
