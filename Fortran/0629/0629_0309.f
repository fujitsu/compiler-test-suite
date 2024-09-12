      integer   *4 b(1000,10)/10000*2/
      integer   *4 c(100,100,10)/100000*30/
      call initc(c)
      do 30 j=1,9
        do 30 i=1,50
   30     c(i,i,1)=b(i,1)

      write(6,*) (c(i,i,1),i=1,50)
      do i=1,50
        if(c(i,i,1).ne.b(i,1)) then
          print*,c(i,i,1),b(i,1)
          stop 'NG'
        endif
      enddo
      print*,'OK'
      end
      subroutine initc(c)
      integer *4  c(100,100,10)
      c(1,1,1)=30
      end
