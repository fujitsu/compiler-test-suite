character(len=2,kind=1),parameter,dimension(2:1)::a &
 =reshape(['lm','ef','jk','ab'],[0])
character(len=2,kind=1),parameter::b &
 =  minval(a)
if (b(1:1)/=char(255))print *,101
if (b(2:2)/=char(255))print *,102
if (len(minval(a))/=2)print *,103
print *,'pass'
end
