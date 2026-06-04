      pointer (ip,a)
      integer a(10),b(10)
      data b /10*0/
      ip=loc(b)
      call sub01(ip,10)
      do 10 i=1,10
10      if (a(i).ne.i) print *,'sub01 err'
      call sub02(ip,10)
      do 20 i=1,10
20      if (a(i).ne.i*10) print *,'sub02 err'
      call sub03(ip,10)
      do 30 i=1,10
30      if (a(i).ne.i) print *,'sub03 err'
      call sub04(ip,10)
      do 40 i=1,10
40      if (a(i).ne.i*20) print *,'sub04 err'
      print *,'pass'
      end

      subroutine sub01(ip,in)
      pointer (ip,a)
      integer a(*)
      do 10 i=1,in
10      a(i)=i
      end 

      subroutine sub02(ip,in)
      pointer (ip,a)
      integer a(in)
      do 10 i=1,in
10      a(i)=i*10
      end 

      subroutine sub03(ip,in)
      pointer (ip,ia(*))
      do 10 i=1,in
10      ia(i)=i
      end 

      subroutine sub04(ip,in)
      pointer (ip,ia(in))
      do 10 i=1,in
10      ia(i)=i*20
      end 
