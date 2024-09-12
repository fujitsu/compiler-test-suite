           real*8 a1(2048,20),d1
           real*4 a2(2048,20),d2
           integer*8 a3(2048,20),d3
           integer*4 a4(2048,20),d4
           complex*8 a5(2048,20),d5
           complex*16 a6(2048,20) ,d6
           common /aaa/n,n10,n64,n128,n2048
           do j=1,20
           do i=1,2048
            a1(i,j)=i
            a2(i,j)=i
            a3(i,j)=i
            a4(i,j)=i
            a5(i,j)=i
            a6(i,j)=i
           enddo
           enddo
 
           d1=0
           d2=0
           d3=0
           d4=0
           d5=0
           d6=0

           do j=1,n
           do i=1,n10
            d1=d1+a1(i,j)+a1(i,j+1)
            d2=d2+a2(i,j)+a2(i,j+1)
            d3=d3+a3(i,j)+a3(i,j+1)
            d4=d4+a4(i,j)+a4(i,j+1)
            d5=d5+a5(i,j)+a5(i,j+1)
            d6=d6+a6(i,j)+a6(i,j+1)
           enddo
           enddo
           write(6,*) d1,d2,d3,d4,d5,d6
         end
           block data
           common /aaa/n,n1,n2,n3,n4
           data n/10/,n1/10/,n2/64/,n3/128/,n4/2048/
           end
