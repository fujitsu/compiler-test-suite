subroutine s1(a1,a2,b1,b2)
real:: a1,a2
complex:: b1,b2
a1=a1+a2
a1=a1-a2
a1=a1*a2
a1=a1/a2
b1=b1+b2
b1=b1-b2
b1=b1*b2
b1=b1/b2
k=2
a1=2.**k
a1=a2**k
a1=a2**5
end
real:: a1=1,a2=2
complex:: b1=1,b2=2
call s1(a1,a2,b1,b2)
print *,'pass'
end
