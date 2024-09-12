       integer*4 a1(100),a2(100),a3(100),a4(100),a5(100)
       integer*4 a6(100),a7(100),a8(100),a9(100),a10(100)

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
       do i=1,100,2
        a1(i)=a1(i)+i
        a2(i)=a2(i)+i
        a3(i)=a3(i)+i       
        a4(i)=a4(i)+i
        a5(i)=a5(i)+i
        a6(i)=a6(i)+i
        a7(i)=a7(i)+i
        a8(i)=a8(i)+i
        a9(i)=a9(i)+i
        a10(i)=a10(i)+i
        enddo

      do i=1,10
       a1(i)=i
       a1(i+1)=i+10
      enddo
      write(6,*) a1,a2,a3,a4,a5,a6,a7,a8,a9,a10

      do i=1,10
       a1(i)=i
       a1(i+1)=i+10
       a2(i)=i
       a2(i+1)=i+12
      enddo
      write(6,*) a1,a2,a3,a4,a5,a6,a7,a8,a9,a10

      do i=1,10
       a1(i)=i
       a1(i+1)=i+10
       a2(i)=i
       a2(i+1)=i+12
       a3(i)=i
       a3(i+1)=i+14
      enddo
      write(6,*) a1,a2,a3,a4,a5,a6,a7,a8,a9,a10


      do i=1,10
       a1(i)=i
       a1(i+1)=i+10
       a2(i)=i
       a2(i+1)=i+12
       a3(i)=i
       a3(i+1)=i+14
       a4(i)=i
       a4(i+1)=i+16
      enddo
      write(6,*) a1,a2,a3,a4,a5,a6,a7,a8,a9,a10


      do i=1,10
       a1(i)=i
       a1(i+1)=i+10
       a2(i)=i
       a2(i+1)=i+12
       a3(i)=i
       a3(i+1)=i+14
       a4(i)=i
       a4(i+1)=16
       a5(i+1)=i+16
       a5(i)=i
       a6(i+1)=i+18
       a6(i)=i
      enddo
      write(6,*) a1,a2,a3,a4,a5,a6,a7,a8,a9,a10


      do i=1,10
       a1(i)=i
       a1(i+1)=i+10
       a2(i)=i
       a2(i+1)=i+12
       a3(i)=i
       a3(i+1)=i+14
       a4(i)=i
       a4(i+1)=16
       a5(i+1)=i+16
       a5(i)=i
       a6(i+1)=i+18
       a6(i)=i
      enddo
      write(6,*) a1,a2,a3,a4,a5,a6,a7,a8,a9,a10

      do i=1,10
       a1(i)=i
       a1(i+1)=i+10
       a2(i)=i
       a2(i+1)=i+12
       a3(i)=i
       a3(i+1)=i+14
       a4(i)=i
       a4(i+1)=16
       a5(i+1)=i+16
       a5(i)=i
       a6(i+1)=i+18
       a6(i)=i
       a7(i+1)=i+20
       a7(i)=i
      enddo
      write(6,*) a1,a2,a3,a4,a5,a6,a7,a8,a9,a10

      do i=1,10
       a1(i)=i
       a1(i+1)=i+10
       a2(i)=i
       a2(i+1)=i+12
       a3(i)=i
       a3(i+1)=i+14
       a4(i)=i
       a4(i+1)=16
       a5(i+1)=i+16
       a5(i)=i
       a6(i+1)=i+18
       a6(i)=i
       a7(i+1)=i+20
       a7(i)=i
       a8(i+1)=i+22
       a8(i)=i
      enddo
      write(6,*) a1,a2,a3,a4,a5,a6,a7,a8,a9,a10

      do i=1,10
       a1(i)=i
       a1(i+1)=i+10
       a2(i)=i
       a2(i+1)=i+12
       a3(i)=i
       a3(i+1)=i+14
       a4(i)=i
       a4(i+1)=16
       a5(i+1)=i+16
       a5(i)=i
       a6(i+1)=i+18
       a6(i)=i
       a7(i+1)=i+20
       a7(i)=i
       a8(i+1)=i+22
       a8(i)=i
       a9(i+1)=i+24
       a9(i)=i
      enddo
      write(6,*) a1,a2,a3,a4,a5,a6,a7,a8,a9,a10

      do i=1,10
       a1(i)=i
       a1(i+1)=i+10
       a1(i+2)=i-50
       a2(i)=i+a1(i+50)
       a2(i+1)=i+12
       a3(i)=i
       a3(i+1)=i+14
       a4(i)=i
       a4(i+1)=16
       a5(i+1)=i+16
       a5(i)=i
       a6(i+1)=i+18
       a6(i)=i
       a7(i+1)=i+20
       a7(i)=i
       a8(i+1)=i+22
       a8(i)=i
       a9(i+1)=i+24
       a9(i)=i
       a10(i+1)=i+26
       a10(i)=i
      enddo
      write(6,*) a1,a2,a3,a4,a5,a6,a7,a8,a9,a10
      end
