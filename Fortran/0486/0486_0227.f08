call sss(k=2)
rewind 1
read(1,*) k;if (k/=4.and.k/=2) print *,101
print *,'pass'
 contains
 subroutine sss(k)
 use, intrinsic :: ieee_arithmetic
 integer,optional::k
 write(1, *)ieee_selected_real_kind(r=k)
 end subroutine
 end
