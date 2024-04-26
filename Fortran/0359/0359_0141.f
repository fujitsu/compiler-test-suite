      call c8
      call c16
      end

      subroutine c8
      real*4 dx(10)/11,22,33,44,55,66,77,88,99,110/,rr/3/
      complex*8 cd1(10)/10*4/,cd2(10)/10,9,8,7,6,5,4,3,2,1/
      complex*8 res1(10),res2(10)
      data res1/(11.0,3.0),(22.0,3.0),(33.0,3.0),(44.0,3.0),(55.0,3.0),
     +          (66.0,3.0),(77.0,3.0),(88.0,3.0),(4.0,0),(4.0,0)/
      data res2/(20,0),(19.0,0),(18.0,0),(17.0,0),(16.0,0),(15.0,0),
     +          (14.0,0),(13.0,0),(2.0,0),(1.0,0)/
         
      do 60 j1=1,8
         cd1(j1)=cmplx(dx(j1),rr)
         cd2(j1)=cd2(j1)+10
  60  continue
      do i=1,10
         if (cd1(i).ne.res1(i).or.cd2(i).ne.res2(i)) goto 11
      enddo
      write(6,*) ' ok '
      goto 10
 11   write(6,*) ' ng '
      write(6,*) cd1
      write(6,*) cd2
 10   continue
      end

      subroutine c16
      real*8 dx(10)/11,22,33,44,55,66,77,88,99,110/,rr/3/
      complex*16 cd1(10)/10*4/,cd2(10)/10,9,8,7,6,5,4,3,2,1/
      complex*16 res1(10),res2(10)
      data res1/(11.0,3.0),(22.0,3.0),(33.0,3.0),(44.0,3.0),(55.0,3.0),
     +          (66.0,3.0),(77.0,3.0),(88.0,3.0),(4.0,0),(4.0,0)/
      data res2/(20,0),(19.0,0),(18.0,0),(17.0,0),(16.0,0),(15.0,0),
     +          (14.0,0),(13.0,0),(2.0,0),(1.0,0)/
         
      do 60 j1=1,8
         cd1(j1)=dcmplx(dx(j1),rr)
         cd2(j1)=cd2(j1)+10
  60  continue
      do i=1,10
         if (cd1(i).ne.res1(i).or.cd2(i).ne.res2(i)) goto 11
      enddo
      write(6,*) ' ok '
      goto 10
 11   write(6,*) ' ng '
      write(6,*) cd1
      write(6,*) cd2
 10   continue
      end
