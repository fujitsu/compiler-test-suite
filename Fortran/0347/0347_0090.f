      dimension   a(20),b(20),c(20),d(20)
      dimension   aa(40),bb(40),cc(40)
      complex*16  a,b,c
      real*8      aa,bb,cc,d
      equivalence  (a,b),(cc(1),bb(1))
      do 10 j=1,20
        a(j) = (2.01d0,1.01d0)
        c(j) = (3.01d0,0.03d0)
 10   continue
      do 20 j=1,20
        bb(j) = 3.11
        d(j) = 2.05
 20   continue
      do 30 j=2,14
        a(j+1) = b(j+2) * c(j+1)
        c(j) = d(j+1) + b(j+1)
        aa(j) = dimag(b(j))
        b(j) = c(j) - d(j)
 30   continue
      do 40 j=2,13
        aa(j+2) = bb(j+1) * cc(j+1)
        cc(j) = d(j) + bb(j)
        bb(j) = cc(j) - d(j) + dreal(a(j))
        aa(j-1) = dreal( a(j) + c(j) )
 40   continue
      do i = 5, 9
        write(6,*) a(i)
      enddo
      do i = 6, 10
        write(6,*) b(i)
      enddo
      do i = 4, 8
        write(6,*) c(i)
      enddo
      do i = 5, 9
        write(6,*) d(i)
      enddo
      do i = 4, 13
        write(6,*) aa(i)
      enddo
      do i = 5, 14
        write(6,*) bb(i)
      enddo
      stop
      end
