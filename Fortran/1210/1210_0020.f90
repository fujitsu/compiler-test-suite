       type z
          integer(8)::z1
       end type
          class(z),allocatable::name
      allocate(name,source=z(1))
       name=z(11)
       if (name%z1/=11) print *,2828
     print *,'sngg660r : pass'
     end program

