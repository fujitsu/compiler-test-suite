 MODULE m1
  TYPE t1
   INTEGER :: x11=11
  END TYPE
  TYPE t2
    real::yyy=11
    TYPE(t1):: x22
  END TYPE
  interface assignment(=)
     procedure prc
  end interface
  CONTAINS
   SUBROUTINE   prc(x,y)
     type (t2),INTENT(INOUT)::x(:,:)
     type (t1),INTENT(IN)::y(:,:)
     x%x22%x11 = x%x22%x11+y%x11
write(2,*) 100
   END SUBROUTINE
 END MODULE
 MODULE m2
  USE m1
 END MODULE
 module m3
 use m2
   TYPE(t2),allocatable:: v34(:,:)
   TYPE(t1)::v33(2,3)
   contains
   SUBROUTINE s1
    v33%x11=45
    allocate(v34(2,3))
   end
  end
 module m4
  use m3
  contains
   SUBROUTINE s2
      v34= v33
   if(any(v34%x22%x11.ne.56))print*,"101"
   end
 end
 use m4
    call s1
    call s2
rewind 2
do nn=1,1
read(2,*) n
if (n/=100) print *,9001
end do
         print*,"pass"
 END
