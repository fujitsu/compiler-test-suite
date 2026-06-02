      program test032
c
      double precision a(20),b(20),c(20),d(20),e(20)
      integer i
      pointer (pa,a),(pb,b),(pc,c),(pd,d),(pe,e)
      pa=malloc(20*8)
      pb=malloc(20*8)
      pc=malloc(20*8)
      pd=malloc(20*8)
      pe=malloc(20*8)
      call init(pa,2d0)
      call init(pb,2d2)
      call init(pc,2d3)
      call init(pd,2d0)
      call init(pe,2d0)
c
      do 10 i=1,10
        e(i)=b(int(a(i)))+c(i)+d(i)+a(i)
        d(i)=b(i)*c(int(a(i)))*a(i)
   10 continue
c
      write(6,*) '***** test *****'
      write(6,100) e
  100 format((' ',6g13.5))
      stop
      end
      subroutine init(pa,d)
      double precision d,a(20)
      pointer(pa,a)
      do 10 i=1,20
        a(i)=d*i
   10 continue
      end
