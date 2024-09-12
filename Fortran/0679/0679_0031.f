      program main
      parameter (l1=5,l2=5,l3=5)
      real a(l1),a2(l1),a3(l1)
      real b(l1,l2),b2(l1,l2),b3(l1,l2)
      real c(l1,l2,l3),c2(l1,l2,l3),c3(l1,l2,l3)
      real d(l1),d2(l1),d3(l1)
      logical x(l1)


      do 10 i=1,l1
        a2(i)=i
        a3(i)=i+3.0
        d2(i)=-5.0*i
        d3(i)=i*i*i
        x(i) = mod(i,2).eq.0
        do 10 j=1,l2
          b2(i,j)=i+j
          b3(i,j)=i*j
          do 10 k=1,l3
            c2(i,j,k)=i+j+k
            c3(i,j,k)=i*j-k
10        continue


        do 5  i=1,l1
          a(i)=a2(i)+a3(i)
          if( x(i) ) then
            do 2  j=1,l2
              b(i,j)=b2(i,j)+b3(i,j)
              do 1  k=1,l3
                c(i,j,k)=c2(i,j,k)+c3(i,j,k)
1             continue
2           continue
          else
            do 4  j=1,l2
              b(i,j)=b2(i,j)-b3(i,j)
              do 3  k=1,l3
                c(i,j,k)=c2(i,j,k)*c3(i,j,k)
3             continue
4           continue
          endif
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
