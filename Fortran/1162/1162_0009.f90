module m1
contains
subroutine s1(m)
  do n=1,m
    associate (r=>f(4))
         associate (s =>f(r-1))
            associate (t=>f(s-1))
         block
           character(s+t+r) :: c(s+t+r:r+t+s+1,s+t+r:r+t+s+1)
         block
           character(s+t+r) :: d(s+t+r:r+t+s+1,s+t+r:r+t+s+1)
         block
           character(s+t+r) :: e(s+t+r:r+t+s+1,s+t+r:r+t+s+1)
if (size(c)/=4) print *,1001
if (size(d)/=4) print *,1002
if (size(e)/=4) print *,1003
if (len (c)/=4+3+2) print *,20031
if (len (d)/=4+3+2) print *,20032
if (len (e)/=4+3+2) print *,20033
if (any(lbound(c)/=[4+3+2,4+3+2])) print *,10011
if (any(lbound(d)/=[4+3+2,4+3+2])) print *,10012
if (any(lbound(e)/=[4+3+2,4+3+2])) print *,10013
   c='3'
   d='3'
   e='3'
if (any(c/='3')) print *,90011
if (any(d/='3')) print *,90012
if (any(e/='3')) print *,90013
         end block
         end block
         end block
        end associate
     end associate
   end associate
 end do
end
integer pure function f(n)
 integer,intent(in)::n
 f=n
end
end
use m1
call s1(1)
print *,'sngg583o : pass'
end

