      program main
      parameter (l1=5,l2=5,l3=5)
      real a1(l1),a2(l1),a3(l1)
      real b1(l1,l2),b2(l1,l2)
      real c1(l1,l2,l3),c2(l1,l2,l3),c3(l1,l2,l3)
      real d1(l1,l2),d3(l1,l2)
      real e1(l1),e2(l1),e3(l1)

      do 3  i=1,l1
        a1(i)=-25.0
        do 2  j=1,l2
          b1(i,j)=-50.0
          do 1  k=1,l3
            c1(i,j,k)=-100.0
1         continue
          d1(i,j)=-200.0
2       continue
        e1(i)=-400.0
3     continue


      do 6  i=1,l1
        a2(i)=-800.0
        do 5  j=1,l2
          b2(i,j)=-1600.0
          do 4  k=1,l3
            c2(i,j,k)=-3200.0
4         continue
5       continue
        e2(i)=-6400.0
6     continue


      do 9  i=1,l1
        a2(i)=-12800.0
        do 7  j=1,l2
          b2(i,j)=-25600.0
          do 7  k=1,l3
            c2(i,j,k)=-51200.0
7         continue
9       e2(i)=-1024.0


      do 12 i=1,l1
        a3(i)=-2048.0
        do 11 j=1,l2
          do 10 k=1,l3
            c3(i,j,k)=-4096.0
10        continue
          d3(i,j)=-8192.0
11      continue
        e3(i)=-16384.0
12    continue


      write(6,*) a1(3),b1(3,3),c1(3,3,3),d1(3,3),e1(3)
      write(6,*)
      write(6,*) a2(3),b2(3,3),c2(3,3,3),        e2(3)
      write(6,*)
      write(6,*) a3(3),        c3(3,3,3),d3(3,3),e3(3)
      write(6,*)
      stop
      end
