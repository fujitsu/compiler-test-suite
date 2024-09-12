      program main
      parameter (l1=5,l2=5,l3=5)
      real a1(l1),a2(l1),b1(l1,l2,l3),b2(l1,l2,l3),b3(l1,l2,l3),
     *     c1(l1),c3(l1)
      real a4(l1),a5(l1),b4(l1,l2,l3),b5(l1,l2,l3),b6(l1,l2,l3),
     *     c4(l1),c6(l1)

      do 2 i=1,l1
        a1(i)=-16.0
        do 1  j=1,l2
        do 1  k=1,l3
1          b1(i,j,k)=-67.0
2       c1(i)=-45.0

      do 3 i=1,l1
        a2(i)=-26.0
        do 3  j=1,l2
        do 3  k=1,l3
3          b2(i,j,k)=-15.0

      do 5 i=1,l1
        do 4  j=1,l2
        do 4  k=1,l3
4          b3(i,j,k)=-35.0
5       c3(i)=-67.0

      do 8 i=1,l1
        a4(i)=-16.0
        do 7  j=1,l2
        do 6  k=1,l3
           b4(i,j,k)=-67.0
6       continue
7       continue
        c4(i)=-45.0
8     continue

      do 11 i=1,l1
        a5(i)=-26.0
        do 10 j=1,l2
        do 9  k=1,l3
           b5(i,j,k)=-15.0
9       continue
10      continue
11      continue

      do 14 i=1,l1
        do 13 j=1,l2
        do 12 k=1,l3
12          b6(i,j,k)=-35.0
13      continue
14      c6(i)=-67.0

      write(6,*) a1(3),b1(3,3,3),c1(3)
      write(6,*)
      write(6,*) a2(3),b2(3,3,3)
      write(6,*)
      write(6,*) b2(3,3,3),c3(3)
      write(6,*)
      write(6,*) a4(3),b4(3,3,3),c4(3)
      write(6,*)
      write(6,*) a5(3),b5(3,3,3)
      write(6,*)
      write(6,*) b6(3,3,3),c6(3)
      stop
      end
