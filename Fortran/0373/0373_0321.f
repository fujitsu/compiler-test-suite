           real*8 a1(20,20,20),d,a2(20,20,20)
           common /aaa/n,n10,n64,n128,n2048
           do i=1,20
           do k=1,20
           do j=1,20
            a1(i,j,k)=i+j+k
           enddo
           enddo
           enddo

           d=0.0d0

           do k=1,10
           do j=1,10
           do i=1,20
            d=d+a1(i,j,k)+a1(i,j,k+1)
           enddo
           enddo
           enddo
           write(6,*) d

           do k=1,10
           do j=1,10
           do i=2,20
            d=d+a1(i,j,k)+a1(i,j,k+1)
           enddo
           enddo
           enddo
           write(6,*) d

           do k=1,10
           do j=1,10
           do i=2,20
            a2(i,j,k)=a1(i,j,k)+a1(i,j,k+1)
           enddo
           enddo
           enddo
           do k=1,10
           do j=1,10
           do i=2,20
            d=d+a2(i,j,k)
           enddo
           enddo
           enddo
           write(6,*) d
         end
           block data
           common /aaa/n,n1,n2,n3,n4
           data n/10/,n1/10/,n2/64/,n3/128/,n4/2048/
           end
