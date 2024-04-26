integer ::a(3)=[1,2,3]
 call sub(a(1:3:2)+ 0)
 if (any(a/=[1,2,3])) print *,102,a
 call sub((a(1:3:2)+ 0))
 if (any(a/=[1,2,3])) print *,105
 print *,'pass'
 contains
subroutine sub(b)
integer,contiguous,intent(in) :: b(:)
 if(is_contiguous(b).neqv..true.)print*,"103"
 if (any(b/=[1,3])) print *,101,b
  end subroutine
  end

