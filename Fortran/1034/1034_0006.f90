integer,parameter::a(2)=(/1,2/)
integer x(2)
data x/a(2)*3/
if (any(x/=3))print *,'error'
print *,'pass'
end
