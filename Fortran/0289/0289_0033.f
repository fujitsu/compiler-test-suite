      program main
      complex a(6),b,c,fun1,fun2,ans(6),ans1,ans2,ans3,ans4,ans5,ans6
      data b,c/(.111,.222),(.333,.444)/
      parameter(ans1=(.111,.222)+(.333,.444)
     1         ,ans2=ans1-((.111,.222)+(.333,.444))
     2         ,ans3=ans1-((.111,.222)-(.333,.444))
     3         ,ans4=-((.111,.222)-(.333,.444))/2.
     4         ,ans5=ans1**2+((.111,.222)-(.333,.444))**2
     5         ,ans6=(.111,.444)+(.333,.222))
      data ans/ans1,ans2,ans3,ans4,ans5,ans6/
      common no

      common aa
      complex aa(6)
      pointer ($a,a)
      $a = loc(aa)

      n=1
      a(n)=fun1(b,c)
      n=n+1
      a(n)=a(n-1)-fun1(b,c)
      n=n+1
      a(n)=fun1(b,c)-fun2(b,c)
      n=n+1
      a(n)=-fun2(b,c)/2.
      n=n+1
      a(n)=fun1(b,c)**2+fun2(b,c)**2
      n=n+1
      a(n)=fun1(cmplx(real(b),aimag(c)),cmplx(real(c),aimag(b)))
      no=0
      do 10 i=1,6
       if (a(i).ne.ans(i)) call prt(i,a(i),ans(i))
   10  continue
      if (no.eq.0) print *,'*** ok ***'
      end
      complex function fun1(x,y)
      complex x,y
      fun1=x+y
      return
      end
      complex function fun2(x,y)
      complex x,y
      fun2=x-y
      end
      subroutine prt(n,x,y)
      complex x,y
      common no
      no=no+1
      write(6,100) n,x,y,x-y
  100 format(1h ,'*** ng = ',i2,' comp=',g15.7,',',g15.7
     1     ,/1h ,'         ',2x,' ans =',g15.7,',',g15.7
     2     ,/1h ,'         ',2x,' def =',g15.7,',',g15.7)
      return
      end
