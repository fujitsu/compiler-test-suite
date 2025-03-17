call sub1()
call sub2()
call sub3()
call sub4()
call sub5()
call sub6()
call sub7()
call sub8()
call sub9()
call suba()
call subb()
call subc()
print *,"pass"
end

module mc
contains
  pure function f1(y1,y2,xxx) result(fa)
    integer,intent(in) :: y2
    integer,intent(in) :: y1(y2)
    integer,intent(in) :: xxx(:)
    integer :: fa(+size(array=+(0)+xxx))
    do i=1,size(xxx) ; fa(i)=i ; enddo
  end function
  pure function f2(y1,y2,xxx) result(fa)
    integer,intent(in) :: y2
    integer,intent(in) :: y1(y2)
    integer,intent(in) :: xxx(:)
    integer :: fa(+size(array=+(0)+xxx))
    do i=1,size(xxx) ; fa(i)=i ; enddo
  end function
  pure function f3(y1,y2,xxx) result(fa)
    integer,intent(in) :: y2
    integer,intent(in) :: y1(y2)
    integer,intent(in) :: xxx(:)
    integer :: fa(+size(array=+(0)+xxx,dim=1))
    do i=1,size(xxx) ; fa(i)=i ; enddo
  end function
  pure function f4(y1,y2,xxx) result(fa)
    integer,intent(in) :: y2
    integer,intent(in) :: y1(y2)
    integer,intent(in) :: xxx(:)
    integer :: fa(+size(+(0)+xxx,dim=1))
    do i=1,size(xxx) ; fa(i)=i ; enddo
  end function
  pure function f5(y1,y2,xxx) result(fa)
    integer,intent(in) :: y2
    integer,intent(in) :: y1(y2)
    integer,intent(in) :: xxx(:)
    integer :: fa(+size(dim=1,array=+(0)+xxx))
    do i=1,size(xxx) ; fa(i)=i ; enddo
  end function
end
subroutine subc()
use mc
integer,allocatable:: x(:)
integer(kind=4) y(2)
allocate(x(2))
y=f1(y,2,x) ; if (y(1).ne.1) write(6,*) "NG" ; if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f2(y,2,x) ; if (y(1).ne.1) write(6,*) "NG" ; if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f3(y,2,x) ; if (y(1).ne.1) write(6,*) "NG" ; if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f4(y,2,x) ; if (y(1).ne.1) write(6,*) "NG" ; if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f5(y,2,x) ; if (y(1).ne.1) write(6,*) "NG" ; if (y(2).ne.2) write(6,*) "NG" ;y=0
end

module mb
contains
  pure function f1(y1,y2,xxx) result(fa)
    integer,intent(in) :: y2
    integer,intent(in) :: y1(y2)
    integer,intent(in) :: xxx(:)
    integer :: fa(+size(array=+(((((xxx)))))))
    do i=1,size(xxx) ; fa(i)=i ; enddo
  end function
  pure function f2(y1,y2,xxx) result(fa)
    integer,intent(in) :: y2
    integer,intent(in) :: y1(y2)
    integer,intent(in) :: xxx(:)
    integer :: fa(+size(array=+(((((xxx)))))))
    do i=1,size(xxx) ; fa(i)=i ; enddo
  end function
  pure function f3(y1,y2,xxx) result(fa)
    integer,intent(in) :: y2
    integer,intent(in) :: y1(y2)
    integer,intent(in) :: xxx(:)
    integer :: fa(+size(array=+(((((xxx))))),dim=1))
    do i=1,size(xxx) ; fa(i)=i ; enddo
  end function
  pure function f4(y1,y2,xxx) result(fa)
    integer,intent(in) :: y2
    integer,intent(in) :: y1(y2)
    integer,intent(in) :: xxx(:)
    integer :: fa(+size(+(((((xxx))))),dim=1))
    do i=1,size(xxx) ; fa(i)=i ; enddo
  end function
  pure function f5(y1,y2,xxx) result(fa)
    integer,intent(in) :: y2
    integer,intent(in) :: y1(y2)
    integer,intent(in) :: xxx(:)
    integer :: fa(+size(dim=1,array=+(((((xxx)))))))
    do i=1,size(xxx) ; fa(i)=i ; enddo
  end function
end
subroutine subb()
use mb
integer,allocatable:: x(:)
integer(kind=4) y(2)
allocate(x(2))
y=f1(y,2,x) ; if (y(1).ne.1) write(6,*) "NG" ; if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f2(y,2,x) ; if (y(1).ne.1) write(6,*) "NG" ; if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f3(y,2,x) ; if (y(1).ne.1) write(6,*) "NG" ; if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f4(y,2,x) ; if (y(1).ne.1) write(6,*) "NG" ; if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f5(y,2,x) ; if (y(1).ne.1) write(6,*) "NG" ; if (y(2).ne.2) write(6,*) "NG" ;y=0
end

module ma
contains
  pure function f1(y1,y2,xxx) result(fa)
    integer,intent(in) :: y2
    integer,intent(in) :: y1(y2)
    integer,intent(in) :: xxx(:)
    integer :: fa(+size(array=(((((xxx)+0))))))
    do i=1,size(xxx) ; fa(i)=i ; enddo
  end function
  pure function f2(y1,y2,xxx) result(fa)
    integer,intent(in) :: y2
    integer,intent(in) :: y1(y2)
    integer,intent(in) :: xxx(:)
    integer :: fa(+size(array=(((((xxx)+0))))))
    do i=1,size(xxx) ; fa(i)=i ; enddo
  end function
  pure function f3(y1,y2,xxx) result(fa)
    integer,intent(in) :: y2
    integer,intent(in) :: y1(y2)
    integer,intent(in) :: xxx(:)
    integer :: fa(+size(array=(((((xxx)+0)))),dim=1))
    do i=1,size(xxx) ; fa(i)=i ; enddo
  end function
  pure function f4(y1,y2,xxx) result(fa)
    integer,intent(in) :: y2
    integer,intent(in) :: y1(y2)
    integer,intent(in) :: xxx(:)
    integer :: fa(+size((((((xxx)+0)))),dim=1))
    do i=1,size(xxx) ; fa(i)=i ; enddo
  end function
  pure function f5(y1,y2,xxx) result(fa)
    integer,intent(in) :: y2
    integer,intent(in) :: y1(y2)
    integer,intent(in) :: xxx(:)
    integer :: fa(+size(dim=1,array=(((((xxx)))))))
    do i=1,size(xxx) ; fa(i)=i ; enddo
  end function
end
subroutine suba()
use ma
integer,allocatable:: x(:)
integer(kind=4) y(2)
allocate(x(2))
y=f1(y,2,x) ; if (y(1).ne.1) write(6,*) "NG" ; if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f2(y,2,x) ; if (y(1).ne.1) write(6,*) "NG" ; if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f3(y,2,x) ; if (y(1).ne.1) write(6,*) "NG" ; if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f4(y,2,x) ; if (y(1).ne.1) write(6,*) "NG" ; if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f5(y,2,x) ; if (y(1).ne.1) write(6,*) "NG" ; if (y(2).ne.2) write(6,*) "NG" ;y=0
end

module m9
contains
  pure function f1(y1,y2,xxx) result(fa)
    integer,intent(in) :: y2
    integer,intent(in) :: y1(y2)
    integer,intent(in) :: xxx(:)
    integer :: fa(+size(array=(((+((xxx)))))))
    do i=1,size(xxx) ; fa(i)=i ; enddo
  end function
  pure function f2(y1,y2,xxx) result(fa)
    integer,intent(in) :: y2
    integer,intent(in) :: y1(y2)
    integer,intent(in) :: xxx(:)
    integer :: fa(+size(array=(((+((xxx)))))))
    do i=1,size(xxx) ; fa(i)=i ; enddo
  end function
  pure function f3(y1,y2,xxx) result(fa)
    integer,intent(in) :: y2
    integer,intent(in) :: y1(y2)
    integer,intent(in) :: xxx(:)
    integer :: fa(+size(array=(((+((xxx))))),dim=1))
    do i=1,size(xxx) ; fa(i)=i ; enddo
  end function
  pure function f4(y1,y2,xxx) result(fa)
    integer,intent(in) :: y2
    integer,intent(in) :: y1(y2)
    integer,intent(in) :: xxx(:)
    integer :: fa(+size((((+((xxx))))),dim=1))
    do i=1,size(xxx) ; fa(i)=i ; enddo
  end function
  pure function f5(y1,y2,xxx) result(fa)
    integer,intent(in) :: y2
    integer,intent(in) :: y1(y2)
    integer,intent(in) :: xxx(:)
    integer :: fa(+size(dim=1,array=(((+((xxx)))))))
    do i=1,size(xxx) ; fa(i)=i ; enddo
  end function
end
subroutine sub9()
use m9
integer,allocatable:: x(:)
integer(kind=4) y(2)
allocate(x(2))
y=f1(y,2,x) ; if (y(1).ne.1) write(6,*) "NG" ; if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f2(y,2,x) ; if (y(1).ne.1) write(6,*) "NG" ; if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f3(y,2,x) ; if (y(1).ne.1) write(6,*) "NG" ; if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f4(y,2,x) ; if (y(1).ne.1) write(6,*) "NG" ; if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f5(y,2,x) ; if (y(1).ne.1) write(6,*) "NG" ; if (y(2).ne.2) write(6,*) "NG" ;y=0
end

module m8
contains
  pure function f1(y1,y2,xxx) result(fa)
    integer,intent(in) :: y2
    integer,intent(in) :: y1(y2)
    integer,intent(in) :: xxx(:)
    integer :: fa(+size(array=(((((xxx)))))))
    do i=1,size(xxx) ; fa(i)=i ; enddo
  end function
  pure function f2(y1,y2,xxx) result(fa)
    integer,intent(in) :: y2
    integer,intent(in) :: y1(y2)
    integer,intent(in) :: xxx(:)
    integer :: fa(+size(array=(((((xxx)))))))
    do i=1,size(xxx) ; fa(i)=i ; enddo
  end function
  pure function f3(y1,y2,xxx) result(fa)
    integer,intent(in) :: y2
    integer,intent(in) :: y1(y2)
    integer,intent(in) :: xxx(:)
    integer :: fa(+size(array=(((((xxx))))),dim=1))
    do i=1,size(xxx) ; fa(i)=i ; enddo
  end function
  pure function f4(y1,y2,xxx) result(fa)
    integer,intent(in) :: y2
    integer,intent(in) :: y1(y2)
    integer,intent(in) :: xxx(:)
    integer :: fa(+size((((((xxx))))),dim=1))
    do i=1,size(xxx) ; fa(i)=i ; enddo
  end function
  pure function f5(y1,y2,xxx) result(fa)
    integer,intent(in) :: y2
    integer,intent(in) :: y1(y2)
    integer,intent(in) :: xxx(:)
    integer :: fa(+size(dim=1,array=(((((xxx)))))))
    do i=1,size(xxx) ; fa(i)=i ; enddo
  end function
end
subroutine sub8()
use m8
integer,allocatable:: x(:)
integer(kind=4) y(2)
allocate(x(2))
y=f1(y,2,x) ; if (y(1).ne.1) write(6,*) "NG" ; if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f2(y,2,x) ; if (y(1).ne.1) write(6,*) "NG" ; if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f3(y,2,x) ; if (y(1).ne.1) write(6,*) "NG" ; if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f4(y,2,x) ; if (y(1).ne.1) write(6,*) "NG" ; if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f5(y,2,x) ; if (y(1).ne.1) write(6,*) "NG" ; if (y(2).ne.2) write(6,*) "NG" ;y=0
end

module m7
contains
  pure function f1(y1,y2,xxx) result(fa)
    integer,intent(in) :: y2
    integer,intent(in) :: y1(y2)
    integer,intent(in) :: xxx(:)
    integer :: fa(+size(array=((((((+xxx))))))))
    do i=1,size(xxx) ; fa(i)=i ; enddo
  end function
  pure function f2(y1,y2,xxx) result(fa)
    integer,intent(in) :: y2
    integer,intent(in) :: y1(y2)
    integer,intent(in) :: xxx(:)
    integer :: fa(+size(array=((((((+xxx))))))))
    do i=1,size(xxx) ; fa(i)=i ; enddo
  end function
  pure function f3(y1,y2,xxx) result(fa)
    integer,intent(in) :: y2
    integer,intent(in) :: y1(y2)
    integer,intent(in) :: xxx(:)
    integer :: fa(+size(array=((((((+xxx)))))),dim=1))
    do i=1,size(xxx) ; fa(i)=i ; enddo
  end function
  pure function f4(y1,y2,xxx) result(fa)
    integer,intent(in) :: y2
    integer,intent(in) :: y1(y2)
    integer,intent(in) :: xxx(:)
    integer :: fa(+size(((((((+xxx)))))),dim=1))
    do i=1,size(xxx) ; fa(i)=i ; enddo
  end function
  pure function f5(y1,y2,xxx) result(fa)
    integer,intent(in) :: y2
    integer,intent(in) :: y1(y2)
    integer,intent(in) :: xxx(:)
    integer :: fa(+size(dim=1,array=((((((+xxx))))))))
    do i=1,size(xxx) ; fa(i)=i ; enddo
  end function
end
subroutine sub7()
use m7
integer,allocatable:: x(:)
integer(kind=4) y(2)
allocate(x(2))
y=f1(y,2,x) ; if (y(1).ne.1) write(6,*) "NG" ; if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f2(y,2,x) ; if (y(1).ne.1) write(6,*) "NG" ; if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f3(y,2,x) ; if (y(1).ne.1) write(6,*) "NG" ; if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f4(y,2,x) ; if (y(1).ne.1) write(6,*) "NG" ; if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f5(y,2,x) ; if (y(1).ne.1) write(6,*) "NG" ; if (y(2).ne.2) write(6,*) "NG" ;y=0
end

module m6
contains
  pure function f1(y1,y2,xxx) result(fa)
    integer,intent(in) :: y2
    integer,intent(in) :: y1(y2)
    integer,intent(in) :: xxx(:)
    integer :: fa(+size(array=0+xxx))
    do i=1,size(xxx) ; fa(i)=i ; enddo
  end function
  pure function f2(y1,y2,xxx) result(fa)
    integer,intent(in) :: y2
    integer,intent(in) :: y1(y2)
    integer,intent(in) :: xxx(:)
    integer :: fa(+size(array=0+xxx))
    do i=1,size(xxx) ; fa(i)=i ; enddo
  end function
  pure function f3(y1,y2,xxx) result(fa)
    integer,intent(in) :: y2
    integer,intent(in) :: y1(y2)
    integer,intent(in) :: xxx(:)
    integer :: fa(+size(array=0+xxx,dim=1))
    do i=1,size(xxx) ; fa(i)=i ; enddo
  end function
  pure function f4(y1,y2,xxx) result(fa)
    integer,intent(in) :: y2
    integer,intent(in) :: y1(y2)
    integer,intent(in) :: xxx(:)
    integer :: fa(+size(0+xxx,dim=1))
    do i=1,size(xxx) ; fa(i)=i ; enddo
  end function
  pure function f5(y1,y2,xxx) result(fa)
    integer,intent(in) :: y2
    integer,intent(in) :: y1(y2)
    integer,intent(in) :: xxx(:)
    integer :: fa(+size(dim=1,array=0+xxx))
    do i=1,size(xxx) ; fa(i)=i ; enddo
  end function
end
subroutine sub6()
use m6
integer,allocatable:: x(:)
integer(kind=4) y(2)
allocate(x(2))
y=f1(y,2,x) ; if (y(1).ne.1) write(6,*) "NG" ; if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f2(y,2,x) ; if (y(1).ne.1) write(6,*) "NG" ; if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f3(y,2,x) ; if (y(1).ne.1) write(6,*) "NG" ; if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f4(y,2,x) ; if (y(1).ne.1) write(6,*) "NG" ; if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f5(y,2,x) ; if (y(1).ne.1) write(6,*) "NG" ; if (y(2).ne.2) write(6,*) "NG" ;y=0
end

module m5
contains
  pure function f1(y1,y2,xxx) result(fa)
    integer,intent(in) :: y2
    integer,intent(in) :: y1(y2)
    integer,intent(in) :: xxx(:)
    integer :: fa(+size(array=(-xxx)))
    do i=1,size(xxx) ; fa(i)=i ; enddo
  end function
  pure function f2(y1,y2,xxx) result(fa)
    integer,intent(in) :: y2
    integer,intent(in) :: y1(y2)
    integer,intent(in) :: xxx(:)
    integer :: fa(+size(array=(-xxx)))
    do i=1,size(xxx) ; fa(i)=i ; enddo
  end function
  pure function f3(y1,y2,xxx) result(fa)
    integer,intent(in) :: y2
    integer,intent(in) :: y1(y2)
    integer,intent(in) :: xxx(:)
    integer :: fa(+size(array=(-xxx),dim=1))
    do i=1,size(xxx) ; fa(i)=i ; enddo
  end function
  pure function f4(y1,y2,xxx) result(fa)
    integer,intent(in) :: y2
    integer,intent(in) :: y1(y2)
    integer,intent(in) :: xxx(:)
    integer :: fa(+size((-xxx),dim=1))
    do i=1,size(xxx) ; fa(i)=i ; enddo
  end function
  pure function f5(y1,y2,xxx) result(fa)
    integer,intent(in) :: y2
    integer,intent(in) :: y1(y2)
    integer,intent(in) :: xxx(:)
    integer :: fa(+size(dim=1,array=(-xxx)))
    do i=1,size(xxx) ; fa(i)=i ; enddo
  end function
end
subroutine sub5()
use m5
integer,allocatable:: x(:)
integer(kind=4) y(2)
allocate(x(2))
y=f1(y,2,x) ; if (y(1).ne.1) write(6,*) "NG" ; if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f2(y,2,x) ; if (y(1).ne.1) write(6,*) "NG" ; if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f3(y,2,x) ; if (y(1).ne.1) write(6,*) "NG" ; if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f4(y,2,x) ; if (y(1).ne.1) write(6,*) "NG" ; if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f5(y,2,x) ; if (y(1).ne.1) write(6,*) "NG" ; if (y(2).ne.2) write(6,*) "NG" ;y=0
end

module m4
contains
  pure function f1(y1,y2,xxx) result(fa)
    integer,intent(in) :: y2
    integer,intent(in) :: y1(y2)
    integer,intent(in) :: xxx(:)
    integer :: fa(+size(array=-xxx))
    do i=1,size(xxx) ; fa(i)=i ; enddo
  end function
  pure function f2(y1,y2,xxx) result(fa)
    integer,intent(in) :: y2
    integer,intent(in) :: y1(y2)
    integer,intent(in) :: xxx(:)
    integer :: fa(+size(array=-xxx))
    do i=1,size(xxx) ; fa(i)=i ; enddo
  end function
  pure function f3(y1,y2,xxx) result(fa)
    integer,intent(in) :: y2
    integer,intent(in) :: y1(y2)
    integer,intent(in) :: xxx(:)
    integer :: fa(+size(array=-xxx,dim=1))
    do i=1,size(xxx) ; fa(i)=i ; enddo
  end function
  pure function f4(y1,y2,xxx) result(fa)
    integer,intent(in) :: y2
    integer,intent(in) :: y1(y2)
    integer,intent(in) :: xxx(:)
    integer :: fa(+size(-xxx,dim=1))
    do i=1,size(xxx) ; fa(i)=i ; enddo
  end function
  pure function f5(y1,y2,xxx) result(fa)
    integer,intent(in) :: y2
    integer,intent(in) :: y1(y2)
    integer,intent(in) :: xxx(:)
    integer :: fa(+size(dim=1,array=-xxx))
    do i=1,size(xxx) ; fa(i)=i ; enddo
  end function
end
subroutine sub4()
use m4
integer,allocatable:: x(:)
integer(kind=4) y(2)
allocate(x(2))
y=f1(y,2,x) ; if (y(1).ne.1) write(6,*) "NG" ; if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f2(y,2,x) ; if (y(1).ne.1) write(6,*) "NG" ; if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f3(y,2,x) ; if (y(1).ne.1) write(6,*) "NG" ; if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f4(y,2,x) ; if (y(1).ne.1) write(6,*) "NG" ; if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f5(y,2,x) ; if (y(1).ne.1) write(6,*) "NG" ; if (y(2).ne.2) write(6,*) "NG" ;y=0
end

module m1
contains
  pure function f1(y1,y2,xxx) result(fa)
    integer,intent(in) :: y2
    integer,intent(in) :: y1(y2)
    integer,intent(in) :: xxx(:)
    integer :: fa(+size(array=xxx))
    do i=1,size(xxx) ; fa(i)=i ; enddo
  end function
  pure function f2(y1,y2,xxx) result(fa)
    integer,intent(in) :: y2
    integer,intent(in) :: y1(y2)
    integer,intent(in) :: xxx(:)
    integer :: fa(+size(array=xxx))
    do i=1,size(xxx) ; fa(i)=i ; enddo
  end function
  pure function f3(y1,y2,xxx) result(fa)
    integer,intent(in) :: y2
    integer,intent(in) :: y1(y2)
    integer,intent(in) :: xxx(:)
    integer :: fa(+size(array=xxx,dim=1))
    do i=1,size(xxx) ; fa(i)=i ; enddo
  end function
  pure function f4(y1,y2,xxx) result(fa)
    integer,intent(in) :: y2
    integer,intent(in) :: y1(y2)
    integer,intent(in) :: xxx(:)
    integer :: fa(+size(xxx,dim=1))
    do i=1,size(xxx) ; fa(i)=i ; enddo
  end function
  pure function f5(y1,y2,xxx) result(fa)
    integer,intent(in) :: y2
    integer,intent(in) :: y1(y2)
    integer,intent(in) :: xxx(:)
    integer :: fa(+size(dim=1,array=xxx))
    do i=1,size(xxx) ; fa(i)=i ; enddo
  end function
end
subroutine sub1()
use m1 
integer,allocatable:: x(:)
integer(kind=4) y(2)
allocate(x(2))
y=f1(y,2,x) ; if (y(1).ne.1) write(6,*) "NG" ; if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f2(y,2,x) ; if (y(1).ne.1) write(6,*) "NG" ; if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f3(y,2,x) ; if (y(1).ne.1) write(6,*) "NG" ; if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f4(y,2,x) ; if (y(1).ne.1) write(6,*) "NG" ; if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f5(y,2,x) ; if (y(1).ne.1) write(6,*) "NG" ; if (y(2).ne.2) write(6,*) "NG" ;y=0
end
module m2
contains
  pure function f1(y1,y2,xxx) result(fa)
    integer,intent(in) :: y2
    integer,intent(in) :: y1(y2)
    integer,intent(in) :: xxx(:)
    integer :: fa(+size(array=+xxx))
    do i=1,size(xxx)
    fa(i)=i
    enddo
  end function
  pure function f2(y1,y2,xxx) result(fa)
    integer,intent(in) :: y2
    integer,intent(in) :: y1(y2)
    integer,intent(in) :: xxx(:)
    integer :: fa(+size(+xxx,1))
    do i=1,size(xxx)
    fa(i)=i
    enddo
  end function
  pure function f3(y1,y2,xxx) result(fa)
    integer,intent(in) :: y2
    integer,intent(in) :: y1(y2)
    integer,intent(in) :: xxx(:)
    integer :: fa(+size(array=+xxx,dim=+1))
    do i=1,size(xxx)
    fa(i)=i
    enddo
  end function
  pure function f4(y1,y2,xxx) result(fa)
    integer,intent(in) :: y2
    integer,intent(in) :: y1(y2)
    integer,intent(in) :: xxx(:)
    integer :: fa(+size(+xxx,dim=+1))
    do i=1,size(xxx)
    fa(i)=i
    enddo
  end function
  pure function f5(y1,y2,xxx) result(fa)
    integer,intent(in) :: y2
    integer,intent(in) :: y1(y2)
    integer,intent(in) :: xxx(:)
    integer :: fa(+size(dim=+1,array=+xxx))
    do i=1,size(xxx)
    fa(i)=i
    enddo
  end function
end
subroutine sub2()
use m2 
integer,allocatable:: x(:)
integer(kind=4) y(2)
allocate(x(2))
y=f1(y,2,x)
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f2(y,2,x)
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f3(y,2,x)
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f4(y,2,x)
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f5(y,2,x)
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG" ;y=0
end
module m3
contains
  pure function f1(y1,y2,xxx) result(fa)
    integer,intent(in) :: y2
    integer,intent(in) :: y1(y2)
    integer,intent(in) :: xxx(:)
    integer :: fa(+size(array=(xxx)))
    do i=1,size(xxx) ; fa(i)=i ; enddo
  end function
  pure function f2(y1,y2,xxx) result(fa)
    integer,intent(in) :: y2
    integer,intent(in) :: y1(y2)
    integer,intent(in) :: xxx(:)
    integer :: fa(+size(array=(xxx),dim=1))
    do i=1,size(xxx) ; fa(i)=i ; enddo
  end function
  pure function f3(y1,y2,xxx) result(fa)
    integer,intent(in) :: y2
    integer,intent(in) :: y1(y2)
    integer,intent(in) :: xxx(:)
    integer :: fa(+size(array=(+xxx),dim=1))
    do i=1,size(xxx) ; fa(i)=i ; enddo
  end function
  pure function f4(y1,y2,xxx) result(fa)
    integer,intent(in) :: y2
    integer,intent(in) :: y1(y2)
    integer,intent(in) :: xxx(:)
    integer :: fa(+size((xxx),dim=1))
    do i=1,size(xxx) ; fa(i)=i ; enddo
  end function
  pure function f5(y1,y2,xxx) result(fa)
    integer,intent(in) :: y2
    integer,intent(in) :: y1(y2)
    integer,intent(in) :: xxx(:)
    integer :: fa(+size(dim=(1),array=(xxx)))
    do i=1,size(xxx) ; fa(i)=i ; enddo
  end function
end
subroutine sub3()
use m3
integer,allocatable:: x(:)
integer(kind=4) y(2)
allocate(x(2))
y=f1(y,2,x) ; if (y(1).ne.1) write(6,*) "NG" ; if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f2(y,2,x) ; if (y(1).ne.1) write(6,*) "NG" ; if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f3(y,2,x) ; if (y(1).ne.1) write(6,*) "NG" ; if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f4(y,2,x) ; if (y(1).ne.1) write(6,*) "NG" ; if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f5(y,2,x) ; if (y(1).ne.1) write(6,*) "NG" ; if (y(2).ne.2) write(6,*) "NG" ;y=0
end
