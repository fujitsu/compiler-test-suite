      program main
      integer*4 squ1(20),squ2(20)
      data squ2/19,18,17,16,15,14,13,12,11,10,18,16,14,12,10,8,6,4,2,0/
      call sub1(squ1)
      do 10 k=1,20
        if(squ1(k).ne.squ2(k)) go to 20
   10 continue
      write(6,*) '*** ok ***'
      go to 30
   20 write(6,*) '*** ng ***'
      write(6,*) squ1(k)
      write(6,*) squ2(k)
      write(6,*) k
   30 continue
      end

      subroutine sub1(squ1)
      integer*4 squ1(10,2)
      do 10 j=1,2
        do 20 i=1,10
          squ1(i,j)=20-i*j
   20   continue
   10 continue
      return
      end
