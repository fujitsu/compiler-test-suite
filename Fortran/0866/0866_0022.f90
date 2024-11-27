  class(*),allocatable::a(:)
  type t
     character(3),allocatable::cc
  end type t
  type(t)::tt
 allocate(tt%cc,mold=trim('123'))
tt%cc="123"
  a=[tt%cc(2:)]
  select type(a)
  type is (character(*))
     if(len(a)/=2) print *,'err1',len(a)
     if(a(1)//"a"/="23"//"a") print *,'err2'
  end select
  print *,'pass'
end program
