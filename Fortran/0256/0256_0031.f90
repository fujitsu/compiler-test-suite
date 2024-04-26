integer ::a(3)=[1,2,3]
 call sub(a(1:3:2),a(1:3:2))
 if (any(a/=[11,2,13])) print *,102
 print *,'pass'
 contains
subroutine sub(b,d)
integer,contiguous,intent(out):: b(:)
integer,contiguous,intent(in):: d(:)
 b(1) =1
 b(2) =3
 if(is_contiguous(b).neqv..true.)print*,"102"
 if(is_contiguous(d).neqv..true.)print*,"103"
 if (any(b/=[1,3])) print *,104
 if (any(d/=[1,3])) print *,105
  b=b+10
  end subroutine
  end

