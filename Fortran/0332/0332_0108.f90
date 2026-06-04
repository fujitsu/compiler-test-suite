    module mod
      type y1
        integer(4),allocatable,dimension(:)::y1ia
      end type
      type y2
        integer(4),allocatable,dimension(:)::y2ia
      end type
    end module
    module mod1
     use mod
      type zz
        type(y1)::s1
        type(y2)::s2
      endtype
    end module

    program foralls
     use mod1
     type(zz),allocatable,dimension(:)::a

      allocate(a(5))

      forall(i=1:4)
        a(i)=zz( y1((/(k,k=1,i)/)) ,y2((/(k,k=2,i+1)/)) )
        a(i+1)=a(i)
      endforall

      if (any(a(1)%s1%y1ia/=(/1/))) print *,'fail'
      if (any(a(2)%s1%y1ia/=(/1/))) print *,'fail'
      if (any(a(3)%s1%y1ia/=(/1,2/))) print *,'fail'
      if (any(a(4)%s1%y1ia/=(/1,2,3/))) print *,'fail'
      if (any(a(5)%s1%y1ia/=(/1,2,3,4/))) print *,'fail'
      if (any(a(1)%s2%y2ia/=(/2/))) print *,'fail'
      if (any(a(2)%s2%y2ia/=(/2/))) print *,'fail'
      if (any(a(3)%s2%y2ia/=(/2,3/))) print *,'fail'
      if (any(a(4)%s2%y2ia/=(/2,3,4/))) print *,'fail'
      if (any(a(5)%s2%y2ia/=(/2,3,4,5/))) print *,'fail'

      do i=1,5
        deallocate(a(i)%s1%y1ia)
        deallocate(a(i)%s2%y2ia)
      enddo
      deallocate(a)
      print *,'pass'
    end program foralls
