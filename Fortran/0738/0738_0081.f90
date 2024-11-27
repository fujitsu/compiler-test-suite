type z
  integer(4)            ,dimension(2)::zi
  integer(4),allocatable,dimension(:)::za
end type
type y
  integer(4)            ,dimension(5)::yi
  type(z)               ,dimension(2)::yt
end type
type(y)                 ,dimension(3)::a,b

  allocate(b(1)%yt(1)%za(1))
  allocate(b(1)%yt(2)%za(2))
  allocate(b(2)%yt(1)%za(3))
  allocate(b(2)%yt(2)%za(4))
  allocate(b(3)%yt(1)%za(5))
  allocate(b(3)%yt(2)%za(6))
  b(1)%yt(1)%za = 1
  b(1)%yt(2)%za = (/ 2, 3/)
  b(2)%yt(1)%za = (/ 4, 5, 6/)
  b(2)%yt(2)%za = (/ 7, 8, 9,10/)
  b(3)%yt(1)%za = (/11,12,13,14,15/)
  b(3)%yt(2)%za = (/16,17,18,19,20,21/)
  b(1)%yt(1)%zi = 11
  b(1)%yt(2)%zi = 12
  b(2)%yt(1)%zi = 21
  b(2)%yt(2)%zi = 22
  b(3)%yt(1)%zi = 31
  b(3)%yt(2)%zi = 32
  b(1)%yi = 1
  b(2)%yi = 2
  b(3)%yi = 3

  a(1) = b(2)
  a(2) = b(3)
  a(3) = b(1)

  deallocate(b(1)%yt(1)%za)
  deallocate(b(1)%yt(2)%za)
  deallocate(b(2)%yt(1)%za)
  deallocate(b(2)%yt(2)%za)
  deallocate(b(3)%yt(1)%za)
  deallocate(b(3)%yt(2)%za)

  if (size(a(1)%yt(1)%za)/=3) write(6,*) "NG"
  if (size(a(1)%yt(2)%za)/=4) write(6,*) "NG"
  if (size(a(2)%yt(1)%za)/=5) write(6,*) "NG"
  if (size(a(2)%yt(2)%za)/=6) write(6,*) "NG"
  if (size(a(3)%yt(1)%za)/=1) write(6,*) "NG"
  if (size(a(3)%yt(2)%za)/=2) write(6,*) "NG"

  if (any(a(1)%yt(1)%za/=(/ 4, 5, 6/))) write(6,*) "NG"
  if (any(a(1)%yt(2)%za/=(/ 7, 8, 9,10/))) write(6,*) "NG"
  if (any(a(2)%yt(1)%za/=(/11,12,13,14,15/))) write(6,*) "NG"
  if (any(a(2)%yt(2)%za/=(/16,17,18,19,20,21/))) write(6,*) "NG"
  if (any(a(3)%yt(1)%za/=(/1/))) write(6,*) "NG"
  if (any(a(3)%yt(2)%za/=(/ 2, 3/))) write(6,*) "NG"
  if (any(a(1)%yt(1)%zi/=21)) write(6,*) "NG"
  if (any(a(1)%yt(2)%zi/=22)) write(6,*) "NG"
  if (any(a(2)%yt(1)%zi/=31)) write(6,*) "NG"
  if (any(a(2)%yt(2)%zi/=32)) write(6,*) "NG"
  if (any(a(3)%yt(1)%zi/=11)) write(6,*) "NG"
  if (any(a(3)%yt(2)%zi/=12)) write(6,*) "NG"
  if (any(a(1)%yi/=2)) write(6,*) "NG"
  if (any(a(2)%yi/=3)) write(6,*) "NG"
  if (any(a(3)%yi/=1)) write(6,*) "NG"

  print *,'pass'
end
