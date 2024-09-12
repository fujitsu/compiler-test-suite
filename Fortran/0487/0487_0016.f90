integer:: a(2,3)
do 20 k=1,3
do 10 i=1,2
10  a(i,k)=i
20 end do
do 30 i=1,2
30  a(i,1)=i
print *,'pass'
end
