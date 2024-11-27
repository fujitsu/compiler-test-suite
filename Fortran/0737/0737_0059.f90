type z
  integer(4),allocatable,dimension(:)::za
end type
type y
  integer(4),allocatable,dimension(:)::ya
end type
type w
  type(z)   ,allocatable,dimension(:)::wza
  type(y)   ,allocatable,dimension(:)::wya
end type


type  (w)               ,dimension(1)::aa,bb

do k=1,1
allocate(bb(k)%wza(k),bb(k)%wya(k))
allocate(bb(k)%wza(k)%za(3),bb(k)%wya(k)%ya(3))
  bb(k)%wza(k)%za=(/1,2,3/)
  bb(k)%wya(k)%ya=(/11,12,13/)
  aa=bb
  if (any(aa(k)%wza(k)%za/=(/1,2,3/)))write(6,*) "NG"
  if (any(aa(k)%wya(k)%ya/=(/11,12,13/)))write(6,*) "NG"
end do
print *,'pass'
end program

