integer(4),parameter::n=2
type z
  integer(4),allocatable,dimension(:)::za1
  integer(4)            ,dimension(2)::za2
  integer(4),allocatable,dimension(:)::za3
  integer(4)            ,dimension(4)::za4
  integer(4),allocatable,dimension(:)::za5
end type
type(z)                 ,dimension(n)::a,b

  do i=1,n
    allocate(a(i)%za1(3))
    allocate(a(i)%za3(3))
    allocate(a(i)%za5(3))
    allocate(b(i)%za1(1))
    allocate(b(i)%za3(3))
    allocate(b(i)%za5(5))
    b(i)%za1 = 1
    b(i)%za2 = (/(m,m=2,3)/)
    b(i)%za3 = (/(m,m=3,5)/)
    b(i)%za4 = (/4,5,6,7/)
    b(i)%za5 = (/(5,m=5,9)/)
  enddo

  a = b

  do i=1,n
    deallocate(b(i)%za1)
    deallocate(b(i)%za3)
    deallocate(b(i)%za5)
  enddo

  do i=1,n
    if (size(a(i)%za1)/=1) write(6,*) "NG"
    if (size(a(i)%za3)/=3) write(6,*) "NG"
    if (size(a(i)%za5)/=5) write(6,*) "NG"
    if (any(a(i)%za1/=1)) write(6,*) "NG"
    if (any(a(i)%za2/=(/2,3/))) write(6,*) "NG"
    if (any(a(i)%za3/=(/3,4,5/))) print *,a(i)%za3
    if (any(a(i)%za4/=(/4,5,6,7/))) write(6,*) "NG"
    if (any(a(i)%za5/=(/5,5,5,5,5/))) print *,a(i)%za5
  enddo

  print *,'pass'
 end
