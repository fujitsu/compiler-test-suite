    program foralls
     integer(4)::a(3)=4,b(4,3)=0,c(3)=1
      call sub(a,b,c)
      if (any(a/=(/4,4,4/))) print *,'a->',a
      if (any(b(:,1)/=(/0,0,0,0/))) print *,'b(:,1)->',b(:,1)
      if (any(b(:,2)/=(/0,0,0,0/))) print *,'b(:,1)->',b(:,1)
      if (any(b(:,3)/=(/0,0,0,0/))) print *,'b(:,1)->',b(:,1)
      if (any(c/=(/1,1,1/))) print *,'c->',c
      print *,'pass'
    end program
    SUBROUTINE SUB(A,B,C)
     integer(4)::a(3),b(4,3),c(3)
      forall(i=1:3 ,a(i)<3)
        c(i)=i
        a(i)=a(i)+i
        forall (j=1:3 , a(j)==2)
          b(j,i)=1
        endforall
      endforall
    end subroutine
