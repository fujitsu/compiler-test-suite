           real*8 a1(64,10,10,10)
           common /aaa/n,n10,n64,n128,n2048
           do i=1,64
           do j=1,10
           do k=1,10
           do l=1,10
            a1(i,j,k,l)=i+j+k+l
           enddo
           enddo
           enddo
           enddo

           d=0.0d0

           do k=1,10
           do l=1,10
           do j=1,n-1
           do i=1,n10
            d=d+a1(i,j,k,l)+a1(i,j+1,k,l)
           enddo
           enddo
           enddo
           enddo
           write(6,*) d

           do j=1,10
           do l=1,10
           do k=1,n-1
           do i=1,n10
            d=d+a1(i,j,k,l)+a1(i,j,k+1,l)
           enddo
           enddo
           enddo
           enddo
           write(6,*) d

           do k=1,10
           do j=1,10
           do l=1,n-1
           do i=1,n10
            d=d+a1(i,j,k,l)+a1(i,j,k,l+1)
           enddo
           enddo
           enddo
           enddo
           write(6,*) d

           do k=1,10
           do j=1,n-1
           do i=1,n10
            d=d+a1(i+1,1,j,k)+a1(i+1,1,j+1,k)
           enddo
           enddo
           enddo
           write(6,*) d
         end
           block data
           common /aaa/n,n1,n2,n3,n4
           data n/10/,n1/10/,n2/64/,n3/128/,n4/2048/
           end
