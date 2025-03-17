        integer,parameter::n=100
          integer::a(n),b(n,n)
a=1
b=1
        ii=1
        do j=1,n
          do i=1,n
            a(i) = a(i) + b(i,j)
          enddo
        enddo
print *,'pass'
        end

