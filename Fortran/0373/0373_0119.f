      program main
      parameter(n=20)
      integer*8 a(n),b(n),c(n),d(n),e(n)
      integer*8 r1(n),r2(n),r3(n),r4(n),r5(n)
      call init(a,b,c,d,e)
      do 10 i=1,n,4
         r1(i+0)=a(i+0)
         r2(i+0)=b(i+0)
         r3(i+0)=c(i+0)
         r4(i+0)=d(i+0)
         r5(i+0)=e(i+0)
         r1(i+1)=a(i+1)
	 r2(i+1)=b(i+1)
         r3(i+1)=c(i+1)
	 r4(i+1)=d(i+1)
	 r5(i+1)=e(i+1)
         r1(i+2)=a(i+2)
	 r2(i+2)=b(i+2)
         r3(i+2)=c(i+2)
	 r4(i+2)=d(i+2)
	 r5(i+2)=e(i+2)
         r1(i+3)=a(i+3)
	 r2(i+3)=b(i+3)
         r3(i+3)=c(i+3)
	 r4(i+3)=d(i+3)
	 r5(i+3)=e(i+3)
 10   continue
      call output(r1,r2,r3,r4,r5)
      end

      subroutine init(a,b,c,d,e)
      parameter(n=20)
      integer*8 a(n),b(n),c(n),d(n),e(n)
      do 10 i=1,n
         a(i)=i+100
         b(i)=i+200
         c(i)=i+300
         d(i)=i+400
         e(i)=i+500
 10   continue
      end

      subroutine output(r1,r2,r3,r4,r5)
      parameter(n=20)
      integer*8 r1(n),r2(n),r3(n),r4(n),r5(n)
      write(6,*) "[r1] ",r1
      write(6,*) "[r2] ",r2
      write(6,*) "[r3] ",r3
      write(6,*) "[r4] ",r4
      write(6,*) "[r5] ",r5
      end
