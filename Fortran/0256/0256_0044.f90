integer,allocatable::a(:)
allocate(a(3))
a(1)=1
a(2)=2
a(3)=3
call sub(a(1:3:3))
 if (any(a/=[11,2,3])) print *,102
 print *,'pass'
 contains
subroutine sub(b)
 integer,contiguous:: b(:)
 if(is_contiguous(b).neqv..true.)print*,"101"
 if (any(b/=[1])) print *,101
  if(loc(a(1)).eq.loc(b(1)))print*,"102",loc(a(1)) ,loc(b(1))
  b=b+10
  end subroutine
  end

