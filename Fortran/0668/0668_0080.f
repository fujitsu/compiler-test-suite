      program main
      integer*4  fl
      real*4     a(100,100),aa(100,100)
      complex*8  b(100,100)
      b=0
      j=0
      i=0
   10 j=j+1
      if(j.gt.100) goto 16
   15 i=i+1
      if(i.gt.100) goto 17
      b(i,j)=sin(float(i*j))*i*j
      b(i,j)=csqrt(b(i,j))*(i-50)*(j-50)
      b(i,j)=b(i,j)+b(j,i)/cmplx(2.0,0.0)
      goto 15
   17 i=0
      goto 10
   16 continue
      call nil(aa,b)
      call vil( a,b)
      fl=0
      do 30 j=1,100
        do 35 i=1,100
          if(a(i,j).ne.aa(i,j)) then
            write(6,100) i,j,aa(i,j),a(i,j)
            fl=1
          endif
   35   continue
   30 continue
      if(fl.eq.0) write(6,200)
      stop
  100 format(1h ,'** cabs ng (',i3,',',i3,') ***',
     *           ' nil=',z8,' vil=',z8)
  200 format(1h ,' === cabs ok ===')
      end
      subroutine vil(a,b)
      real*4 a(100,100)
      complex*8 b(100,100)
      do 10 j=1,100
        do 15 i=1,100
          a(i,j)=cabs(b(i,j))
   15   continue
   10 continue
      return
      end
      subroutine nil(aa,b)
      real*4     aa(100,100)
      complex*8  b(100,100)
      do 10 j=1,100
        do 20 i=1,100
          aa(i,j)=cabs(b(i,j))
   20   continue
   10 continue
      return
      end
