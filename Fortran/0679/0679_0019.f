      program main
      parameter (l1=5,l2=5,l3=5,l4=5,l5=5,l6=5,l7=5)
      real a2(l1,l2),a3(l1,l2,l3),a4(l1,l2,l3,l4),a5(l1,l2,l3,l4,l5),
     *     a6(l1,l2,l3,l4,l5,l6),a7(l1,l2,l3,l4,l5,l6,l7)

      do 2 i=1,l1
      do 2 j=1,l2
        a2(i,j)=-0.3
2     continue


      do 3 i=1,l1
      do 3 j=1,l2
      do 3 k=1,l3
        a3(i,j,k)=-0.17
3     continue

      do 4 i=1,l1
      do 4 j=1,l2
      do 4 k=1,l3
      do 4 l=1,l4
        a4(i,j,k,l)=-0.489
4     continue

      do 5 i=1,l1
      do 5 j=1,l2
      do 5 k=1,l3
      do 5 l=1,l4
      do 5 m=1,l5
        a5(i,j,k,l,m)=-0.5656
5     continue

      do 6 i=1,l1
      do 6 j=1,l2
      do 6 k=1,l3
      do 6 l=1,l4
      do 6 m=1,l5
      do 6 n=1,l6
        a6(i,j,k,l,m,n)=-0.9
6     continue

      do 7 i=1,l1
      do 7 j=1,l2
      do 7 k=1,l3
      do 7 l=1,l4
      do 7 m=1,l5
      do 7 n=1,l6
      do 7 nn=1,l7
        a7(i,j,k,l,m,n,nn)=16.0
7     continue

      write(6,*) a2(3,3)
      write(6,*)
      write(6,*) a3(3,3,3)
      write(6,*)
      write(6,*) a4(3,3,3,3)
      write(6,*)
      write(6,*) a5(3,3,3,3,3)
      write(6,*)
      write(6,*) a6(3,3,3,3,3,3)
      write(6,*)
      write(6,*) a7(3,3,3,3,3,3,3)
      stop
      end
