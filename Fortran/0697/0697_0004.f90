  type x
     integer(8) x
     integer(1) y
  end type
  type(x),parameter:: c(2)=x(1,2)
  type(x),pointer:: p(:)
  type(x),target:: t(3)
  parameter(i=sizeof(c))
  p=>t(1:3:2)
  if (sizeof(p)/=32)print *,'error'
  if (i/=32)print *,'error-2'
  print *,'pass'
end
