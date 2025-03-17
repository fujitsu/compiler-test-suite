module m1
  private
  public x
  contains
   subroutine x1(i)
   i=i+1
   end subroutine
   subroutine x(i)
   i=i+2
   end subroutine
   subroutine x2(i)
   i=i+4
   end subroutine
end module
module m2
  private x
  contains
   subroutine x1(i)
   i=i+8
   end subroutine
   subroutine x(i)
   i=i+16
   end subroutine
   subroutine x2(i)
   i=i+32
   end subroutine
end module
use m1
use m2
i=0
call x1(i)
call x (i)
call x2(i)
if (i/=42)write(6,*) "NG"
print *,'pass'
end

