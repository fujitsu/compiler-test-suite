 call s1
 print *,'pass'
 end
 subroutine s1
  type T1
     integer :: v
  end type T1
  type T2
     type(T1) :: t1
  end type T2
  type(T2) :: v
  v%t1%v=10
  if (v%t1%v/=10)write(6,*) "NG"
  call typefield2
 end
subroutine typefield2
  type T1
     integer :: v
  end type T1
  call inner
contains
  subroutine inner
    type(T1)::tt1
    tt1%v=10
    if (tt1%v/=10)write(6,*) "NG"
  end subroutine inner
end subroutine typefield2
