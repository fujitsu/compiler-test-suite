character(len=2,kind=1),dimension(2:1)::a
a=reshape(['lm','ef','jk','ab'],[0])
if (maxval(a)/=char(0)//char(0))print *,101
if (len(minval(a))/=2)print *,102
print *,'pass'
end
