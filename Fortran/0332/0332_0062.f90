    program foralls
     integer(1)::a(5,3)
      a=reshape( (/11,12,13,14,15, &
                   21,22,23,24,25, &
                   31,32,33,34,35/) , (/5,3/) )
      call sub1(a,5,3)
      if (any(a /= reshape( (/35,34,33,32,31, &
                              25,24,23,22,21, &
                              15,14,13,12,11/) , (/5,3/) ) )) print*,'#a->',a
      call sub2(a,5,3)
      if (any(a /= reshape( (/12,13,14,15,16, &
                              22,23,24,25,26, &
                              32,33,34,35,36/) , (/5,3/) ) )) print*,'##a->',a
      call sub3(a,5,3)
      if (any(a /= reshape( (/35,34,33,32,31, &
                              25,24,23,22,21, &
                              15,14,13,12,11/) , (/5,3/) ) )) print*,'###a->',a
      print *,'pass'
    end program foralls

    subroutine sub1(a,m,n)
     integer(1)::a(m,n)
      forall (j=1:n)
        forall (i=1:m)
          a(i,j)=a(m-i+1,n-j+1)
        endforall
      endforall
    end subroutine sub1

    subroutine sub2(a,m,n)
     integer(1)::a(m,n)
      forall (j=1:n)
        forall (i=1:m)
          a(i,j)=a(m-i+1,n-j+1)+1
        endforall
      endforall
    end subroutine sub2

    subroutine sub3(a,m,n)
     integer(1)::a(m,n)
      forall (j=1:n)
       forall (k=n:1:-1)
        forall (i=1:m)
          a(i,j)=a(m-i+1,n-j+1)-1
        endforall
       endforall
      endforall
    end subroutine sub3
