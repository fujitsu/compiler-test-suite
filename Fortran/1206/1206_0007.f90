class(*),allocatable::a(:)
  type t
     character(3),allocatable::cc
  end type t
  type(t),allocatable::tt(:,:)
  allocate(tt(2,3))
k=1
  allocate(tt(2,3)%cc,source='123')
  a=[tt(k+1,k+2)%cc(2:)]
  select type(a)
  type is (character(*))
     if(len(a)/=2) print *,'err1',len(a)
     if(a(1)//"a"/="23"//"a") print *,'err2'
  end select
  print *,'sngg276r : pass'
end program


