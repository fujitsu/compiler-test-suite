     1  module m1
     2  contains
     3  subroutine t1(k,a)
     4  integer,optional::a(2)
     5  if (k==0) then
     6   if (present(a)) print *,101
     7  else
     8   if (.not.present(a)) print *,102
     9   if (any(a/=[1,2])) print *,103
    10  endif
    11  end subroutine
    12  subroutine t2(k,a)
    13  character(2),optional::a(2)
    14  if (k==0) then
    15   if (present(a)) print *,201
    16  else
    17   if (.not.present(a)) print *,202
    18   if (any(a/=['12','34'])) print *,203
    19  endif
    20  end subroutine
    21  end
    22  subroutine s1
    23  use m1
    24  integer,pointer::x(:,:)=>null()
    25  character(4),pointer::y1=>null()
    26  character(4),pointer::y2(:)=>null()
    27  call t1(0,x)
    28  call t1(0,null())
    29  call t1(0,null(x))
    30  allocate(x,source=reshape([1,2],[2,1]))
    31  call t1(1,x)
    33  call t2(0,y1)
    34  call t2(0,null())
    35  call t2(0,null(y1))
    36  allocate(y1,source='1234')
    37  call t2(1,y1)
    39  call t2(0,y2)
    40  call t2(0,null())
    41  call t2(0,null(y2))
    42  allocate(y2,source=['1234'])
    43  call t2(1,y2)
    44  end
    45  call s1
    46  print *,' pass'
    47  end

