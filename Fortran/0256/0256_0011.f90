integer,pointer::a(:)
allocate(a(3))
a(1)=1
a(2)=2
a(3)=3
 call sub(a)
 if (any(a/=[11,12,13])) print *,102
 print *,'pass'
 contains
subroutine sub(b)
 integer,contiguous:: b(:)
 if(is_contiguous(b).neqv..true.)print*,"101"
 if (any(b/=[1,2,3])) print *,101
  if(loc(a(1)).ne.loc(b(1)))print*,"102",loc(a(1)) ,loc(b(1))
  if(loc(a(2)).ne.loc(b(2)))print*,"103",loc(a(1)) ,loc(b(1))
  if(loc(a(3)).ne.loc(b(3)))print*,"104",loc(a(1)) ,loc(b(1))
  b=b+10
  end subroutine
  end

