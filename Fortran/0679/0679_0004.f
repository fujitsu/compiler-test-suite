      program main
      parameter (l1=5,l2=5,l3=5,l4=5)
      real a(l1),a2(l1),a3(l1)
      real b(l1,l2,l3,l4),b2(l1,l2,l3,l4),b3(l1,l2,l3,l4)
      real c(l1,l2,l3,l4),c2(l1,l2,l3,l4),c3(l1,l2,l3,l4)
      real d(l1),d2(l1),d3(l1)

      do 10 i=1,l1
        a2(i)=i*i
        a3(i)=i+10.0
        d2(i)=-5.0*i
        d3(i)=i*i*i
        do 10 j=1,l2
        do 10 k=1,l3
        do 10 l=1,l4
          b2(i,j,k,l)=i+j+k+l
          b3(i,j,k,l)=i*j-k*l
          c2(i,j,k,l)=i-j+k-l
          c3(i,j,k,l)=i-j-k*l
10      continue


        do 5  i=1,l1
          a(i)=a2(i)+a3(i)
            do 4  j=1,l2
            do 4  k=1,l3
            do 4  l=1,l4
                if (b2(i,j,k,l).gt.b3(i,j,k,l)) then
                   b(i,j,k,l)=b2(i,j,k,l)+b3(i,j,k,l)
                else
                   b(i,j,k,l)=b2(i,j,k,l)-b3(i,j,k,l)
                endif
                c(i,j,k,l)=c2(i,j,k,l)*c3(i,j,k,l)
4           continue
          d(i)=d2(i)+d3(i)
5       continue

      write(6,*) a
      write(6,*)
      write(6,*) b
      write(6,*)
      write(6,*) c
      write(6,*)
      write(6,*) d
      write(6,*)
      stop
      end
