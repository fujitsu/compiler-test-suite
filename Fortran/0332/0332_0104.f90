    module mod
      type zz
        integer(4),allocatable,dimension(:)::ia
      endtype
    end module

    program foralls
     use mod
     type(zz),allocatable,dimension(:)::a

      allocate(a(5))

      forall(i=1:5)
        a(i)=zz((/(j,j=1,i)/))
      endforall

      do i=1,5
        if (allocated(a(i)%ia)) then 
          if (size(a(i)%ia)/=i) print *,'fail'
           if (any(a(i)%ia/=(/(j,j=1,i)/))) print *,'fail'
          deallocate(a(i)%ia)
        else
          print *,'error',i
        endif
      enddo
      deallocate(a)
      print *,'pass'
    end program foralls
