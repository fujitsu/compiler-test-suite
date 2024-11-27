do i=1,5
  call s1
end do
 print *,'pass'
end
subroutine s1
integer ::a(5)=(/1,2,3,4,5/)
type xc
  integer::x1
  character,allocatable,dimension(:)::x2
  integer::x3
end type
type xi
  integer::x1
  integer,allocatable,dimension(:)::x2
  integer::x3
end type
n=1
    select case(a(1+funs(funa())))
      case (2)
          j=21
      case (3)
          j=22
      case (4)
          j=23
    end select
    if (j/=23)write(6,*) "NG"
    select case(1+funs(funa()))
      case (2)
          j=21
      case (3)
          j=22
      case (4)
          j=23
    end select
    if (j/=23)write(6,*) "NG"
    select case('1'//funsc(funac()))
      case ('11')
          j=1
      case ('12')
          j=2
    end select
    if (j/=2)write(6,*) "NG"
contains
 function funa()
 type(xi):: funa
 allocate(funa%x2(2))
 funa%x2=(/1,2/)
 end function
 function funs(a)
 type(xi):: a
 integer funs
 funs= a%x2(1)+a%x2(2)
 end function
 function funac()
 type(xc):: funac
 allocate(funac%x2(2))
 funac%x2=(/'1','2'/)
 end function
 function funsc(a)
 type(xc):: a
 character(n) funsc
 funsc= a%x2(2)
 end function
end
