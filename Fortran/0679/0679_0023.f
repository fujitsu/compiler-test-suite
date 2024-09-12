      program main
      parameter (l1=5,l2=5,l3=5,l4=5,l5=5,l6=5)
      real a1(l1),a2(l1),b1(l1,l2,l3,l4,l5,l6),b2(l1,l2,l3,l4,l5,l6)
      real b3(l1,l2,l3,l4,l5,l6)
      real c1(l1),c3(l1)

      do 2 i=1,l1
        a1(i)=-16.0
        do 1  j=1,l2
        do 1  k=1,l3
        do 1  l=1,l4
        do 1  m=1,l5
        do 1  n=1,l6
1          b1(i,j,k,l,m,n)=-67.0
2       c1(i)=-45.0

      do 3 i=1,l1
        a2(i)=-26.0
        do 3  j=1,l2
        do 3  k=1,l3
        do 3  l=1,l4
        do 3  m=1,l5
        do 3  n=1,l6
3          b2(i,j,k,l,m,n)=-15.0

      do 5 i=1,l1
        do 4  j=1,l2
        do 4  k=1,l3
        do 4  l=1,l4
        do 4  m=1,l5
        do 4  n=1,l6
4          b3(i,j,k,l,m,n)=-35.0
5       c3(i)=-67.0

      write(6,*) a1(3),b1(3,3,3,3,3,3),c1(3)
      write(6,*)
      write(6,*) a2(3),b2(3,3,3,3,3,3)
      write(6,*)
      write(6,*) b2(3,3,3,3,3,3),c3(3)
      stop
      end
