type z
  integer,allocatable,dimension(:,:)::za1
end type
type y
  type(z),            dimension(1)::z_y1
end type
type x
  type(y),            dimension(1)::y_x1
end type
type w
  type(x),            dimension(1)::x_w1
end type
type(w)                           ::a,b

  allocate(a%x_w1(1)%y_x1(1)%z_y1(1)%za1(2,2))
  allocate(b%x_w1(1)%y_x1(1)%z_y1(1)%za1(2,2))
  b%x_w1(1)%y_x1(1)%z_y1(1)%za1 = reshape((/1,2,3,4/),(/2,2/))

  a = b

  b%x_w1(1)%y_x1(1)%z_y1(1)%za1 = reshape((/11,12,13,14/),(/2,2/))
  if (size(a%x_w1(1)%y_x1(1)%z_y1(1)%za1)/=4) write(6,*) "NG"
  if (any(a%x_w1(1)%y_x1(1)%z_y1(1)%za1 /= reshape((/1,2,3,4/),(/2,2/)))) &
              write(6,*) "NG"
  deallocate(a%x_w1(1)%y_x1(1)%z_y1(1)%za1)
  deallocate(b%x_w1(1)%y_x1(1)%z_y1(1)%za1)
  print *,'pass'
end
