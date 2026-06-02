MODULE m1
TYPE t0
  INTEGER :: x00 =1
end type

TYPE,extends(t0):: t1
  INTEGER,allocatable :: x11
END TYPE
END MODULE



MODULE m2
USE m1
TYPE t2
  INTEGER:: x21
  class(t0),allocatable:: x22(:,:)
END TYPE
END MODULE


PROGRAM MAIN
USE m2
CALL s1
CONTAINS
SUBROUTINE s1
  TYPE(t2):: v21,v22,v23,y
  v21%x21=11
  allocate(t1::y%x22(2,3))
      select type(p=>y  %x22)
        type is(t1)
          allocate(p(2,3)%x11,source=2)
      end select
          
  ALLOCATE(v22%x22,source=y%x22)
  ALLOCATE(v21%x22,source=y%x22)
      v21 = v22
      k=0
      select type(p=>v21%x22)
        type is(t1)
      select type(q=>v22%x22)
        type is(t1)
      if (p      (2,3)%x11/=2) print *,2873
      if (q      (2,3)%x11/=2) print *,2874
      q      (2,3)%x11=3
      if (p      (2,3)%x11/=2) print *,2875
      k=1
      end select
      end select
      if (k/=1) print *,735
      deallocate(v21%x22)
      allocate(v21%x22,source=v22%x22)
      allocate(v23%x22,mold  =v22%x22)
      k=0
      select type(p=>v21%x22)
        type is(t1)
      select type(q=>v22%x22)
        type is(t1)
      select type(w=>v23%x22)
        type is(t1)
      if (allocated(w      (2,3)%x11)) print *,12876
      if (p      (2,3)%x11/=3) print *,12873
      if (q      (2,3)%x11/=3) print *,12874
      q      (2,3)%x11=4
      if (p      (2,3)%x11/=3) print *,12875
      k=1
      end select
      end select
      end select
      if (k/=1) print *,1735
      deallocate(v21%x22)
      allocate(v21%x22,mold  =v22%x22)
      k=0
      select type(p=>v21%x22)
        type is(t1)
      select type(q=>v22%x22)
        type is(t1)
      if (allocated(p      (2,3)%x11)) print *,22873
      if (q      (2,3)%x11/=4) print *,22874
      k=1
      end select
      end select
      if (k/=1) print *,2735

  print*,"sngg423t : pass"
END SUBROUTINE
END
