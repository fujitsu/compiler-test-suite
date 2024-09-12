       integer*4 a1(100,2),a2(100,2),a3(100,2),a4(100,2),a5(100,2)
       integer*4 a6(100,2),a7(100,2),a8(100,2),a9(100,2),a10(100,2)

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
        a2(i,j)=a2(i,j)+i
        a3(i,j)=a3(i,j)+i       
        a4(i,j)=a4(i,j)+i
        a5(i,j)=a5(i,j)+i
        a6(i,j)=a6(i,j)+i
        a7(i,j)=a7(i,j)+i
        a8(i,j)=a8(i,j)+i
        a9(i,j)=a9(i,j)+i
        a10(i,j)=a10(i,j)+i
        enddo
        enddo

      do j=1,2
      do i=1,10
       a1(i,j)=i
       a1(i+1,j)=i+10
      enddo
      enddo
      write(6,*) a1

      do j=1,2
      do i=1,10
       a1(i,j)=i
       a1(i+1,j)=i+10
       a2(i,j)=i
       a2(i+1,j)=i+12
      enddo
      enddo
      write(6,*) a1,a2

      do j=1,2
      do i=1,10
       a1(i,j)=i
       a1(i+1,j)=i+10
       a2(i,j)=i
       a2(i+1,j)=i+12
       a3(i,j)=i
       a3(i+1,j)=i+14
      enddo
      enddo
      write(6,*) a1,a2,a3

      do j=1,2
      do i=1,10
       a1(i,j)=i
       a1(i+1,j)=i+10
       a2(i,j)=i
       a2(i+1,j)=i+12
       a3(i,j)=i
       a3(i+1,j)=i+14
       a4(i,j)=i
       a4(i+1,j)=i+16
      enddo
      enddo
      write(6,*) a1,a2,a3,a4

      do j=1,2
      do i=1,10
       a1(i,j)=i
       a1(i+1,j)=i+10
       a2(i,j)=i
       a2(i+1,j)=i+12
       a3(i,j)=i
       a3(i+1,j)=i+14
       a4(i,j)=i
       a4(i+1,j)=16
       a5(i+1,j)=i+16
       a5(i,j)=i
      enddo
      enddo
      write(6,*) a1,a2,a3,a4,a5

      do j=1,2
      do i=1,10
       a1(i,j)=i
       a1(i+1,j)=i+10
       a2(i,j)=i
       a2(i+1,j)=i+12
       a3(i,j)=i
       a3(i+1,j)=i+14
       a4(i,j)=i
       a4(i+1,j)=16
       a5(i+1,j)=i+16
       a5(i,j)=i
       a6(i+1,j)=i+18
       a6(i,j)=i
      enddo
      enddo
      write(6,*) a1,a2,a3,a4,a5,a6

      do j=1,2
      do i=1,10
       a1(i,j)=i
       a1(i+1,j)=i+10
       a2(i,j)=i
       a2(i+1,j)=i+12
       a3(i,j)=i
       a3(i+1,j)=i+14
       a4(i,j)=i
       a4(i+1,j)=16
       a5(i+1,j)=i+16
       a5(i,j)=i
       a6(i+1,j)=i+18
       a6(i,j)=i
       a7(i+1,j)=i+20
       a7(i,j)=i
      enddo
      enddo
      write(6,*) a1,a2,a3,a4,a5,a6,a7

      do j=1,2
      do i=1,10
       a1(i,j)=i
       a1(i+1,j)=i+10
       a2(i,j)=i
       a2(i+1,j)=i+12
       a3(i,j)=i
       a3(i+1,j)=i+14
       a4(i,j)=i
       a4(i+1,j)=16
       a5(i+1,j)=i+16
       a5(i,j)=i
       a6(i+1,j)=i+18
       a6(i,j)=i
       a7(i+1,j)=i+20
       a7(i,j)=i
       a8(i+1,j)=i+22
       a8(i,j)=i
      enddo
      enddo
      write(6,*) a1,a2,a3,a4,a5,a6,a7,a8

      do j=1,2
      do i=1,10
       a1(i,j)=i
       a1(i+1,j)=i+10
       a2(i,j)=i
       a2(i+1,j)=i+12
       a3(i,j)=i
       a3(i+1,j)=i+14
       a4(i,j)=i
       a4(i+1,j)=16
       a5(i+1,j)=i+16
       a5(i,j)=i
       a6(i+1,j)=i+18
       a6(i,j)=i
       a7(i+1,j)=i+20
       a7(i,j)=i
       a8(i+1,j)=i+22
       a8(i,j)=i
       a9(i+1,j)=i+24
       a9(i,j)=i
      enddo
      enddo
      write(6,*) a1,a2,a3,a4,a5,a6,a7,a8,a9,a10

      do j=1,2
      do i=1,10
       a1(i,j)=i
       a1(i+1,j)=i+10
       a1(i+2,j)=i-50
       a2(i,j)=i+a1(i+50,j)
       a2(i+1,j)=i+12
       a3(i,j)=i
       a3(i+1,j)=i+14
       a4(i,j)=i
       a4(i+1,j)=16
       a5(i+1,j)=i+16
       a5(i,j)=i
       a6(i+1,j)=i+18
       a6(i,j)=i
       a7(i+1,j)=i+20
       a7(i,j)=i
       a8(i+1,j)=i+22
       a8(i,j)=i
       a9(i+1,j)=i+24
       a9(i,j)=i
       a10(i+1,j)=i+26
       a10(i,j)=i
      enddo
      enddo
      write(6,*) a1,a2,a3,a4,a5,a6,a7,a8,a9,a10
      end
