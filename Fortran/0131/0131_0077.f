c
      program aad2
        real a(1)
        real b,d
        a(1)=1.
        d=9.
        b=fun1(d,a(1))
        if(a(1).ne.1.)goto 900
        print *,'***** a(1) ok ***** a(1)=',a(1)
        if(b.ne.8.)goto 900
        print *,'***** ok *****'
        stop
 900    print *,'***** ng *****'
        print *,'*** a=',a,' b=', b
        stop
      end
      real function fun1(a,b)
        fun1=a-b
      end
