           real*8 a1(2048,20),a2(2048,20),a3(2048,20),a4(64,20),d
           common /aaa/n,n10,n64,n128,n2048
           a1=1
           a2=1
           a3=1
           a4=1

           d=0.0d0

           do j=2,n
           do i=2,n10
            d=d+a1(i,j)+a1(i,j-1)
           enddo
           enddo
           write(6,*) d

           do j=2,n
           do i=2,n10
            d=d+a1(i,j)+a1(i,j-1)
           enddo
           enddo
           write(6,*) d

           do j=2,n
           do i=2,n10
            d=d+a1(i,j)+a1(i,j-1)
           enddo
           enddo
           write(6,*) d

           do j=2,n
           do i=2,n10
            d=d+a1(i,j)+a1(i,j-1)
           enddo
           enddo
           write(6,*) d


           do j=2,n
           do i=2,n10
            d=d+a1(i,j)+a1(i,j-1)
           enddo
           enddo
           write(6,*) d

           do j=2,n
           do i=2,n10
            d=d+a1(i,j)+a1(i,j-1)
           enddo
           enddo
           write(6,*) d
         end
           block data
           common /aaa/n,n1,n2,n3,n4
           data n/10/,n1/10/,n2/64/,n3/128/,n4/2048/
           end
