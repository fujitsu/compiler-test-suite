integer:: a(2)=0
do concurrent( k=1:2)
  a(k)=a(k)+1
end do

do concurrent(integer(8):: k=1:2)
  a(k)=a(k)+1
end do
if (any(a/=2)) print *,101
print *,'pass'
end
