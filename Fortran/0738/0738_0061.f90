integer(4),parameter::n=1
type z
  integer(4),            dimension(2)::zi
  integer(4),allocatable,dimension(:)::za
end type
type y
  integer(4),            dimension(1)::yi
  type (z)  ,allocatable,dimension(:)::ya
end type
type (y)    ,allocatable,dimension(:)::a,b

 allocate(a(1))
 allocate(b(1))
 allocate(b(1)%ya(1))
 allocate(b(1)%ya(1)%za(5))

 b(1)%ya(1)%za=(/1,2,3,4,5/)
 b(1)%ya(1)%zi=(/11,12/)
 b(1)%yi=21

 a=b

 b(1)%ya(1)%za = 2
 if (.not.allocated(a(1)%ya)) write(6,*) "NG"
 if (.not.allocated(a(1)%ya(1)%za)) write(6,*) "NG"
 if (any(a(1)%ya(1)%za/=(/1,2,3,4,5/))) write(6,*) "NG"
 if (any(a(1)%ya(1)%zi/=(/11,12/))) write(6,*) "NG"
 if (any(a(1)%yi      /=(/21/))) write(6,*) "NG"

 print *,'pass'
end
