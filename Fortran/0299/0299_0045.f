           real*8  a(200,100,100),b(200,100,100),c(200,100,100)
           n=10
           a=1
           b=2
           c=0

           do k=1,10
           do j=1,n
           do i=1,20
            c(i,j,k)=a(i,k,j)+b(i,j,k)
           enddo
           enddo
           enddo
           write(6,*) c(10,10,10)
           end
