      program main
      parameter (l1=5,l2=5,l3=5)
      real b1(l1,l2),b2(l1,l2)
      real c1(l1,l2,l3),c2(l1,l2,l3),c3(l1,l2,l3)
      real d1(l1,l2),d3(l1,l2)
      real e1(l1),e2(l1),e3(l1)

      do 3  i=1,l1
        do 2  j=1,l2
          b1(i,j)=64.0
          do 1  k=1,l3
            c1(i,j,k)=128.0
1         continue
          d1(i,j)=256.0
2       continue
        e1(i)=512.0
3     continue


      do 6  i=1,l1
        do 5  j=1,l2
          b2(i,j)=1024.0
          do 4  k=1,l3
            c2(i,j,k)=2048.0
4         continue
5       continue
        e2(i)=4096.0
6     continue


      do 9  i=1,l1
        do 8  j=1,l2
          b2(i,j)=8192.0
          do 8  k=1,l3
            c2(i,j,k)=-16.0
8         continue
9       e2(i)=-32.0


      do 12 i=1,l1
        do 11 j=1,l2
          do 10 k=1,l3
            c3(i,j,k)=-64.0
10        continue
          d3(i,j)=-128.0
11      continue
12      e3(i)=-256.0


      write(6,*) b1(3,3),c1(3,3,3),d1(3,3),e1(3)
      write(6,*)
      write(6,*) b2(3,3),c2(3,3,3)        ,e2(3)
      write(6,*)
      write(6,*)         c3(3,3,3),d3(3,3),e3(3)
      write(6,*)
      stop
      end
