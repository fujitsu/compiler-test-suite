           real*8  a(10,10),b(10,10),c(10,10) , d/10.0/
           do j=1,10
           do i=1,10
            a(i,j)=j
            b(i,j)=i
            c(i,j)=i*j
           enddo
           enddo

           do j=1,2,1
           do i=1,10
            a(i,j)=b(i,j)+c(i,j)
           enddo
           enddo
           write(6,*) a

           do j=1,2
           do i=1,10
            a(i,j)=b(i,j)+c(i,1)
           enddo
           enddo
           write(6,*) a

           do j=1,2,1
           do i=1,10
            if(j.gt.1) a(i,j)=b(i,j)+c(1,1)*d
           enddo
           enddo
           write(6,*) a

            do j=1,3
           do i=1,10
            a(i,j)=b(i,j)+c(i,j)
           enddo
           enddo
           write(6,*) a          

           do i=1,10
           do j=1,4
            a(i,j)=b(i,j)+c(i,1)
           enddo
           enddo
           write(6,*) a

           do j=1,5
           do i=1,10
            a(i,j)=b(i,j)+c(i,j)*c(i,j)
           enddo
           enddo
           write(6,*) a

           do j=1,6
           do i=1,10
            if(j.gt.3) a(i,j)=b(i,j)+c(i,j)/d
           enddo
           enddo
           write(6,*) a

           do j=1,7
           do i=1,10
            call sub1(a(i,j),b(i,j),c(i,j))
           enddo
           enddo
           write(6,*) a

            do j=1,7
           do i=1,10
            a(1,1)=a(1,1)+B(i,j)+c(i,1)
           enddo
           enddo
           write(6,*) a          

           do i=1,10
            call sub2(a(i,1),b(i,1),c(i,1))
           enddo
           write(6,*) a
           end
           subroutine sub1(a,b,c)
           real*8 a,b,c
            a=b+c
           return
           end
           subroutine sub2(a,b,c)
           real*8 a(10),b(10),c(10)
            a(1)=b(1)+c(1)
            a(2)=b(2)+c(2)
            a(3)=b(3)+c(3)
            a(4)=b(4)+c(4)
            a(5)=b(5)+c(5)
            a(6)=b(6)+c(6)
            a(7)=b(7)+c(7)
            a(8)=b(8)+c(8)
            a(9)=b(9)+c(9)
            a(10)=b(10)+c(10)
            a(1)=b(1)+c(1)
            a(2)=b(2)+c(2)
            a(3)=b(3)+c(3)
            a(4)=b(4)+c(4)
            a(5)=b(5)+c(5)
            a(6)=b(6)+c(6)
            a(7)=b(7)+c(7)
            a(8)=b(8)+c(8)
            a(9)=b(9)+c(9)
            a(10)=b(10)+c(10)
            a(1)=b(1)+c(1)
            a(2)=b(2)+c(2)
            a(3)=b(3)+c(3)
            a(4)=b(4)+c(4)
            a(5)=b(5)+c(5)
            a(6)=b(6)+c(6)
            a(7)=b(7)+c(7)
            a(8)=b(8)+c(8)
            a(9)=b(9)+c(9)
            a(10)=b(10)+c(10)
            a(1)=b(1)+c(1)
            a(2)=b(2)+c(2)
            a(3)=b(3)+c(3)
            a(4)=b(4)+c(4)
            a(5)=b(5)+c(5)
            a(6)=b(6)+c(6)
            a(7)=b(7)+c(7)
            a(8)=b(8)+c(8)
            a(9)=b(9)+c(9)
            a(10)=b(10)+c(10)
           return
           end          
