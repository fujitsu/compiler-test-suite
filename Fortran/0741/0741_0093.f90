type z
  integer,allocatable::za(:)
end type
type y
  type(z),allocatable::ya(:)
end type
type x
  type(y),allocatable::xa(:)
end type
type w
  type(x),allocatable::wa(:)
end type
type (w),allocatable::a(:)

  allocate(a(2))
  a(1)=w((/ x((/ y((/ z((/0,1/)) /)) /)) /))

  where(a(1)%wa(1)%xa(1)%ya(1)%za(:) .eq. 1)
    a(:)=a(1)
  elsewhere
    a(:)=w((/ x((/ y((/ z((/1,2/)) /)) /)) /))
  endwhere

  if (.not.allocated(a(1)%wa(1)%xa(1)%ya(1)%za)) write(6,*) "NG"
  if (any(a(1)%wa(1)%xa(1)%ya(1)%za/=(/1,2/))) write(6,*) "NG"
  deallocate(a(1)%wa(1)%xa(1)%ya(1)%za)
  if (.not.allocated(a(2)%wa(1)%xa(1)%ya(1)%za)) write(6,*) "NG"
  if (any(a(2)%wa(1)%xa(1)%ya(1)%za/=(/0,1/))) write(6,*) "NG"
  deallocate(a(2)%wa(1)%xa(1)%ya(1)%za)

 print *,'pass'
end
