           real*8  a(200,10,10),b(200,10,10),c(200,10,10)
           n=10
           a=1
           b=2
           c=0
           do j=1,n
           do k=1,10

           do i=1,10
            c(i,j,k)=a(i,k,j)+b(i,j,k)
           enddo
           enddo
           enddo
           write(6,*) c(10,10,10)

           do j=1,n
           do k=1,10

           do i=1,18
            c(i,j,k)=a(i,k,j)+b(i,j,k)
           enddo
           enddo
           enddo
           write(6,*) c(18,10,10)

            do j=1,n
           do k=1,10

           do i=1,20
            c(i,j,k)=a(i,k,j)+b(i,j,k)
           enddo
           enddo
           enddo
           write(6,*) c(20,10,10)

          do j=1,n
           do k=1,10

           do i=1,30
            c(i,j,k)=a(i,k,j)+b(i,j,k)
           enddo
           enddo
           enddo
           write(6,*) c(30,10,10)
           end
