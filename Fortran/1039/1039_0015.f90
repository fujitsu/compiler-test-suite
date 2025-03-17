integer,parameter::n=5000
integer,parameter ::a(0:n)=0
integer           ::b(0:n)=a
integer           ::c(0:n)=a(0)
if (sum(a)/=0)print *,'error-1'
if (sum(b)/=0)print *,'error-2'
if (sum(c)/=0)print *,'error-3'
print *,'pass'
end
