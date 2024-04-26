    program forallspeed
      integer::a(5,3)
      a=reshape( (/((/1,2,3,4,5/),i=1,3)/) ,(/5,3/) )
      forall(i=2:3-1)
       forall(j=2:5-1 , a(j,i)<=3)
        a(j+1,i+1)=0
       end forall
      end forall
      if (any(a(:,1)/=(/1,2,3,4,5/))) print *,'error1'
      if (any(a(:,2)/=(/1,2,3,4,5/))) print *,'error2'
      if (any(a(:,3)/=(/1,2,0,0,5/))) print *,'error3'
      print *,'pass'
    end
