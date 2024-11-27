           real*8  a(2048,10),b(2048,10),c(2048,10) , d/10.0/
           common //n
           call sub2()
           do j=1,10
           do i=1,2048
            a(i,j)=j
            b(i,j)=i
            c(i,j)=i*j
           enddo
           enddo

           d=0.0d0
           do j=1,n
           do i=1,256
            d=d+a(i,j)+b(i,j)+c(i,j)
           enddo
           enddo
           call sub(d)

           d=0.0d0

           do j=1,n
           do i=1,512
            d=d+a(i,j)+b(i,j)+c(i,j)
           enddo
           enddo
           write(6,*) d

           end

           subroutine sub(d)
           real*8 d
           return
           end

           subroutine sub2()
           common //n
           n=10
           end
