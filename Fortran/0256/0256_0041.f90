integer ::a(4)=[1,2,3,4]
 call sub(a)
 print *,'pass'
 contains
subroutine sub(b)
integer:: b(:)
 if(is_contiguous(b).neqv..true.)print*,"102"
 if (any(b/=[1,2,3,4])) print *,101
 call sub2(b(1:4:2))
  end subroutine
subroutine sub2(c)
integer,contiguous::c(:)
         if(is_contiguous(c).neqv..true.)print*,"102"
          if (any(c/=[1,3])) print *,101
end subroutine
  end

