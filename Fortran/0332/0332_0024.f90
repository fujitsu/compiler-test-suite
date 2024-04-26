    program foralls
     logical(8)::a(10),b(10)
     integer(1)::c(10)
      a=.true.
      b=(/.true.,.true.,  &
          .false.,.false.,&
          .true.,.true.,  &
          .false.,.false.,&
          .true.,.false./)
      forall (i=1:10 ,a(i).or.b(i))
        c(i)=i
        a(i)=.false.
      endforall
      err1=0
      if (any(c/=(/1,2,3,4,5,6,7,8,9,10/))) err1=1
      if (err1/=0) print *,'error1'
      err1=0
      do i=1,10
        if (a(i)) err1=1
      enddo
      if (err1/=0) print *,'error2'
      print *,'pass'
    end program
