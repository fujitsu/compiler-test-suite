  type x
     integer(8) x
     integer(1) y
  end type
  type(x),parameter:: c(2)=x(1,2)
  type(x),pointer:: p(:,:)
  type(x),target:: t(3,3)
  p=>t(1:3:2,1:3:2)
  if (size(p)/=4)print *,'error'
  print *,'pass'
end
