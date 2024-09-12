      program main
      integer*1 a(20),b(10)
      data a/20*0/, b/10*0/
      m1=ifun1()
      m2=ifun2()
      do l=1,1
         j1=m1
         i=m2
         if(l.eq.1)n=1
         k=j1+i
         do i=1,10
            a(k)=i
            k=k+2
         enddo
      enddo
      print*,a
      print*,b
      print*,n
      end

      function ifun1()
      ifun1=0
      end

      function ifun2()
      ifun2=1
      end
