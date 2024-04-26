      program forallspeed
      integer::a(5,3)
      a=reshape( (/((/1,2,3,4,5/),i=1,3)/) ,(/5,3/) )
      forall(j=2:5-1,i=2:3-1 , a(j,i)==2)
        a(j+1,i+1)=0
      end forall
      if (any(a(:,1)/=(/1,2,3,4,5/))) print *,'error1'
      if (any(a(:,2)/=(/1,2,3,4,5/))) print *,'error2'
      if (any(a(:,3)/=(/1,2,0,4,5/))) print *,'error3'
      print *,'pass'
      end
