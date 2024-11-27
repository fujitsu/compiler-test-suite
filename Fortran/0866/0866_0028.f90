  class(*),allocatable::a(:)
  type t
     character(3)::cc="123"
  end type t
  type(t)::tt
  character(3)::ch1
  character(2)::ch2
  ch1="zxy"
  ch2="xy"
  ii=2
  a=[ch1(2:3),"23"]
  select type(a)
  type is (character(*))
     if(len(a)/=2) print *,'err1',len(a)
     if(size(a)/=2) print *,'err2',size(a)
     if(a(1)//"a"/="xy"//"a") print *,'err3'
     if(a(2)//"a"/="23"//"a") print *,'err4'
     if (loc(a(2))-loc(a(1))/=2) print *,'err5',loc(a(2))-loc(a(1))
     call c(a)
  end select
  a=[ch1(2:3),tt%cc(2:3)]
  select type(a)
  type is (character(*))
     if(len(a)/=2) print *,'err1',len(a)
     if(size(a)/=2) print *,'err2',size(a)
     if(a(1)//"a"/="xy"//"a") print *,'err3'
     if(a(2)//"a"/="23"//"a") print *,'err4'
     if (loc(a(2))-loc(a(1))/=2) print *,'err5',loc(a(2))-loc(a(1))
     call c(a)
  end select
  a=[ch2,tt%cc(2:)]
  select type(a)
  type is (character(*))
     if(len(a)/=2) print *,'err1',len(a)
     if(size(a)/=2) print *,'err2',size(a)
     if(a(1)//"a"/="xy"//"a") print *,'err3'
     if(a(2)//"a"/="23"//"a") print *,'err4'
     if (loc(a(2))-loc(a(1))/=2) print *,'err5',loc(a(2))-loc(a(1))
     call c(a)
  end select
  a=[ch1(2:3),tt%cc(2:)]
  select type(a)
  type is (character(*))
     if(len(a)/=2) print *,'err1',len(a)
     if(size(a)/=2) print *,'err2',size(a)
     if(a(1)//"a"/="xy"//"a") print *,'err3'
     if(a(2)//"a"/="23"//"a") print *,'err4'
     if (loc(a(2))-loc(a(1))/=2) print *,'err5',loc(a(2))-loc(a(1))
     call c(a)
  end select
  a=[ch1(ii:),tt%cc(ii:)]
  select type(a)
  type is (character(*))
     if(len(a)/=2) print *,'err1',len(a)
     if(size(a)/=2) print *,'err2',size(a)
     if(a(1)//"a"/="xy"//"a") print *,'err3'
     if(a(2)//"a"/="23"//"a") print *,'err4'
     if (loc(a(2))-loc(a(1))/=2) print *,'err5',loc(a(2))-loc(a(1))
     call c(a)
  end select
  a=[ch1(ii:),"123"(ii:3)//""]
  select type(a)
  type is (character(*))
     if(len(a)/=2) print *,'err1',len(a)
     if(size(a)/=2) print *,'err2',size(a)
     if(a(1)//"a"/="xy"//"a") print *,'err3'
     if(a(2)//"a"/="23"//"a") print *,'err4'
     if (loc(a(2))-loc(a(1))/=2) print *,'err5',loc(a(2))-loc(a(1))
     call c(a)
  end select
  a=[(ch1(ii:),j=1,1),tt%cc(ii:)]
  select type(a)
  type is (character(*))
     if(len(a)/=2) print *,'err1',len(a)
     if(size(a)/=2) print *,'err2',size(a)
     if(a(1)//"a"/="xy"//"a") print *,'err3'
     if(a(2)//"a"/="23"//"a") print *,'err4'
     if (loc(a(2))-loc(a(1))/=2) print *,'err5',loc(a(2))-loc(a(1))
     call c(a)
  end select
  print *,'pass'
end
subroutine c(x)
  character(2)::x(*)
  if(x(1)//"a"/="xy"//"a") print *,'err22',x(1)//"a"
  if(x(2)//"a"/="23"//"a") print *,'err33',x(2)//"a"
end subroutine c


