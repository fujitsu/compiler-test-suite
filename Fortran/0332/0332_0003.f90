    program forallspeed
      integer::a(5,3)
      a=reshape( (/((/1,2,3,4,5/),i=1,3)/) ,(/5,3/) )
      call sub(a,5,3)
      if (any(a(:,1)/=(/1,2,3,4,5/))) print *,'error1'
      if (any(a(:,2)/=(/1,2,3,4,5/))) print *,'error2'
      if (any(a(:,3)/=(/1,2,0,4,5/))) print *,'error3'
      print *,'pass'
    end program
    subroutine sub(a,n,m)
      integer::a(n,m)
      forall(i=2:m-1)
       forall(j=2:n-1 , a(j,i)==2)
        a(j+1,i+1)=0
       end forall
      end forall
    end subroutine
