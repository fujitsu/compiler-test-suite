           real*8  a1(64,20),a2(128,20),a3(256,20),a4(2048,20),d
           common /aaa/n,n1,n2,n3,n4
           a1=1
           a2=1
           a3=1
           a4=1

           d=0.0d0
           do j=1,n
           do i=1,n1
            d=d+a1(i,j)+a1(i+1,j)+a1(i+2,j)+a1(i+3,j)
     +    +                  a1(i+4,j)+a1(i+5,j)+a1(i+6,j)
     +    +                  a1(i+7,j)+a1(i+8,j)+a1(i+9,j)
     +    +                  a1(i+10,j)+a1(i+11,j)+a1(i+12,j)
     +    +                  a1(i+13,j)+a1(i+14,j)+a1(i+15,j)
     +    +                  a1(i+16,j)+a1(i+17,j)+a1(i+18,j)
           enddo
           enddo
           write(6,*) d

           d=0.0d0
           do j=1,n
           do i=1,n2
            d=d+a2(i,j)+a2(i+1,j)+a2(i+2,j)+a2(i+3,j)
     +    +                  a2(i+4,j)+a2(i+5,j)+a2(i+6,j)
     +    +                  a2(i+7,j)+a2(i+8,j)+a2(i+9,j)
     +    +                  a2(i+10,j)+a2(i+11,j)+a2(i+12,j)
     +    +                  a2(i+13,j)+a2(i+14,j)+a2(i+15,j)
     +    +                  a2(i+16,j)+a2(i+17,j)+a2(i+18,j)
           enddo
           enddo
           write(6,*) d

           d=0.0d0
           do j=1,n
           do i=1,n3
            d=d+a3(i,j)+a3(i+1,j)+a3(i+2,j)+a3(i+3,j)
     +    +                  a3(i+4,j)+a3(i+5,j)+a3(i+6,j)
     +    +                  a3(i+7,j)+a3(i+8,j)+a3(i+9,j)
     +    +                  a3(i+10,j)+a3(i+11,j)+a3(i+12,j)
     +    +                  a3(i+13,j)+a3(i+14,j)+a3(i+15,j)
     +    +                  a3(i+16,j)+a3(i+17,j)+a3(i+18,j)
           enddo
           enddo
           write(6,*) d

           d=0.0d0
           do j=1,n
           do i=1,n4
            d=d+a4(i,j)+a4(i+1,j)+a4(i+2,j)+a4(i+3,j)
     +    +                  a4(i+4,j)+a4(i+5,j)+a4(i+6,j)
     +    +                  a4(i+7,j)+a4(i+8,j)+a4(i+9,j)
     +    +                  a4(i+10,j)+a4(i+11,j)+a4(i+12,j)
     +    +                  a4(i+13,j)+a4(i+14,j)+a4(i+15,j)
     +    +                  a4(i+16,j)+a4(i+17,j)+a4(i+18,j)
           enddo
           enddo
           write(6,*) d

           end
           block data
           common /aaa/n,n1,n2,n3,n4
           data n/10/,n1/10/,n2/100/,n3/200/,n4/2000/
           end
