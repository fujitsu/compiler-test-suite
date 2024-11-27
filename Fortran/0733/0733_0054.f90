      real,target,dimension(9)::a2
      common/com/a1,a2
      real,dimension(10)::b
      equivalence(a1,b)
      a2=(/(i,i=3,11)/)
      a1=2.0
      if (any(abs(b-(/(i,i=2,11)/))>0.0001))print *,'error-1'
      print *,'pass'
      end
