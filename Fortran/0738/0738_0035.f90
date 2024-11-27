type z
  integer,            dimension(2,2)::zi1
  integer,            dimension(2,2)::zi2
  integer,allocatable,dimension(:,:)::za1
end type
type y
  type(z),            dimension(2)::z_y1
  integer,allocatable,dimension(:)::ya1
  type(z),            dimension(2)::z_y2
end type
type x
  integer,            dimension(2)::xi1
  type(y)            ,dimension(1)::y_x1
  type(z),            dimension(2)::z_x2
end type
type w
  type(x)            ,dimension(2)::x_w1
end type
type(w)                           ::a,b

  allocate(a%x_w1(1)%y_x1(1)%ya1(5))
  allocate(a%x_w1(2)%y_x1(1)%ya1(5))
  allocate(a%x_w1(1)%y_x1(1)%z_y1(1)%za1(2,5))
  allocate(a%x_w1(1)%y_x1(1)%z_y1(2)%za1(2,5))
  allocate(a%x_w1(2)%y_x1(1)%z_y1(1)%za1(2,5))
  allocate(a%x_w1(2)%y_x1(1)%z_y1(2)%za1(2,5))
  allocate(a%x_w1(1)%y_x1(1)%z_y2(1)%za1(2,5))
  allocate(a%x_w1(1)%y_x1(1)%z_y2(2)%za1(2,5))
  allocate(a%x_w1(2)%y_x1(1)%z_y2(1)%za1(2,5))
  allocate(a%x_w1(2)%y_x1(1)%z_y2(2)%za1(2,5))
  allocate(a%x_w1(1)%z_x2(1)%za1(2,5))
  allocate(a%x_w1(1)%z_x2(2)%za1(2,5))
  allocate(a%x_w1(2)%z_x2(1)%za1(2,5))
  allocate(a%x_w1(2)%z_x2(2)%za1(2,5))

  allocate(b%x_w1(1)%y_x1(1)%ya1(2))
  allocate(b%x_w1(2)%y_x1(1)%ya1(2))
  allocate(b%x_w1(1)%y_x1(1)%z_y1(1)%za1(2,2))
  allocate(b%x_w1(1)%y_x1(1)%z_y1(2)%za1(2,2))
  allocate(b%x_w1(2)%y_x1(1)%z_y1(1)%za1(2,2))
  allocate(b%x_w1(2)%y_x1(1)%z_y1(2)%za1(2,2))
  allocate(b%x_w1(1)%y_x1(1)%z_y2(2)%za1(2,2))
  allocate(b%x_w1(2)%y_x1(1)%z_y2(1)%za1(2,2))
  allocate(b%x_w1(1)%z_x2(1)%za1(2,2))
  allocate(b%x_w1(1)%z_x2(2)%za1(2,2))
  allocate(b%x_w1(2)%z_x2(1)%za1(2,2))
  allocate(b%x_w1(2)%z_x2(2)%za1(2,2))

  b%x_w1(1)%y_x1(1)%ya1 = (/1,2/)
  b%x_w1(2)%y_x1(1)%ya1 = (/3,4/)
  b%x_w1(1)%y_x1(1)%z_y1(1)%za1 = reshape((/(m,m=11,14)/),(/2,2/))
  b%x_w1(1)%y_x1(1)%z_y1(2)%za1 = reshape((/(m,m=12,15)/),(/2,2/))
  b%x_w1(2)%y_x1(1)%z_y1(1)%za1 = reshape((/(m,m=15,18)/),(/2,2/))
  b%x_w1(2)%y_x1(1)%z_y1(2)%za1 = reshape((/(m,m=16,19)/),(/2,2/))
  b%x_w1(1)%y_x1(1)%z_y2(2)%za1 = reshape((/(m,m=21,24)/),(/2,2/))
  b%x_w1(2)%y_x1(1)%z_y2(1)%za1 = reshape((/(m,m=25,28)/),(/2,2/))
  b%x_w1(1)%z_x2(1)%za1 = reshape((/(m,m=103,106)/),(/2,2/))
  b%x_w1(1)%z_x2(2)%za1 = reshape((/(m,m=104,107)/),(/2,2/))
  b%x_w1(2)%z_x2(1)%za1 = reshape((/(m,m=105,108)/),(/2,2/))
  b%x_w1(2)%z_x2(2)%za1 = reshape((/(m,m=106,109)/),(/2,2/))

  a = b

  b%x_w1(1)%y_x1(1)%ya1 = (/-1,-1/)
  b%x_w1(1)%y_x1(1)%z_y1(1)%za1 = reshape((/(-1,m=11,14)/),(/2,2/))
  b%x_w1(1)%y_x1(1)%z_y1(2)%za1 = reshape((/(-1,m=12,15)/),(/2,2/))
  b%x_w1(1)%y_x1(1)%z_y2(2)%za1 = reshape((/(-1,m=21,24)/),(/2,2/))
  b%x_w1(1)%z_x2(1)%za1 = reshape((/(-1,m=103,106)/),(/2,2/))
  b%x_w1(1)%z_x2(2)%za1 = reshape((/(-1,m=104,107)/),(/2,2/))
  if (any(a%x_w1(1)%y_x1(1)%ya1 /= (/1,2/))) print*,a%x_w1(1)%y_x1(1)%ya1
  if (any(a%x_w1(1)%y_x1(1)%z_y1(1)%za1 /= reshape((/(m,m=11,14)/),(/2,2/)))) &
   write(6,*) "NG"
  if (any(a%x_w1(1)%y_x1(1)%z_y1(2)%za1 /= reshape((/(m,m=12,15)/),(/2,2/)))) &
   write(6,*) "NG"
  if (any(a%x_w1(1)%y_x1(1)%z_y2(2)%za1 /= reshape((/(m,m=21,24)/),(/2,2/)))) &
   write(6,*) "NG"
  if (any(b%x_w1(2)%y_x1(1)%z_y1(1)%za1 /= reshape((/(m,m=15,18)/),(/2,2/)))) &
   write(6,*) "NG"
  if (any(b%x_w1(2)%y_x1(1)%z_y1(2)%za1 /= reshape((/(m,m=16,19)/),(/2,2/)))) &
   write(6,*) "NG"
  if (any(a%x_w1(2)%y_x1(1)%z_y2(1)%za1 /= reshape((/(m,m=25,28)/),(/2,2/)))) &
   write(6,*) "NG"
  if (any(a%x_w1(1)%z_x2(1)%za1 /= reshape((/(m,m=103,106)/),(/2,2/)))) &
   write(6,*) "NG"
  if (any(a%x_w1(1)%z_x2(2)%za1 /= reshape((/(m,m=104,107)/),(/2,2/)))) &
   write(6,*) "NG"
  if (any(a%x_w1(2)%z_x2(1)%za1 /= reshape((/(m,m=105,108)/),(/2,2/)))) &
   write(6,*) "NG"
  if (any(a%x_w1(2)%z_x2(2)%za1 /= reshape((/(m,m=106,109)/),(/2,2/)))) &
   write(6,*) "NG"

  print *,'pass'
end
