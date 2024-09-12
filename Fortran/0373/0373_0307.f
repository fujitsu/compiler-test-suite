           real*8  a(10,10),b(10,10),c(10,10) , d/10.0/
           do j=1,10
           do i=1,10
            a(i,j)=j
            b(i,j)=i
            c(i,j)=i*j
           enddo
           enddo

           do j=1,0,1
           do i=1,10
            a(i,j)=b(i,j)+c(i,j)
           enddo
           enddo
           write(6,*) a
           do j=1,2
           do i=1,10
            a(i,j)=b(i,j)+c(i,j)
           enddo
           enddo
           write(6,*) a
          
            do j=1,3
           do i=1,10
            a(i,j)=b(i,j)+c(i,j)
           enddo
           enddo
           write(6,*) a          

           do j=1,4
           do i=1,10
            a(i,j)=b(i,j)+c(i,j)
           enddo
           enddo
           write(6,*) a

           do j=1,5
           do i=1,10
            a(i,j)=b(i,j)+c(i,j)
           enddo
           enddo
           write(6,*) a

           do j=1,6
           do i=1,10
            a(i,j)=b(i,j)+c(i,j)
           enddo
           enddo
           write(6,*) a

           do j=1,7
           do i=1,10
            a(i,j)=b(i,j)+c(i,j)
           enddo
           enddo
           write(6,*) a

           do j=1,8
           do i=1,10
            a(i,j)=b(i,j)+c(i,j)
           enddo
           enddo
           write(6,*) a

           do j=1,9
           do i=1,10
            a(i,j)=b(i,j)+c(i,j)
           enddo
           enddo
           write(6,*) a

           do j=1,10
           do i=1,10
            a(i,j)=b(i,j)+c(i,j)
           enddo
           enddo
           write(6,*) a

           do j=2,1,-1
           do i=1,10
            a(i,j)=b(i,j)+c(i,j)
           enddo
           enddo
           write(6,*) a

           do j=1,2,2
           do i=1,10
            a(i,j)=b(i,j)+c(i,j)
           enddo
           enddo
           write(6,*) a

           do j=1,3,2
           do i=1,10
            a(i,j)=b(i,j)+c(i,j)
           enddo
           enddo
           write(6,*) a

           do j=3,1,-1
           do i=1,10
            a(i,j)=b(i,j)+c(i,j)
           enddo
           enddo
           write(6,*) a

           do j=6,1,-2
           do i=1,10
            a(i,j)=b(i,j)+c(i,j)
           enddo
           enddo
           write(6,*) a
           end
