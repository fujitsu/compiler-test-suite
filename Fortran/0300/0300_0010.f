      real*4 r4a(30)/30*0.0/
      real*4 r4b(30)/30*5.5/
      real*4 r4c/0.5/
      call sub1(r4a,r4b,r4c,10)
      do i=1,10
         write(6,*) r4a(i)," = ",r4b(i)," * ",r4c
      enddo
      end


      subroutine sub1(r4a,r4b,r4c,n)
      real*4 r4a(10)
      real*4 r4b(10)
      real*4 r4c

      do 10 i=1,n

         if(r4c.lt.0) then
            r4c=0
         else
            r4c=r4c+i
         endif

         do 20 j=1,n
            r4a(j)=r4b(j)*0.5
 20      continue

 10   continue

      do 30 i=1,n
         r4a(i)=r4b(i)*r4c
 30   continue

      return
      end

