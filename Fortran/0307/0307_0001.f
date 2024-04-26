      program main
      real*8 a(50),b(50,50)
      real*8 s

      s = 0
      b =1

      do j=1,50             
         do i=1,50
            a(i) = i        
            s = s + b(i,j) 
         enddo
      enddo
      write(6,*) a,s
      end
