real,parameter::aa=-1,bb=-1,cc=sign(aa,bb)
a=-1.0
b=-1.0
if (sign( a , b)/=a) print *,101
if (cc          /=a) print *,102
print *,'pass'
end
