           real*8 a1(64,20),d
           common /aaa/n,n10,n64,n128,n2048
           do i=1,64
           do j=1,20
            a1(i,j)=i+j
           enddo
           enddo

           d=0.0d0

           do j=1,n
           do i=1,n10
            d=d+a1(i,j)+1.0d0
           a1(i,j+1)=i
           enddo
           enddo
           write(6,*) d

           do j=1,n
           do i=1,n10
            a1(i,j+1)=i
            d=d+a1(i,j)+1.0d0
           enddo
           enddo
           write(6,*) d

           do j=1,n
           do i=1,n10
            a1(i,j+1)=i
            a1(i,j+2)=j
            d=d+a1(i,j)+1.0d0
           enddo
           enddo
           write(6,*) d

           do j=2,n
           do i=2,n10
            a1(i,j+1)=i
            d=d+a1(i,j)+a1(i,j-1)
           enddo
           enddo
           write(6,*) d
         end
           block data
           common /aaa/n,n1,n2,n3,n4
           data n/10/,n1/10/,n2/64/,n3/128/,n4/2048/
           end
