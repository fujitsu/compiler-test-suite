    program foralls
     integer(4)::a(3)=0,b(4,3)=0
      call sub(a,b)
      if (any(a/=(/2,4,0/))) print *,'a->',a
      if (any(b(:,1)/=(/0,1,0,0/))) print *,'b(:,1)->',b(:,1)
      if (any(b(:,2)/=(/0,1,0,0/))) print *,'b(:,1)->',b(:,1)
      if (any(b(:,3)/=(/0,0,0,0/))) print *,'b(:,1)->',b(:,1)
      print *,'pass'
    end program
    subroutine sub(a,b)
     integer(4)::a(3),b(4,3)
      forall(i=1:3 ,i<3)
        a(i)=i
        forall (j=1:3 , a(j)==2)
          b(j,i)=1
        endforall
        a(i)=a(i)+i
      endforall
    end subroutine
