      character*11 b
      data  b/'FUJI-111   '/
      do i=1,10
      call sub(b)
      enddo
      stop
      end
      subroutine sub(b)
      character*11  a(10),b
      data  a/10*'0011223300 '/
       do 10 i=1,9
         a(i)=b
 10    continue
      write(6,*) a
      return
      end
