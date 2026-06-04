module m1
  type x
    integer,allocatable::x1(:)
  end type
  type y
    type(x),allocatable::y1(:)
  end type
  type(y),allocatable::v(:)
contains
subroutine s0
  allocate(v(2))
  do n1=1,2
    allocate(v(n1)%y1(2))
    do n2=1,2
       allocate(v(n1)%y1(n2)%x1(3))
       v(n1)%y1(n2)%x1(1)=4
       v(n1)%y1(n2)%x1(2)=3
       v(n1)%y1(n2)%x1(3)=2
    end do
  end do
end
subroutine s1(m)
  do n=1,m
    associate (r=>v(n)%y1(n)%x1(n))
         associate (s =>v(n)%y1(n)%x1(n+1))
            associate (t=>v(n)%y1(n)%x1(n+2))
         block
           character(9    ) :: c(r+t+s+1)
if (size(c)/=4+3+2+1) print *,1001
if (any(ubound(c)/=[4+3+2+1])) print *,10011
   c='3'
if (any(c/='3')) print *,90011
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
call s0
call s1(1)
print *,'sngg144p : pass'
end

