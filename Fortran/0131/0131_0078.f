c
      program snrta
        integer     l1,l2,a,b,c,d,e
        equivalence (l1,c,e)
c
        a=10
        b=20
        c=0
        d=30
   10   assign 40 to l2
        go to l2(20,30,40,50,60)
   20   c=c+a
        assign 50 to l1
        go to l1
   30   assign 60 to c
        d=d+b
        a=d-a
        go to c
   40   assign 20 to l2
        go to l2
   50   assign 30 to e
        go to e
   60   if(a.eq.40) then
         print *,'*** a *** ok ***'
        else
         print *,'*** a *** ng ***'
        endif
        if(b.eq.20) then
         print *,'*** b *** ok ***'
        else
         print *,'*** b *** ng ***'
        endif
        if(d.eq.50) then
         print *,'*** d *** ok ***'
        else
         print *,'*** d *** ng ***'
        endif
        stop
      end
