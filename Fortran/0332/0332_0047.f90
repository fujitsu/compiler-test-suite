    program foralls
     integer(4)::a(3)=(/1,1,2/),b(4,3)=0,c(3)=1
      call sub(a,b,c)
      if (any(a/=(/3,3,2/))) print *,'a->',a
      if (any(b(:,1)/=(/1,1,0,0/))) print *,'b(:,1)->',b(:,1)
      if (any(b(:,2)/=(/1,1,0,0/))) print *,'b(:,1)->',b(:,1)
      if (any(b(:,3)/=(/0,0,0,0/))) print *,'b(:,1)->',b(:,1)
      if (any(c/=(/1,2,1/))) print *,'c->',c
      print *,'pass'
    end program
    subroutine sub(a,b,c)
     integer(4)::a(3),b(4,3),c(3)
      forall(i=1:3 ,a(i)==1)
        c(i)=i
        a(i)=a(i)+2
        forall (j=1:3 , a(i)==3.and.c(j)==j)
          b(j,i)=1
        endforall
      endforall
    end subroutine
