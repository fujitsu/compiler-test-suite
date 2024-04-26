    program foralls
     integer(4)::a(10),b(10)
      a=(/1,2,3,4,5,6,7,8,9,0/)
      b=(/0,9,8,7,6,5,4,3,2,1/)
      call sub(a,b,1,10)
      if (any(a/=(/1,2,4,5,6,7,8,9,10,0/))) print *,'a->',a
      if (any(b/=(/0,10,9,8,7,6,5,4,3,2/))) print *,'b->',b
      print *,'pass'
    end program

    subroutine sub(a,b,m,n)
     integer(4)::a(m:n),b(m:n)
      forall(i=m:n:m , a(i)>=3)
        a(i)=a(i)+1
        forall (j=m+1:n-1:m , b(i)>=5)
          b(j:n)=b(j:n)+1   
        endforall
      end forall
    end subroutine
