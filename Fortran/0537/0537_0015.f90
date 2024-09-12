  class(*),allocatable::a(:)
  character(3)::ch(2)
  ch="abc"
  a=[(ch(1:)(2:),i=1,len(ch))]
  select type(a)
  type is(character(*))
     if(len(a)/=2) print *,'err1',len(a)
     if(a(1)//"1"/="bc"//"1") print *,'err2',a(1)//"1"
     if(a(2)//"1"/="bc"//"1") print *,'err3',a(1)//"1"
     if(a(3)//"1"/="bc"//"1") print *,'err4',a(1)//"1"
  class default
     print *,'ng'
  end select

  a=[(ch(1:2)(2:),i=1,len(ch))]
  select type(a)
  type is(character(*))
     if(len(a)/=2) print *,'err11',len(a)
     if(a(1)//"1"/="bc"//"1") print *,'err22',a(1)//"1"
     if(a(2)//"1"/="bc"//"1") print *,'err33',a(1)//"1"
     if(a(3)//"1"/="bc"//"1") print *,'err44',a(1)//"1"
  class default
     print *,'ng'
  end select

  a=[(ch(:)(2:),i=1,len(ch))]
  select type(a)
  type is(character(*))
     if(len(a)/=2) print *,'err111',len(a)
     if(a(1)//"1"/="bc"//"1") print *,'err222',a(1)//"1"
     if(a(2)//"1"/="bc"//"1") print *,'err333',a(1)//"1"
     if(a(3)//"1"/="bc"//"1") print *,'err444',a(1)//"1"
  class default
     print *,'ng'
  end select

  a=[(ch(:2)(2:),i=1,len(ch))]
  select type(a)
  type is(character(*))
     if(len(a)/=2) print *,'err1111',len(a)
     if(a(1)//"1"/="bc"//"1") print *,'err2222',a(1)//"1"
     if(a(2)//"1"/="bc"//"1") print *,'err3333',a(1)//"1"
     if(a(3)//"1"/="bc"//"1") print *,'err4444',a(1)//"1"
  class default
     print *,'ng'
  end select

  print *,'pass'
end program
