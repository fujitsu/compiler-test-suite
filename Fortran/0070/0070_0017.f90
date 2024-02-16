subroutine s1(k,k2,k9)
integer::a(k),b(k)
a=[1,2,3,4,5,6,7,8,9,10]
b=a
a(k2:)=a(:k9)+2
b(k2:)=b(:k9)+2
if (any(a/=[1,3,4,5,6,7,8,9,10,11])) print *,101
if (any(b/=a)) print *,102
end
call s1(10,2,9)
print *,'pass'
end
