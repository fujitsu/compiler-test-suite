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


type  (w)               ::aa,bb

allocate(bb%wza(1),bb%wya(1))
allocate(bb%wza(1)%za(3),bb%wya(1)%ya(3))
  bb%wza(1)%za=(/1,2,3/)
  bb%wya(1)%ya=(/11,12,13/)
  aa=bb
print *,'pass'
end program

