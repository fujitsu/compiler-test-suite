    program forallspeed
     integer::a(5,5)
      a=reshape( (/((/1,2,3,4,5/),i=1,5)/) ,(/5,5/) )
      call sub(a,5,5)
      if (any(a(:,1)/=(/1,2,3,4,5/))) print *,'error1'
      if (any(a(:,2)/=(/1,2,3,4,5/))) print *,'error2'
      if (any(a(:,3)/=(/1,121,222,323,424/))) print *,'error3'
      if (any(a(:,4)/=(/1,2,3,4,5/))) print *,'error4'
      if (any(a(:,5)/=(/1,141,242,343,444/))) print *,'error5'
      print *,'pass'
    end program

    subroutine sub(a,m,n)
     integer::a(m,n)
      forall(k=m:1:-1)
      forall(i=n-1:1:-2)
       forall(j=m-1:1:-1 , a(j,i)==a(k,i))
        a(j+1,i+1)=k*100+i*10+j
       end forall
      end forall
      end forall
    end subroutine
