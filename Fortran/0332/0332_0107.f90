    module mod
      type yy
        integer(4),allocatable,dimension(:)::yia
      end type
      type zz
        integer(4),allocatable,dimension(:)::zia
        character(9),allocatable,dimension(:)::zca
        type(yy)::ss
      endtype
    end module

    program foralls
     use mod
     type(zz),allocatable,dimension(:)::a

      allocate(a(5))
      allocate(a(3)%zia(1))

      forall(i=1:5,.not.allocated(a(i)%zia))
        a(i)=zz( (/(j,j=1,i)/), (/('OpenMP2.0',j=1,i+1)/), yy((/(k,k=1,i)/)) )
      endforall

      do i=1,5
        if (allocated(a(i)%zca)) then 
          if (size(a(i)%zia)/=i) print *,'fail'
          if (any(a(i)%zia/=(/(j,j=1,i)/))) print *,'fail'
          if (size(a(i)%zca)/=i+1) print *,'fail'
          if (any(a(i)%zca/='OpenMP2.0')) print *,'fail'
          if (size(a(i)%ss%yia)/=i) print *,size(a(i)%ss%yia)
          if (any(a(i)%ss%yia/=(/(j,j=1,i)/))) print *,a(i)%ss%yia
          deallocate(a(i)%zia)
          deallocate(a(i)%zca)
        else
          if (i/=3) print *,'error',i
        endif
      enddo
      deallocate(a)
      print *,'pass'
    end program foralls
