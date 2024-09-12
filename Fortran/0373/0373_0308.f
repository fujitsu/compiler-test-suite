           real*8  a(10,10),b(10,10),c(10,10) , d/10.0/
           common /aaa/n
           do j=1,10
           do i=1,10
            a(i,j)=j
            b(i,j)=i
            c(i,j)=i*j
           enddo
           enddo
           do j=1,n
           do i=1,10
            a(i,j)=b(i,j)+c(i,j)
           enddo
           enddo
           write(6,*) a
           do j=1,n
           do i=1,10
            a(i,j)=b(i,j)+c(i,j)
           enddo
           enddo
           write(6,*) a
            do j=1,n
           do i=1,10
            a(i,j)=b(i,j)+c(i,j)
           enddo
           enddo
           write(6,*) a          
           do j=1,n
           do i=1,10
            a(i,j)=b(i,j)+c(i,j)
           enddo
           enddo
           write(6,*) a
           do j=1,n
           do i=1,10
            a(i,j)=b(i,j)+c(i,j)
           enddo
           enddo
           write(6,*) a
           do j=1,n
           do i=1,10
            a(i,j)=b(i,j)+c(i,j)
           enddo
           enddo
           write(6,*) a
           do j=1,n
           do i=1,10
            a(i,j)=b(i,j)+c(i,j)
           enddo
           enddo
           write(6,*) a
           do j=1,n
           do i=1,10
            a(i,j)=b(i,j)+c(i,j)
           enddo
           enddo
           write(6,*) a
           do j=1,n
           do i=1,10
            a(i,j)=b(i,j)+c(i,j)
           enddo
           enddo
           write(6,*) a
           do j=1,n
           do i=1,10
            a(i,j)=b(i,j)+c(i,j)
           enddo
           enddo
           write(6,*) a
           do j=1,n
           do i=1,10
            a(i,j)=b(i,j)+c(i,j)
           enddo
           enddo
           write(6,*) a
           do j=1,n
           do i=1,10
            a(i,j)=b(i,j)+c(i,j)
           enddo
           enddo
           write(6,*) a
           do j=1,n
           do i=1,10
            a(i,j)=b(i,j)+c(i,j)
           enddo
           enddo
           write(6,*) a
           do j=1,n
           do i=1,10
            a(i,j)=b(i,j)+c(i,j)
           enddo
           enddo
           write(6,*) a
           do j=1,n
           do i=1,10
            a(i,j)=b(i,j)+c(i,j)
           enddo
           enddo
           write(6,*) a
           do j=1,n
           do i=1,10
            a(i,j)=b(i,j)+c(i,j)
           enddo
           enddo
           write(6,*) a
           do j=1,n
           do i=1,10
            a(i,j)=b(i,j)+c(i,j)
           enddo
           enddo
           write(6,*) a
           end
           block data
           common /aaa/n
           data n/10/
           end
