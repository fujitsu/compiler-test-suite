 call sub((/ 1.2, 3.5, 1.1, 1.5 /))
 print *,'pass'
 contains
subroutine sub(b)
real,contiguous:: b(:)
 if(is_contiguous(b).neqv..true.)print*,"102"
  end subroutine
  end

