      integer::a(5),b(5)
      a=1
      b=2
      n=0
      if (a(1)==a(2).and.a(3)==a(4).and.a(5)==10) then
        write(6,*) "NG"
      elseif (b(1)==b(2).and.b(3)==b(4).and.b(5)==10) then
        write(6,*) "NG"
      else
        n=n+1
      endif

      if ((any(a/=1).or.any(b/=2)).and.n/=1) write(6,*) "NG"

      a=(/1,0,0,0,0/)
      b=(/2,0,0,0,0/)
      if (all(a/=1).or.all(b/=2)) write(6,*) "NG"

      print *,'pass'
      end
