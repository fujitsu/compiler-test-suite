    program foralls
     logical(4)::a(10),b(10)
     integer(4)::c(10)=0
      a=.true.
      b=(/.true.,.true.,   &
          .false.,.false., &
          .true.,.true.,   &
          .false.,.false., &
          .true.,.false./)
      forall (i=1:10 ,a(i).and.b(i))
        a(i)=.false.
        c(i)=i
      endforall
      err1=0
      if (any(c/=(/1,2,0,0,5,6,0,0,9,0/))) err1=1
      do i=1,10
        if (a(i)) then
          if(c(i)/=0) err1=1
        else
          if(c(i)/=i) err1=1
        endif
      enddo
      if (err1/=0) print *,'error'
      print *,'pass'
    end program
