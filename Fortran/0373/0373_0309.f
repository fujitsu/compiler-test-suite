           real*8  a(2048,10),b(2048,10),c(2048,10) , d/10.0/
           common /aaa/n
           do j=1,10
           do i=1,2048
            a(i,j)=j
            b(i,j)=i
            c(i,j)=i*j
           enddo
           enddo

           d=0.0d0
           do j=1,n
           do i=1,16
            d=d+a(i,j)+b(i,j)+c(i,j)
           enddo
           enddo
           write(6,*) d
           d=0.0d0
           do j=1,n
           do i=1,32
            d=d+a(i,j)+b(i,j)+c(i,j)
           enddo
           enddo
           write(6,*) d
           d=0.0d0
           do j=1,n
           do i=1,64
            d=d+a(i,j)+b(i,j)+c(i,j)
           enddo
           enddo
           write(6,*) d
           d=0.0d0
           do j=1,n
           do i=1,128
            d=d+a(i,j)+b(i,j)+c(i,j)
           enddo
           enddo
           write(6,*) d
           d=0.0d0
           do j=1,n
           do i=1,256
            d=d+a(i,j)+b(i,j)+c(i,j)
           enddo
           enddo
           write(6,*) d
           d=0.0d0
           do j=1,n
           do i=1,512
            d=d+a(i,j)+b(i,j)+c(i,j)
           enddo
           enddo
           write(6,*) d
           d=0.0d0
           do j=1,n
           do i=1,1024
            d=d+a(i,j)+b(i,j)+c(i,j)
           enddo
           enddo
           write(6,*) d

           d=0.0d0
           do j=1,n
           do i=1,2048
            d=d+a(i,j)+b(i,j)+c(i,j)
           enddo
           enddo
           write(6,*) d
           d=0.0d0
           do j=1,n
           do i=1,n
            d=d+a(i,j)+b(i,j)+c(i,j)
           enddo
           enddo
           write(6,*) d
           d=0.0d0
           do j=1,n
           do i=16,1,-1
            d=d+a(i,j)+b(i,j)+c(i,j)
           enddo
           enddo
           write(6,*) d
           d=0.0d0
           do j=1,n
           do i=2048,1,-1
            d=d+a(i,j)+b(i,j)+c(i,j)
           enddo
           enddo
           write(6,*) d
           d=0.0d0
           do j=1,n
           do i=1,256,10
            d=d+a(i,j)+b(i,j)+c(i,j)
           enddo
           enddo
           write(6,*) d
           d=0.0d0
           do j=1,n
           do i=1,16*10
            d=d+a(i,j)+b(i,j)+c(i,j)
           enddo
           enddo
           write(6,*) d
           end
           block data
           common /aaa/n
           data n/10/
           end
