call sss(k=2)
rewind 1
read(1,*) k;if (k/=4.and.k/=2) print *,101
read(1,*) k;if (k/=4.and.k/=2) print *,102
read(1,*) k;if (k/=4.and.k/=2) print *,103
print *,'pass'
 contains
 subroutine sss(i,k)
 use, intrinsic :: ieee_arithmetic
 integer,optional::i,k
 write(1, *)ieee_selected_real_kind(p=k)
 write(1, *)ieee_selected_real_kind(r=k)
 write(1, *)ieee_selected_real_kind(p=i,r=k)
 end subroutine
 end
