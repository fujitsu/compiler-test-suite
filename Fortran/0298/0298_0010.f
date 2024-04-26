      integer*4 a(50),b(50),c(50)
      data  a,b,c/50*1,50*2,50*3/
c
      do 50 i=2,49
        c(i)=b(i)
        call  sub(a(1))
        b(i+1)=a(i)+c(1)
  50  continue
      write(6,*) c
      end

      subroutine sub(mm)
      mm=mm
      return
      end
