integer:: a(10,10)
i=1
a(1:10,i:10)=i
if (any(a/=1)) print *,101
print *,'pass'
end
