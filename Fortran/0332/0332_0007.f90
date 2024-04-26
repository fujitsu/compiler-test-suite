    program forallspeed
      integer::a(5,3)
      a=reshape( (/((/1,2,3,4,5/),i=1,3)/) ,(/5,3/) )
      call sub(a,5,3)
      if (any(a(:,1)/=(/1,2,3,4,5/))) print *,'error1'
      if (any(a(:,2)/=(/1,111,212,313,414/))) print *,'error2'
      if (any(a(:,3)/=(/1,121,222,323,424/))) print *,'error3'
      print *,'pass'
    end program

    subroutine sub(a,m,n)
      integer::a(m,n)
      forall(k=1:m)
      forall(i=1:n-1)
       forall(j=1:m-1 , a(j,i)==a(k,i))
        a(j+1,i+1)=k*100+i*10+j
       end forall
      end forall
      end forall
    end subroutine
