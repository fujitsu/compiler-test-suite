integer ::a(3)=[1,2,3]
 call sub(a)
 print *,'pass'
 contains
subroutine sub(b)
integer,contiguous :: b(:)
 if(is_contiguous(b).neqv..true.)print*,"102"
 if (any(b/=[1,2,3])) print *,101
  b=b+10
  end subroutine
  end

