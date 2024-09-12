       integer*4 a1(100,3),a2(100,3),a3(100,3),a4(100,3),a5(100,3)
       integer*4 a6(100,3),a7(100,3),a8(100,3),a9(100,3),a10(100,3)

       a1=1
       a2=2
       a3=3
       a4=4
       a5=5
       a6=6
       a7=7
       a8=8
       a9=9
       a10=10

       do j=1,2
       do i=1,100,2
        a1(i,j)=a1(i,j)+i
        a2(i,j)=a2(i+1,j+1)+i
        a3(i,j)=a3(i+1,j)+i       
        a4(i+1,j+1)=a4(i,j)+i
        a5(i,j+1)=a5(i,j)+i
        a6(i,j)=1
        a6(i+1,j)=2
        enddo
        enddo
        write(6,*) a1,a2,a3,a4,a5,a6

       j=1
       k=2
      do i=1,10,2
       a1(i,j)=0
       a1(i+1,j)=j+k
       a2(i,j)=i
       a2(i+1,j)=i+12
       a3(i,j+1)=i
       a3(i,j)=i+14
       a4(i,j)=i
       a4(i,2)=16
       a5(i,1)=i+16
       a5(i,2)=i
       a6(i+10,j)=i+18
       a6(i,j)=i
       a7(i+10+20,j)=i+20
       a7(i,j)=i
       a8(1+i,j)=i+22
       a8(i,j)=i
       a9(i,k)=i+24
       a9(i,j)=k
       a10(i+k,j)=i+26
       a10(i+j,j)=i
        a1(i+1,k)=i+10
       a1(i+2,k)=j-50
      enddo
      write(6,*) a1,a2,a3,a4,a5,a6,a7,a8,a9,a10
      end
