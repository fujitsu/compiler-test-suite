integer ::a(4)=[1,2,3,4]
 call sub(a)
 print *,'pass'
 if (any(a/=[5,4,5,4])) print *,103
 contains
subroutine sub(b)
integer:: b(4)
 if(is_contiguous(b).neqv..true.)print*,"102"
 if (any(b/=[1,2,3,4])) print *,101
 b=4
 call sub2(b(1:4:2))
  end subroutine
subroutine sub2(c)
integer,contiguous::c(:)
         if(is_contiguous(c).neqv..true.)print*,"102"
          if (any(c/=[4,4])) print *,102
          c = 5
end subroutine
  end

