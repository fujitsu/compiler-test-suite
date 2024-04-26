subroutine s1
  type x
    integer x1
  end type
  type xx
    type(x),allocatable::xx1(:)
  end type
  type yy
    type(x),pointer::xx1(:)
  end type
  type(xx)::v1
  type(yy)::v2
end
call s1
print *,'pass'
end


