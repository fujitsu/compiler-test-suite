complex,parameter:: a=(1.0,2.0)
b=a%re
if (abs(b-1)>0.0001) print *,101
print *,'pass'
end
