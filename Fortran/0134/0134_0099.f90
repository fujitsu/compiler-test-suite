module m1
  type xx
     integer a1
     integer a2
  end type
contains
subroutine array_new(new_col_idist,x,n)
   type(xx)::new_col_idist
   integer,dimension(:)::x
if (size(x)/=10)print *,1003
if (any(x/=(/1,2,1,2,1,2,1,2,1,2/)))print *,x
if (n/=1)print *,n
if (new_col_idist%a1/=3)print *,101,new_col_idist%a1
end subroutine
end
subroutine s1
use m1
type(xx)::new_col_idist
new_col_idist%a1=3
ncol_images=2
nvpcols=10
   CALL array_new (new_col_idist,&
              (/ (MOD(i,ncol_images)+1, i=0, nvpcols-1) /), 1)
end 
call s1
print *,'pass'
end

