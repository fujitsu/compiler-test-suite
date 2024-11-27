         interface
    subroutine sub(dummy,i,j,ia,xx1,xx2,fun)
    optional dummy
  interface
   function fun()
   end function
  end interface
  type x
   sequence
   integer x1,x2
  end type
  type (x)::xx1,xx2
    integer ia(:)
    value j
    end subroutine
  end interface
  type x
   sequence
   integer x1,x2
  end type
  type (x)::xx=x(5,6)
  external fun
  i=1
  call sub(i=i,j=%val(10),ia=(/1,2,3,4/),xx1=xx,xx2=x(7,8),fun=fun)
print *,'pass'
  end
  subroutine sub(dummy,i,j,ia,xx1,xx2,fun)
  optional dummy
  interface
   function fun()
   end function
  end interface
  type x
   sequence
   integer x1,x2
  end type
  type (x)::xx1,xx2
  integer ia(:)
    value j
  call sub2(i,j,ia,xx1,xx2,fun)
  end
  subroutine sub2(i,j,ia,xx1,xx2,fun)
  type x
   sequence
   integer x1,x2
  end type
  type (x)::xx1,xx2
  integer ia(*)
  if (any(abs((/i,j,ia(1:4),xx1%x1,xx1%x2,xx2%x1,xx2%x2,int(fun())/)-(/1,10,1,2,3,4,5,6,7,8,100/))>.001))write(6,*) "NG"
  end
  function fun()
  fun=100.
  end
