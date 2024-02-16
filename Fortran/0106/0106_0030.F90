program main
type c
  integer,allocatable::b(:,:)
end type
type(c)::a

  a=c(reshape((/11,12,13,21,22,23,31,32,33/),(/3,3/)))
  print *, "OK"
end

