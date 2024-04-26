      character a(10),b*10,chk*2
      data a/'1','2','3','4','5','6','7','8','9','0'/
      data b/'1234567890'/
      i=1
      call sub1(a(i))
      call sub2(b(i:))
      print *,'*** ',chk(a(i),b(i:)),' ***'
      print *,a
      print *,b
      end
      subroutine sub1(x)
      character*10 x
      i=1
      x(i:i)='*'
      i=i+1
      x(i:i)='*'
      i=i+1
      x(i:i)='*'
      return
      end
      subroutine sub2(y)
      character y(10)
      i=3
      y(i)='*'
      i=i-1
      y(i)='*'
      i=i-1
      y(i)='*'
      return
      end
      character*2 function chk(s,t)
      character*10 s,t
      if (s.eq.t) then
       chk='ok'
      else
       chk='ng'
       end if
      return
      end
