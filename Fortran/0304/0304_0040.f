      program main
      parameter(ndire=10,nen=3,ndeg=10)
      dimension gradn1(10,10),shp(ndire,nen),
     $          disp(ndeg,nen), 
     $          bstar(10,60)
      gradn1=0
      disp=0
      shp=0
      bstar=0
      call hip31(shp,disp,ndeg, nen,ndire)      
      print *,' ok '
      stop
      end
      subroutine hip31(shp,disp,ndeg, nen,ndire)
      dimension gradn1(10,10),shp(ndire,nen),
     $          disp(ndeg,nen), 
     $          bstar(10,60)
      gradn1=0
      do 2 n = 1,nen
         do 2 i = 1,ndire
         do 2 j = 1,ndire
    2    gradn1(i,j)=gradn1(i,j)+shp(j,n)*disp(i,n)
            call scla( bstar, 0.0, 360, 1, 0 )
         do 25 n = 1, nen
              bstar(4,ndire*(n-1)+2) =-shp(1,n)
   25    continue
      return
      end
      subroutine scla( bstar, r1, t2,t3,t4)
      real * 4  bstar(10,60),r1
      integer * 4 t2,t3,t4
      return
      end
