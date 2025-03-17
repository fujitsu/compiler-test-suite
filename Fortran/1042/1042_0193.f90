module m1
  private
  public x
  contains
   subroutine x1(i)
   i=i+1
     contains
       subroutine zx1(i)
          i=i+100
       end subroutine
   end subroutine
   subroutine x(i)
   i=i+2
     contains
       subroutine zx(i)
          i=i+100
       end subroutine
   end subroutine
   subroutine x2(i)
   i=i+4
     contains
       subroutine zx2(i)
          i=i+100
       end subroutine
   end subroutine
end module
module m2
  private x
  contains
   subroutine x1(i)
   i=i+8
     contains
       subroutine zx1(i)
          i=i+100
       end subroutine
   end subroutine
   subroutine x(i)
   i=i+16
     contains
       subroutine zx(i)
          i=i+100
       end subroutine
   end subroutine
   subroutine x2(i)
   i=i+32
     contains
       subroutine zx2(i)
          i=i+100
       end subroutine
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

