    program foralls
      call sub()
      call sub1()
      print *,'pass'
    end program

    subroutine sub()
     integer(4)::a(5),b(5),c(5),x(5),y(5),z(5)
      a=(/1,2,3,4,5/)
      b=0
      forall(i=1:5 , a(i)>=3)
        a(i)=1
        forall (j=1:5 , a(j)==1)
          b(i)=b(i)+1   
        endforall
        a(i)=a(i)+1
      end forall
      if (any(a(:)/=(/1,2,2,2,2/))) print *,'error1'
      if (any(b(:)/=(/0,0,1,1,1/))) print *,'error2'
    end subroutine

    subroutine sub1()
     integer(4)::a(5),b(5),c(5),x(5),y(5),z(5)
     equivalence(a(1),x(1))
     equivalence(b(1),y(1))
     equivalence(c(1),z(1))
      a=(/1,2,3,4,5/)
      b=0
      forall(i=1:5 , a(i)>=3)
        a(i)=1
        forall (j=1:5 , a(j)==1)
          b(i)=b(i)+1   
        endforall
        a(i)=a(i)+1
      end forall
      if (any(a(:)/=(/1,2,2,2,2/))) print *,'error3'
      if (any(b(:)/=(/0,0,1,1,1/))) print *,'error4'
    end subroutine
