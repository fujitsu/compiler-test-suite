   program foralls
     real(16),target::t(10)
      t=(/1.0q0,2.0q0,3.0q0,4.0q0,5.0q0,6.0q0,7.0q0,8.0q0,9.0q0,1.0q1/)
      forall(i=2:9)
      forall(j=1:5:3)
        t(i+1)=t(i-1)+0.2q0
      endforall
      endforall
      if (any(t/=&
          (/1.0q0,2.0q0,1.2q0,2.2q0,3.2q0,4.2q0,5.2q0,6.2q0,7.2q0,8.2q0/))) &
          print *,'t->',t
      print *,'pass'
    end program foralls
