integer ::a(4)=[1,2,3,4]
 call sub(a(1:4:2))
 print *,'pass'
 contains
subroutine sub(b)
integer,contiguous :: b(:)
 if(is_contiguous(b).neqv..true.)print*,"102"
 if (any(b/=[1,3])) print *,101
  b=b+10
  end subroutine
  end

