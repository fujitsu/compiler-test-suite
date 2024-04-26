integer,parameter::n1=index('abcd','c',.true.)
if (n1/=index('abcd','c',.true.)) print *,101
print *,'pass'
end

