
       type y
          integer::y1,y2
          integer    ,allocatable::name
       end type
       type :: x
          integer(8)::x1
          type(y)    ,allocatable::y2(:)
       end type
       type(x),allocatable:: z(:)
       allocate(z(2))
       allocate(z(2)%y2(3))
       allocate(z(2)%y2(3)%name)
       deallocate(z)
     print *,'sngg239p : pass'
     end

