    program foralls
      integer(4)::a(5),b(5)
      integer(4)::c(5,5)=0
      a=(/1,2,3,4,5/)
      b=(/5,4,3,2,1/)
      forall(i=1:5 , b(i)>=3)
        b(i)=a(i)
        forall(j=1:5 , c(j,i)==0)
          c(j,i)=a(i)*b(j)
        endforall
      endforall
      if (any(a(:)/=(/1,2,3,4,5/))) print *,'error1'
      if (any(b(:)/=(/1,2,3,2,1/))) print *,'error2'
      if (any(c(:,1)/=(/1,2,3,2,1/))) print *,'error31'
      if (any(c(:,2)/=(/2,4,6,4,2/))) print *,'error32'
      if (any(c(:,3)/=(/3,6,9,6,3/))) print *,'error33'
      if (any(c(:,4)/=(/0,0,0,0,0/))) print *,'error34'
      if (any(c(:,5)/=(/0,0,0,0,0/))) print *,'error35'
      print *,'pass'
    end program
