program pro
  implicit none
  integer, dimension(5) :: a
  integer :: ad1(1),d
  CLASS(*),allocatable:: b
  a=(/7,9,9,2,5/)
  allocate(logical(kind=2):: b)
  d=1
  select type(b)
  type is (logical(kind=2))
    b=.true.
    ad1= maxloc(array=a,dim=d,kind=4,back=b)
  class default
    print*,103
  end select
  if(ad1(1).ne.3)print*,101
  print*,"pass"
end
