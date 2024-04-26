      implicit integer (a,b,c,d,o-z)
      integer      a,b,ans
      integer      x,y
      integer      f2add,f3sub
      character*10 chk

      integer wi(5)

      pointer ($a,a),($b,b),($ans,ans)
      pointer ($x,x),($y,y)

      add(a,b)=a*2+b*2-f2add(a,b)
      sub(a,b)=f3sub(add(a*4,b*4),add(a*3,b*3))-b*2

      $a      = loc( wi(1) )
      $b      = loc( wi(2) )
      $ans    = loc( wi(3) )
      $x      = loc( wi(4) )  
      $y      = loc( wi(5) ) 

      x=123
      y=-654
      if (add(x,y).eq.sub(x,y)) then
       print *,add(x,y),sub(x,y)
       stop 16
      else if (add(x,y)-sub(x,y).lt.add(x,y)) then
       ans=add(x,y)-sub(x,y)
       do 10 while(ans.gt.add(x,y))
        ans=sub(ans,add(x,y))
   10   continue
       print *,chk(sub(ans*3,add(ans,ans*2)))
      else
       print *,add(x,y),sub(x,y)
       stop 16
       end if
      end
      integer function f2add(x,y)
      implicit integer(a-z)
      f2add=x-y
      f2add=f2add+y*2
      end
      function f3sub(x,y)
      implicit integer(a-z)
      f3sub=f2add(x,y)-y*2
      return
      end
      character*10 function chk(ans)
      integer ans
      chk='***    ***'
      if (ans.eq.0) then
       chk(5:6)='ok'
      else
       chk(5:6)='ng'
       end if
      return
      end
