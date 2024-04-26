    program foralls
     real(8),allocatable::t(:)
      allocate(t(10))
      t=(/1.0d0,2.0d0,3.0d0,4.0d0,5.0d0,6.0d0,7.0d0,8.0d0,9.0d0,1.0d1/)

      do j=1,3
       if (j>2) goto 1000
        forall(k=3:5)
        forall(i=1:9,allocated(t))
          t(i)=t(i+1)+1.0d-1
        endforall
        endforall
 1000  continue
      enddo     
        if (any( t(1:10)-(/3.2d0,4.2d0,5.2d0,6.2d0,7.2d0, &
                         8.2d0,9.2d0,10.2d0,10.1d0,10.0d0/) > 1.0d-8)) &
                                                              print *,'t->',t
      print *,'pass'
    end program foralls
