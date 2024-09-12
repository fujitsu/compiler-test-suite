      call pro1
      call pro2
      call pro3
      call pro9
      print *,'pass '
      end

      subroutine pro1
      structure /str/
        integer a(10)
      endstructure
      record /str/ s1(5)
      do 10 i=1,10
      do 10 j=1,5
        s1(j).a(i)=i
   10 continue
      i=1
      j=2
      call sub1(s1(i).a(i),10)
      call sub1(s1(i).a(i+j),8)
      call sub1(s1(i).a(i+j+1),7)
      call sub1(s1(i).a(1),10)

      call sub1(s1(i+j).a(i),10)
      call sub1(s1(i+j).a(i+j),8)
      call sub1(s1(i+j).a(i+j+1),7)
      call sub1(s1(i+j).a(1),10)

      call sub1(s1(i+j+1).a(i),10)
      call sub1(s1(i+j+1).a(i+j),8)
      call sub1(s1(i+j+1).a(i+j+1),7)
      call sub1(s1(i+j+1).a(1),10)

      call sub1(s1(1).a(i),10)
      call sub1(s1(1).a(i+j),8)
      call sub1(s1(1).a(i+j+1),7)
      call sub1(s1(1).a(1),10)

      call sub1(s1(i).a(i+1+j+1),6)
      call sub1(s1(i+j).a(i+1+j+1),6)
      call sub1(s1(i+1+j+1).a(i+1+j+1),6)
      call sub1(s1(1).a(i+1+j+1),6)
      end

      subroutine pro2
      structure /str/
        integer a(10)
      endstructure
      record /str/ s1(5)
      do 10 i=1,10
      do 10 j=1,5
        s1(j).a(i)=i
   10 continue
      i=1
      j=2
      call sub1(s1(i).a(i),10)
      call sub1(s1(i).a(i*j),9)
      call sub1(s1(i).a(i*j*1),9)
      call sub1(s1(i).a(1),10)

      call sub1(s1(i*j).a(i),10)
      call sub1(s1(i*j).a(i*j),9)
      call sub1(s1(i*j).a(i*j*1),9)
      call sub1(s1(i*j).a(1),10)

      call sub1(s1(i*j*1).a(i),10)
      call sub1(s1(i*j*1).a(i*j),9)
      call sub1(s1(i*j*1).a(i*j*1),9)
      call sub1(s1(i*j*1).a(1),10)

      call sub1(s1(1).a(i),10)
      call sub1(s1(1).a(i*j),9)
      call sub1(s1(1).a(i*j*1),9)
      call sub1(s1(1).a(1),10)

      call sub1(s1(i).a(i*1*j*1),9)
      call sub1(s1(i*j).a(i*1*j*1),9)
      call sub1(s1(i*1*j*1).a(i*1*j*1),9)
      call sub1(s1(1).a(i*1*j*1),9)
      end

      subroutine pro3
      structure /str/
        integer a(10)
      endstructure
      record /str/ s1(5)
      do 10 i=1,10
      do 10 j=1,5
        s1(j).a(i)=i
   10 continue
      i=1
      j=i+1
      call sub1(s1(i).a(i),10)
      call sub1(s1(i).a(i+j),8)
      call sub1(s1(i).a(i+j+1),7)
      call sub1(s1(i).a(1),10)

      call sub1(s1(i+j).a(i),10)
      call sub1(s1(i+j).a(i+j),8)
      call sub1(s1(i+j).a(i+j+1),7)
      call sub1(s1(i+j).a(1),10)

      call sub1(s1(i+j+1).a(i),10)
      call sub1(s1(i+j+1).a(i+j),8)
      call sub1(s1(i+j+1).a(i+j+1),7)
      call sub1(s1(i+j+1).a(1),10)

      call sub1(s1(1).a(i),10)
      call sub1(s1(1).a(i+j),8)
      call sub1(s1(1).a(i+j+1),7)
      call sub1(s1(1).a(1),10)

      call sub1(s1(i).a(i+1+j+1),6)
      call sub1(s1(i+j).a(i+1+j+1),6)
      call sub1(s1(i+1+j+1).a(i+1+j+1),6)
      call sub1(s1(1).a(i+1+j+1),6)
      end

      subroutine pro9
      structure /str/
        integer a(10)
      endstructure
      record /str/ s1(5,5)
      do 10 i=1,5
      do 10 j=1,5
      do 10 k=1,10
        s1(i,j).a(k)=i*100+j*10+k
   10 continue
      i=1
      j=2
      call sub1(s1(i,i).a(i),10)
      call sub1(s1(i,i+j).a(i),10)
      call sub1(s1(i,i+j+1).a(i),10)
      call sub1(s1(i,1).a(i),10)

      call sub1(s1(i,i).a(i+j),8)
      call sub1(s1(i,i+j).a(i+j),8)
      call sub1(s1(i,i+j+1).a(i+j),8)
      call sub1(s1(i,1).a(i+j),8)

      call sub1(s1(i,i).a(i+j+1),7)
      call sub1(s1(i,i+j).a(i+j+1),7)
      call sub1(s1(i,i+j+1).a(i+j+1),7)
      call sub1(s1(i,1).a(i+j+1),7)

      call sub1(s1(i,i).a(1),10)
      call sub1(s1(i,i+j).a(1),10)
      call sub1(s1(i,i+j+1).a(1),10)
      call sub1(s1(i,1).a(1),10)

      call sub1(s1(i+j,i).a(i),10)
      call sub1(s1(i+j,i+j).a(i),10)
      call sub1(s1(i+j,i+j+1).a(i),10)
      call sub1(s1(i+j,1).a(i),10)

      call sub1(s1(i+j,i).a(i+j),8)
      call sub1(s1(i+j,i+j).a(i+j),8)
      call sub1(s1(i+j,i+j+1).a(i+j),8)
      call sub1(s1(i+j,1).a(i+j),8)

      call sub1(s1(i+j,i).a(i+j+1),7)
      call sub1(s1(i+j,i+j).a(i+j+1),7)
      call sub1(s1(i+j,i+j+1).a(i+j+1),7)
      call sub1(s1(i+j,1).a(i+j+1),7)

      call sub1(s1(i+j,i).a(1),10)
      call sub1(s1(i+j,i+j).a(1),10)
      call sub1(s1(i+j,i+j+1).a(1),10)
      call sub1(s1(i+j,1).a(1),10)

      call sub1(s1(i+j+1,i).a(i),10)
      call sub1(s1(i+j+1,i+j).a(i),10)
      call sub1(s1(i+j+1,i+j+1).a(i),10)
      call sub1(s1(i+j+1,1).a(i),10)

      call sub1(s1(i+j+1,i).a(i+j),8)
      call sub1(s1(i+j+1,i+j).a(i+j),8)
      call sub1(s1(i+j+1,i+j+1).a(i+j),8)
      call sub1(s1(i+j+1,1).a(i+j),8)

      call sub1(s1(i+j+1,i).a(i+j+1),7)
      call sub1(s1(i+j+1,i+j).a(i+j+1),7)
      call sub1(s1(i+j+1,i+j+1).a(i+j+1),7)
      call sub1(s1(i+j+1,1).a(i+j+1),7)

      call sub1(s1(i+j+1,i).a(1),10)
      call sub1(s1(i+j+1,i+j).a(1),10)
      call sub1(s1(i+j+1,i+j+1).a(1),10)
      call sub1(s1(i+j+1,1).a(1),10)

      call sub1(s1(1,i).a(i),10)
      call sub1(s1(1,i+j).a(i),10)
      call sub1(s1(1,i+j+1).a(i),10)
      call sub1(s1(1,1).a(i),10)

      call sub1(s1(1,i).a(i+j),8)
      call sub1(s1(1,i+j).a(i+j),8)
      call sub1(s1(1,i+j+1).a(i+j),8)
      call sub1(s1(1,1).a(i+j),8)

      call sub1(s1(1,i).a(i+j+1),7)
      call sub1(s1(1,i+j).a(i+j+1),7)
      call sub1(s1(1,i+j+1).a(i+j+1),7)
      call sub1(s1(1,1).a(i+j+1),7)

      call sub1(s1(1,i).a(1),10)
      call sub1(s1(1,i+j).a(1),10)
      call sub1(s1(1,i+j+1).a(1),10)
      call sub1(s1(1,1).a(1),10)

      end
      subroutine sub1(x,i)
      integer x(i),i
      do j=1,i
        k=0
        k=k+x(j)
      enddo
      end
