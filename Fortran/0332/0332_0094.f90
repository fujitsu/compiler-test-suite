    program foralls
      integer(4)::a(5,3,2)=1

      forall(i3=1:2,i2=1:3,i1=1:5,all(a==1).and.1<i1.and.i1<5)
       a(i1:,i2,i3)=a(i1:,i2,i3)+i1
      endforall

      if (any( pack(a,mask=.true.) /=   &
               (/((/1,3,4,5,5/),i=1,6)/) )) print *,'a->',a
      print *,'pass'
    end program
