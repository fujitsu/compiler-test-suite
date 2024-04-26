    program foralls
     integer(4)::a(5),b(5)

      a=(/1,2,3,4,5/)
      b=(/5,4,3,2,1/)
      call sub(a,b,5)
      if (any(a/=(/1,2,2,2,2/))) print *,'a->',a
      if (any(b/=(/6,5,4,3,2/))) print *,'b->',b
      print *,'pass'
    end program

    subroutine sub(a,b,n)
     integer(4)::a(n),b(n)

      forall(i=1:n , a(i)>=3)
        a(i)=1
        forall (j=1:n , b(i)>=3)
          b(j)=b(j)+1   
        endforall
        a(i)=a(i)+1
      end forall
    end subroutine
