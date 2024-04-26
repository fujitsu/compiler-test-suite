   program foralls
     real(8),target::t(10)
      t=(/1.0d0,2.0d0,3.0d0,4.0d0,5.0d0,6.0d0,7.0d0,8.0d0,9.0d0,1.0d1/)
      forall(j=1:5)
      forall(i=1:9)
        t(i)=t(i+1)+0.1d0
      endforall
      endforall
      if (any(t/=&
          (/2.1d0,3.1d0,4.1d0,5.1d0,6.1d0,7.1d0,8.1d0,9.1d0,1.01d1,1.0d1/))) &
          print *,'t->',t
      print *,'pass'
    end program foralls
