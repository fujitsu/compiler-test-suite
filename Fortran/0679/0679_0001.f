      program main
      parameter (l1=10,l2=10,l3=10)
      real a(l1),b(l1,l2,l3),c(l1,l2,l3)
      real d(l1,l2),e(l1,l2),f(l1),g(l1)

      do 1 i=1,l1
        a(i)=i
        f(i)=2*i
        g(i)=-3*i
        do 1 j=1,l2
          d(i,j)=i+j
          e(i,j)=2*i+j
          do 1 k=1,l3
            b(i,j,k)=i+j+k
            c(i,j,k)=i+2*j+3*k
1     continue

      do 30 i=1,l1
        s=a(i)
        do 20 j=1,l2
          continue
          continue
          continue
          do 10 k=1,l3
            b(i,j,k)=s+c(i,j,k)
10        continue
          d(i,j)=s+e(i,j)
20      continue
        f(i)=g(i)
30    continue

      write(6,*) b
      write(6,*)
      write(6,*) d
      write(6,*)
      write(6,*) f
      write(6,*)

      stop
      end
