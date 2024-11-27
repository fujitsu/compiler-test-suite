type y
  integer,allocatable,dimension(:)::ya1
end type
type x
  type(y)            ,dimension(2)::y_x1
end type
type w
  type(x)            ,dimension(2)::x_w1
end type
type(w)                           ::a,b

  allocate(a%x_w1(1)%y_x1(1)%ya1(5))
  allocate(a%x_w1(1)%y_x1(2)%ya1(5))
  allocate(a%x_w1(2)%y_x1(1)%ya1(5))
  allocate(a%x_w1(2)%y_x1(2)%ya1(5))

  allocate(b%x_w1(1)%y_x1(1)%ya1(2))
  allocate(b%x_w1(1)%y_x1(2)%ya1(2))
  allocate(b%x_w1(2)%y_x1(1)%ya1(2))
  allocate(b%x_w1(2)%y_x1(2)%ya1(2))

  b%x_w1(1)%y_x1(1)%ya1 = (/1,2/)
  b%x_w1(1)%y_x1(2)%ya1 = (/2,3/)
  b%x_w1(2)%y_x1(1)%ya1 = (/3,4/)
  b%x_w1(2)%y_x1(2)%ya1 = (/4,5/)
  a = b

  b%x_w1(1)%y_x1(1)%ya1 = (/-1,-1/)
  b%x_w1(2)%y_x1(1)%ya1 = (/-1,-1/)
  if (size(a%x_w1(1)%y_x1(1)%ya1)/=2) write(6,*) "NG"
  if (size(a%x_w1(1)%y_x1(2)%ya1)/=2) write(6,*) "NG"
  if (size(a%x_w1(2)%y_x1(1)%ya1)/=2) write(6,*) "NG"
  if (size(a%x_w1(2)%y_x1(2)%ya1)/=2) write(6,*) "NG"
  if (any(a%x_w1(1)%y_x1(1)%ya1 /= (/1,2/))) print*,a%x_w1(1)%y_x1(1)%ya1
  if (any(a%x_w1(1)%y_x1(2)%ya1 /= (/2,3/))) print*,a%x_w1(1)%y_x1(2)%ya1
  if (any(a%x_w1(2)%y_x1(1)%ya1 /= (/3,4/))) write(6,*) "NG"
  if (any(a%x_w1(2)%y_x1(2)%ya1 /= (/4,5/))) write(6,*) "NG"

  print *,'pass'
end
