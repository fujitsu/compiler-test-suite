      complex*16    a(100,100),b(100,100),c(100,100),abc(100,100)
      real*8        r1(100)/50*1.,50*2./
      real*8        r2(100)/50*2.,50*3./
      integer*4     x(100)/100*50/,s/1/
      integer*4     y(100)/50*10,50*100/
      common /com/a,b,c
      do 1 j=1,100
       do 1 i=1,100
        a(i,j) = (0,0)
        b(i,j) = (1.,1.)
        c(i,j) = (1.,2.)+i
        abc(i,j) = (0,0)
    1 continue
      do 2 i=2,99,3
        y(i) = i
        x(i) = y(i+1)-1
    2 continue
      do 3 i=100,1,-2
        a(x(i),i) = b(i,i) + c(y(i),x(i))
        do 4 j=99,11,-11
          a(x(i),i) = b(1,y(j)) + i
          b(x(i),i) = b(1,y(j)) + j
          c(x(i),i) = b(1,y(j)) + 1
          a(i,j) = b(y(j-1),1)*2
          s    = y(x(j))
          a(i,j) = s+j
    4   continue
    3 continue
      do 5 i=100,1,-2
        a(x(i),i) = b(i,i) + c(y(i),x(i))
        do 6 j=51,1,-2
          a(x(i),j) =  r1(i)
          b(x(i),j) =  r1(i)
          c(x(i),j) =  r2(i)
    6   continue
    5 continue
      call sub1((a(100,1)-b(100,2))+(c(50,50)-1),x,y)
      call sub2((a(100,1)+b(100,2)+c(50,50)),x,y)
      do 7 i=1,100
        do 7 j=1,100
          abc(i,j) = a(i,j)
          abc(i,j) = abc(i,j)+b(i,j)
          abc(i,j) = abc(i,j)+c(i,j)
    7 continue
      write(6,*) s
      write(6,*) ((a(i,j)/1,i=100,2,-1),j=100,1,-1)
      write(6,*) ((b(i,j)*1,i=100,2,-1),j=100,1,-1)
      write(6,*) ((c(i,j)+1,i=99,3,-2),j=100,1,-1)
      stop
      end
      subroutine sub1(aa,x,y)
      complex*16 aa,bb/(1.,1.)/
      complex*16 a(100,100),b(100,100),c(100,100)
      complex*16 a1(100)/25*(1.,3.),25*(2.,1.),25*(2.,2.),25*(1.,2.)/
      complex*16 a2(100)/25*(2.,2.),25*(2.,1.),25*(1.,2.),25*(2.,2.)/
      complex*16 a3(100)/100*(0,0)/
      integer*4  z/5/,x(100),y(100)
      common    /com/a,b,c
      do 10 i=99,2,-2
        do 11 j=99,2,-2
          a3(i) = a1(x(z))*a2(y(i))
          a(i,j) = a3(x(i+1))+aa
          a(i,j) = aa-i
          b(i,j) = b(x(i),1)+bb
          c(i,j) = c(x(i),50)*aa
   11   continue
   10 continue
      return
      end
      subroutine sub2(cc,x,y)
      complex*16 cc,dd/(1.,1.)/
      complex*16 a(100,100),b(100,100),c(100,100)
      complex*16 c1(100)/25*(1.,1.),25*(2.,1.),25*(2.,2.),25*(1.,2.)/
      complex*16 c2(100)/25*(2.,2.),25*(2.,1.),25*(1.,2.),25*(2.,2.)/
      complex*16 c3(100)/100*(0,0)/
      integer*4  z/50/,x(100),y(100)
      common    /com/a,b,c
      do 20 i=99,2,-2
        do 21 j=99,2,-2
          c3(i) = c1(x(z))*c2(y(i))
          a(x(i),x(j)) = c3(x(i+1))+cc
          a(x(i),x(z)) = cc-i
          b(x(i),j) = b(i,j)+dd
          c(x(i),z) = c(i,50)*cc
   21   continue
   20 continue
      return
      end
