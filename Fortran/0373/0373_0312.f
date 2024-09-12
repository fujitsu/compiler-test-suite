           real*8 a1(2048,20),a2(2048,20),a3(2048,20),a4(64,20),d
           common /aaa/n,n1,n2,n3,n4
           a1=1
           a2=1
           a3=1
           a4=1

           d=0.0d0
           do j=1,n
           do i=1,n4
            d=d+a1(i,j)+a1(i,j+1)
           enddo
           enddo
           write(6,*) d

           d=0.0d0
           do j=1,n
           do i=1,1024
            d=d+a2(i,j)+a2(i,j+2)
           enddo
           enddo
           write(6,*) d

           d=0.0d0
           do j=1,n
           do i=1,16
            d=d+a3(i,j)+a3(i,j+5)
           enddo
           enddo
           write(6,*) d

           d=0.0d0
           do j=2,n
           do i=1,n
            d=d+a4(i,j-1)+a4(i,j+1)+a4(i,j)
           enddo
           enddo
           write(6,*) d

           end
           block data
           common /aaa/n,n1,n2,n3,n4
           data n/10/,n1/10/,n2/100/,n3/200/,n4/2000/
           end
