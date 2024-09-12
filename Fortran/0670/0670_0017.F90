#define a(X,Y) aa(X,Y)
 
 subroutine aa(x,y)
 integer :: x, y
   y = x + 1
 end subroutine
 
 subroutine call_aa_via_a(x,y)
 integer :: x, y
   call a(x,y)
   call a(x,&
          y)
 end subroutine
ix=1
iy=3
call call_aa_via_a(ix,iy)
if (ix/=1)print *,'error'
if (iy/=2)print *,'error'
print *,'pass'
end
