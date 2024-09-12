      program main
      parameter (l1=5,l2=5)
      real a1(l1),a2(l1),b1(l1,l2)
      real b2(l1,l2),b3(l1,l2)
      real c1(l1),c3(l1)

      do 2 i=1,l1
        a1(i)=-16.0
        do 1  j=1,l2
1          b1(i,j)=-67.0
2       c1(i)=-45.0

      do 3 i=1,l1
        a2(i)=-26.0
        do 3  j=1,l2
3          b2(i,j)=-15.0

      do 5 i=1,l1
        do 4  j=1,l2
4          b3(i,j)=-35.0
5       c3(i)=-67.0

      write(6,*) a1(3),b1(3,3),c1(3)
      write(6,*)
      write(6,*) a2(3),b2(3,3)
      write(6,*)
      write(6,*) b2(3,3),c3(3)
      stop
      end
