    program main
     integer(4),target::t(3,2)
     integer(4),target::tt(3,2)=reshape( (/1,2,3,4,5,6/) , (/3,2/) )
      t=reshape( (/1,2,3,4,5,6/) , (/3,2/) )
      if (.not.all(t==tt)) print *,'error ',t
      print *,'pass'
    end program main
