    module mod
      type zz
        integer(4),allocatable,dimension(:)::ia
        character(9),allocatable,dimension(:)::ca
      endtype
    end module

    program foralls
     use mod
     type(zz),allocatable,dimension(:)::a

      allocate(a(5))

      forall(i=1:5,.not.allocated(a(i)%ia))
        a(i)=zz((/(j,j=1,i)/),(/('OpenMP2.0',j=1,i+1)/))
      endforall

      do i=1,5
        if (allocated(a(i)%ia)) then 
          if (size(a(i)%ia)/=i) print *,'fail'
          if (any(a(i)%ia/=(/(j,j=1,i)/))) print *,'fail'
          if (size(a(i)%ca)/=i+1) print *,'fail'
          if (any(a(i)%ca/='OpenMP2.0')) print *,'fail'
          deallocate(a(i)%ia)
          deallocate(a(i)%ca)
        else
          print *,'error',i
        endif
      enddo
      deallocate(a)
      print *,'pass'
    end program foralls
