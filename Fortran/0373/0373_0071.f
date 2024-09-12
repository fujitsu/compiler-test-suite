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

       do j=1,2
       do i=1,100
        a1(i,j)=i
        a1(i,j)=i+i
        a2(i,j)=i
        a2(i,j+1)=i+i
        a3(i,j)=a3(i,min(j+1,2))+i       
        enddo
        enddo
        write(6,*) a1,a2,a3,a4,a5,a6

       do j=1,3
       do i=1,100
        a1(i,1)=a1(i,1)
        a1(i,2)=a2(i,3)+1
        a3(i,j)=a4(i,1)+1
        enddo
        enddo
        write(6,*) a1,a2,a3,a4

       do j=1,2
        a5(j,j)=a4(j,j)+1
       do i=1,65
        a1(i,j)=a5(i,j)
        a1(i+1,j)=a2(i,3)+1
        a3(i,j)=a4(i,1)+1
        enddo
        enddo
        write(6,*) a1,a2,a3,a4
      end

