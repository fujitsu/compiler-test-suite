subroutine s1
type p
   character(*,4) :: x*2 
end type 
type(p):: m = p(x=1_"12" ) 
type(p):: t 
t = p(x=1_"12" ) 
if (m%x/=4_"12") print *,101
if (t%x/=4_"12") print *,102
end
call s1
print *,'pass'
end
