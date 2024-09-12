real:: a(2)
do concurrent(k=1:2)
 a(k)=k
end do
if (any(a/=[1,2])) print *,101
print *,'pass'
end
