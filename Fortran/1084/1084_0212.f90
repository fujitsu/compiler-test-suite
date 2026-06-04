MODULE m1
TYPE t0
  INTEGER :: x00 =1
end type

TYPE,extends(t0):: t1
  INTEGER :: x11= 2
  CONTAINS
    PROCEDURE:: t_prc=>prc
    GENERIC:: ASSIGNMENT(=) => t_prc
END TYPE

CONTAINS
SUBROUTINE   prc(x,y)
  CLASS(t1),INTENT(INOUT)::x
  CLASS(t1),INTENT(IN)::y 
    x%x11 = x%x11 + y%x11
    x%x00 = x%x00 + y%x00
END SUBROUTINE
END MODULE



MODULE m2
USE m1
TYPE t2
  INTEGER:: x21
  class(t1),allocatable:: x22(:,:)
END TYPE
END MODULE
 


PROGRAM MAIN
USE m2
CALL s1
CONTAINS
SUBROUTINE s1
  TYPE(t2):: v21,v22
  v21%x21=11
  ALLOCATE(t1::v22%x22(1,1))
  ALLOCATE(t1::v21%x22(1,1))
  select type(t=>v22%x22)
   type is(t1)
   t(1,1)%x11= 31
   t(1,1)%x00= 32
    select type(t2=>v21%x22)
     type is(t1)
      t2(1,1)%x11= 11
      t2(1,1)%x00= 12
      v21 = v22
!      if(v21%x22(1,1)%x00.ne.33)print*,"302",t2(1,1)%x00
!      if(t2(1,1)%x11.ne.33)print*,"311",t2(1,1)%x11
!      if(t2(1,1)%x00.ne.33)print*,"312",t2(1,1)%x00
      deallocate(v21%x22)
      v21 = v22
!      if(v21%x22(1,1)%x00.ne.33)print*,"302",t2(1,1)%x00
!      if(t2(1,1)%x11.ne.33)print*,"311",t2(1,1)%x11
!      if(t2(1,1)%x00.ne.33)print*,"312",t2(1,1)%x00
     class default
       print*,"101"
     end select
  class default
    print*,"102"
  end select
  print*,"PASS"
END SUBROUTINE
END
