MODULE m1
TYPE t1
  INTEGER:: x11
  CONTAINS
    PROCEDURE:: t_prc=>prc
    GENERIC:: ASSIGNMENT(=) => t_prc
END TYPE
CONTAINS
SUBROUTINE   prc(x,y)
  CLASS(t1),INTENT(OUT)::x
  CLASS(t1),INTENT(IN)::y
  x%x11 = y%x11+100
END SUBROUTINE
END MODULE

MODULE m2
USE m1
TYPE t2
  INTEGER:: x21
  TYPE(t1):: x22
END TYPE
END MODULE

PROGRAM MAIN
USE m2
TYPE(t2),POINTER:: v21(:),v22(:)
ALLOCATE(v21(2),v22(2))
v21(1)%x21=11
v21(2)%x21=12
v21(1)%x22%x11=1
v21(2)%x22%x11=60
CALL s1(v21,v22)
CONTAINS
SUBROUTINE s1(dmy1,dmy2)
  TYPE(t2),POINTER:: dmy1(:),dmy2(:)
  dmy2(1:2)=dmy1(1:2)
  if(any((dmy2(1:2)%x22%x11) /= (/101,160/))) print*, 121 
  dmy2(1:2)=fun()
  if(any((dmy2(1:2)%x22%x11) /= (/102,170/))) print*, 122  
  dmy2(1:2)=[t2(11,t1(3)),t2(12,t1(80))]
  if(any((dmy2(1:2)%x22%x11) /= (/103,180/))) print*, 123  
  dmy2(1:2)=t2(11,t1(4))
  if(any((dmy2(1:2)%x22%x11) /= (/104,104/))) print*, 124
  print*,"Pass"
END SUBROUTINE
function fun()
type(t2),pointer:: fun(:)
allocate(fun(2))
fun%x21=11
fun%x21=12
fun(1)%x22%x11=2
fun(2)%x22%x11=70
end function
END
