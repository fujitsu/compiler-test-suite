integer ::a(3)=[1,2,3]
 call sub(a(1:3:2))
 if (any(a/=[11,2,13])) print *,102
 print *,'pass'
 contains
subroutine sub(b)
integer,contiguous,intent(inout):: b(:)
 if(is_contiguous(b).neqv..true.)print*,"102"
 if (any(b/=[1,3])) print *,101
  b=b+10
  end subroutine
  end

