           real*8 a1(2048,20),d
           common /aaa/n,n10,n64,n128,n2048
           do i=1,2048
           do j=1,20
            a1(i,j)=i+j
           enddo
           enddo

           d=0.0d0

           do i=1,2048
           do j=1,10
            d=d+a1(i,j)+a1(i,j+1)
           enddo
           enddo
           write(6,*) d

           do i=1,2048
           do j=1,10
            d=d+a1(i,j)+a1(i,j+1)
           enddo
           enddo

           do i=1,2048
           do j=2,10
            d=d+a1(i,j)+a1(i,j-1)
           enddo
           enddo
           write(6,*) d
         end
           block data
           common /aaa/n,n1,n2,n3,n4
           data n/10/,n1/10/,n2/64/,n3/128/,n4/2048/
           end
