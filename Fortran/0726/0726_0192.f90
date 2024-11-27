 call s1
 print *,'pass'
 end
 subroutine s1
  complex*32 a(2)/(.2,.3),(.4,.5)/
  integer,dimension(:),allocatable::vs
  allocate(vs(2));vs=(/2,1/)
  call sub(fun(a)+fun(a)+fun(a)+fun(a))
  call subx(fun(a(vs))+fun(a(vs))+fun(a(vs))+fun(a(vs)))
  call ss1(a)
   contains
     elemental function fun(a)
     complex*32  fun,a
     intent(in)::a
     fun=a
     end function
    subroutine ss1(a)
    complex*32,dimension(:)::a
    call sub(fun(a)+fun(a)+fun(a)+fun(a))
    call subx(fun(a(vs))+fun(a(vs))+fun(a(vs))+fun(a(vs)))
    end subroutine
 end
 subroutine sub(a)
 complex*32 a(2)
 if ((a(1)/=(.2,.3)*4))write(6,*) "NG"
 if ((a(2)/=(.4,.5)*4))write(6,*) "NG"
 end
 subroutine subx(a)
 complex*32 a(2)
 if ((a(2)/=(.2,.3)*4))write(6,*) "NG"
 if ((a(1)/=(.4,.5)*4))write(6,*) "NG"
 end
