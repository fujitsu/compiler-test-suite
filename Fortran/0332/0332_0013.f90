    program abc
     integer(4)::a(5),b(5)

      a=(/1,2,3,4,5/)
      b=1
      call sub1(a,b,5)
      if (any(a/=(/1,2,1,1,1/))) print *,'err1'
      if (any(b/=(/1,1,2,2,2/))) print *,'err2'
      a=(/1,2,3,4,5/)
      b=1
      call sub2(a,b,5)
      if (any(a/=(/1,2,4,5,6/))) print *,'err3'
      if (any(b/=(/1,1,3,4,5/))) print *,'err4'
      print *,'pass'
    end program

    subroutine sub1(a,b,n)
     integer(4)::a(n),b(n)

      forall(i=1:n , a(i)>=3)
        forall (j=1:n , a(j)>=1)
          b(i)=b(i)+1   
        endforall
        a(i)=1
      end forall
    end subroutine

    subroutine sub2(a,b,n)
     integer(4)::a(n),b(n)

      forall(i=1:n , a(i)>=3)
        forall (j=1:n , a(j)>=1)
          b(i)=b(i)+i   
        endforall
        b(i)=i
        a(i)=a(i)+1
      end forall
    end subroutine
