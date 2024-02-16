real x(10)
integer n
n=10
i=0
do concurrent(iii=1:n)
 do i=1,n
   x(iii) = i +iii
 enddo
 enddo

do concurrent(iii=1:n)
 do i=1,n
   x(iii) = i +iii
 enddo
 enddo
print *,'pass'
end




