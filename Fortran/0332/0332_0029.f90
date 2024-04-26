    program foralls
      integer(4)::a(10)=0
      n=10
      k1=8
      call sub(k1,a,n)
      if (k1/=7) print *,'k1->',k1
      if (any(a/=(/1,0,3,0,5,0,7,0,0,0/))) print *,'a->',a
      print *,'pass'
    end program

    subroutine sub(k1,a,n)
      integer(4)::a(n)
      forall (i=1:n:2,k1>=i)
        a(i)=i
        k1=i
      endforall
    end subroutine
