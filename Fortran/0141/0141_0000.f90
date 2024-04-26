real x(10)
integer n
n=10
i=0
do concurrent(i=1:n)
 do iii=1,n
   x(iii) = i
 enddo
 enddo

do concurrent(i=1:n)
 do iii=1,n
   x(iii) = i
 enddo
 enddo
print *,'pass'
end




