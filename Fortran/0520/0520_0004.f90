 MODULE m1
  INTEGER,TARGET::tar1 =41
  TYPE t1
   INTEGER :: x11=11
   CONTAINS
      PROCEDURE:: t_prc=>prc
      GENERIC:: ASSIGNMENT(=) => t_prc
  END TYPE
  CONTAINS
   SUBROUTINE   prc(x,y)
     CLASS(t1),INTENT(INOUT)::x
     CLASS(t1),INTENT(IN)::y
     x%x11 = x%x11+y%x11
write(2,*) 100
   END SUBROUTINE
 END MODULE
 MODULE m2
  USE m1
  TYPE t2
    real::yyy=11
    TYPE(t1):: x22
  END TYPE
 END MODULE
 module m3
 use m2
   TYPE(t1),allocatable:: v34
   TYPE(t1)::v33
   contains
   SUBROUTINE s1
    v33%x11=45
    allocate(v34)
   end
  end
 module m4
  use m3
  contains
   SUBROUTINE s2
      v34= v33
   if(    v34%x11.ne.56)print*,"101"
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
