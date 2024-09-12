      program main
      parameter (l1=5,l2=5,l3=5,l4=5)
      real x(l1,l2),x2(l1,l2),x3(l1,l2)
      real a(l1,l2,l3),a2(l1,l2,l3),a3(l1,l2,l3)
      real b(l1,l2,l3,l4),b2(l1,l2,l3,l4),b3(l1,l2,l3,l4)
      real c(l1,l2,l3,l4),c2(l1,l2,l3,l4),c3(l1,l2,l3,l4)
      real d(l1,l2,l3),d2(l1,l2,l3),d3(l1,l2,l3)
      real z(l1),z2(l1),z3(l1)

      do 10 i=1,l1
        z2(i)=i+i
        z3(i)=i+3
        do 10 j=1,l2
          x2(i,j)=(i+j)*4
          x3(i,j)=(i+j)*(i+j)
          do 10 k=1,l3
            a2(i,j,k)=i+j+k
            a3(i,j,k)=i+k*k
            d2(i,j,k)=i*j-k
            d3(i,j,k)=i*k-j
            do 10 l=1,l4
              b2(i,j,k,l)=i+j+k+l
              b3(i,j,k,l)=i*j-k*l
              c2(i,j,k,l)=i-j+k-l
              c3(i,j,k,l)=i-j-k*l
10          continue


      do 4  i=1,l1
        do 3  j=1,l2
          x(i,j)=x2(i,j)+x3(i,j)
          do 2  k=1,l3
            if( a2(i,j,k).gt.a3(i,j,k) ) then
               a(i,j,k)=a2(i,j,k)-a3(i,j,k)
            else
               a(i,j,k)=a3(i,j,k)-a2(i,j,k)
            endif
            do 1  l=1,l4
                if (b2(i,j,k,l).gt.b3(i,j,k,l)) then
                   b(i,j,k,l)=b2(i,j,k,l)+b3(i,j,k,l)
                else
                   b(i,j,k,l)=b2(i,j,k,l)-b3(i,j,k,l)
                endif
                c(i,j,k,l)=c2(i,j,k,l)*c3(i,j,k,l)
1           continue
            d(i,j,k)=d2(i,j,k)+d3(i,j,k)
2         continue
3       continue
        z(i)=z2(i)*z3(i)+mod(z3(i),3)
4     continue

      write(6,*) x
      write(6,*)
      write(6,*) a
      write(6,*)
      write(6,*) b
      write(6,*)
      write(6,*) c
      write(6,*)
      write(6,*) d
      write(6,*)
      write(6,*) z
      write(6,*)


      do 14 i=1,l1
        do 13 j=1,l2
          x(i,j)=-x2(i,j)-x3(i,j)
          do 12 k=1,l3
            if( a2(i,j,k).gt.a3(i,j,k) ) then
               a(i,j,k)=a3(i,j,k)-a2(i,j,k)
            else
               a(i,j,k)=a2(i,j,k)-a3(i,j,k)
            endif
            do 11 l=1,l4
                if (b2(i,j,k,l).gt.b3(i,j,k,l)) then
                   b(i,j,k,l)=b3(i,j,k,l)-b2(i,j,k,l)
                else
                   b(i,j,k,l)=b2(i,j,k,l)-b3(i,j,k,l)
                endif
                c(i,j,k,l)=c2(i,j,k,l)*c3(i,j,k,l)*(-3.0)
11          continue
12        continue
13      continue
        z(i)=z2(i)*z3(i)*(-1.0)
14    continue

      write(6,*) x
      write(6,*)
      write(6,*) a
      write(6,*)
      write(6,*) b
      write(6,*)
      write(6,*) c
      write(6,*)
      write(6,*) z
      write(6,*)


      do 24 i=1,l1
        do 23 j=1,l2
          x(i,j)=x2(i,j)-x3(i,j)
          do 22 k=1,l3
            do 21 l=1,l4
                if (b2(i,j,k,l).gt.b3(i,j,k,l)) then
                   b(i,j,k,l)=5.0*b3(i,j,k,l)-b2(i,j,k,l)
                else
                   b(i,j,k,l)=10.0*b2(i,j,k,l)-b3(i,j,k,l)
                endif
                c(i,j,k,l)=c2(i,j,k,l)*c3(i,j,k,l)*3.0
21          continue
            d(i,j,k)=d2(i,j,k)*d(i,j,k)
22        continue
23      continue
        z(i)=z2(i)*z3(i)*11.0
24    continue

      write(6,*) x
      write(6,*)
      write(6,*) b
      write(6,*)
      write(6,*) c
      write(6,*)
      write(6,*) d
      write(6,*)
      write(6,*) z
      write(6,*)
      stop
      end
