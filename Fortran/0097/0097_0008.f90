integer ::a(3)=[1,2,3]
 call sub1(a)
 if (any(a/=[11,2,13])) print *,102,a
 print *,'pass'
 contains
subroutine sub(b)
integer,contiguous :: b(:)
 if(is_contiguous(b).neqv..true.)print*,"102"
 if (any(b/=[1,3])) print *,101
  b=b+10
  end subroutine
  subroutine sub1(x)
  integer::x(:)
  integer::p = 2
  integer::q =1
  call sub(x(q:3:p))
  end subroutine
  end

