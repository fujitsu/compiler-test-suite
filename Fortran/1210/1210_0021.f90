       type z
          integer(8)::z1
       end type
          class(z),allocatable::name
       name=z(11)
       if (name%z1/=11) print *,2828
     print *,'sngg661r : pass'
     end 

