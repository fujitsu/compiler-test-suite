    program forallspeed
      integer::a(5,3)
      a=reshape( (/((/1,2,3,4,5/),i=1,3)/) ,(/5,3/) )
      forall(k=1:5)
      forall(i=1:3-1)
       forall(j=1:5-1 , a(j,i)==a(k,i))
        a(j+1,i+1)=k*100+i*10+j
       end forall
      end forall
      end forall
      if (any(a(:,1)/=(/1,2,3,4,5/))) print *,'error1'
      if (any(a(:,2)/=(/1,111,212,313,414/))) print *,'error2'
      if (any(a(:,3)/=(/1,121,222,323,424/))) print *,'error3'
      print *,'pass'
    end program
