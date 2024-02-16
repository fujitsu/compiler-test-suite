program pro
  implicit none
  CLASS(*),allocatable,dimension(:):: a,b,c
  integer :: a1,b1,c1
  integer::dim1
  logical::bck
  allocate(integer(kind=8) :: a(5))
  allocate(character(LEN=3):: b(5))
  allocate(real(kind=8):: c(5))
  dim1=1
  bck=.true.

  select type(a)
  type is (integer(kind=8))
    a=(/7,9,9,2,5/)
    a1= findloc(array=a,value=a(3),dim=dim1,back=bck)
  class default
    print*,106
  end select

  select type(b)
  type is (character(len=*))
    b=(/'aaa','bbb','ccc','bbb','aaa'/)
    b1= findloc(array=b,value=b(2),dim=dim1,back=bck)
  class default
    print*,107
  end select

  select type(c)
  type is (real(kind=8))
    c=(/7.1,9.1,9.1,2.1,5.1/)
    c1= findloc(array=c,value=c(3),dim=dim1,back=bck)
  class default
    print*,108
  end select

  if(a1.ne.3)print*,101
  if(b1.ne.4)print*,102
  if(c1.ne.3)print*,103
  print*,"pass"
end
