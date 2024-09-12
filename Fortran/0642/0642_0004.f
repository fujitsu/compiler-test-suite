      call pro
      print *,'pass'
      end
      subroutine pro
      structure /str/
        integer a
        integer b(10)
        character*10 c
        character*10 d(10)
      endstructure
      record /str/ z,y(10)
      z.a=120
      z.c='zxcvbnmasd'
      do 10 i=1,10
        z.b(i)=34
        z.d(i)='asdfghjklq'
        y(i).a=100
        y(i).c='abcdefghij'
        do 10 j=1,10
          y(i).b(j)=10
   10     y(i).d(j)='1234567890'
      call sub(z.a,z.b(5),z.c(1:5),z.d(5)(1:5))
      z.b(1) = 100
      call sub1(z.b)
      call sub2(y)
      end
      subroutine sub(a,b,c,d)
      integer a(4),b(*)
      character*5 c(10),d(10),e*10
      e(1:10)=c(1)(1:5)//d(2)(1:5)
      i=a(1)+b(1)
      
      end
      subroutine sub1(b)
      integer b
      print *,b
      end
      subroutine sub2(y)
      structure /str/
       integer a
       integer b(10)
       character*10 c
       character*10 d(10)
      endstructure
      record /str/ y,z
      z=y
      end
