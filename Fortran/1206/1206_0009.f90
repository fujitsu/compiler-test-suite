class(*),allocatable::a(:)
  type t
     character(3),allocatable::cc
  end type t
  class(t),allocatable::tt(:,:)
  allocate(tt(2,3))
k=1
  allocate(tt(2,3)%cc,source='123')
  allocate(tt(1,1)%cc,source='123')
  a=[tt(k+1,k+2)%cc(k+1:),tt(k,k)%cc(k:2)]
  select type(a)
  type is (character(*))
     if(len(a)/=2) print *,'err1',len(a)
     if(a(1)//"a"/="23"//"a") print *,'err2'
     if(a(2)//"a"/="12"//"a") print *,'err3'
  end select
  print *,'sngg278r : pass'
end program


