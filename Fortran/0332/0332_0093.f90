    program foralls
      integer(4)::a(5,3,2)=1

      forall(i=1:5,all(a==1).and.1<i.and.i<5)
       a(i:,:,:)=a(i:,:,:)+i
      endforall

      if (any( pack(a,mask=.true.) /=   &
               (/((/1,3,4,5,5/),i=1,6)/) )) print *,'a->',a
      print *,'pass'
    end program
