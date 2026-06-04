       type z
          integer(8)::z1
       end type
  type t
     integer(8)::du
     class(z),allocatable::name
  end type
  type(t)::v
       v%name=z(11)
       if (v%name%z1/=11) print *,2828
     print *,'sngg662r : pass'
     end 

