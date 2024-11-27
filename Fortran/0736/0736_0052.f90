integer ::a(5)=(/1,2,3,4,5/)
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
    print *,'pass'
contains
 function funa()
 integer funa(2)
 funa=(/1,2/)
 end function
 function funs(a)
 integer a(:)
 integer funs
 funs= a(1)+a(2)
 end function
 function funac()
 character(n) funac(2)
 funac=(/'1','2'/)
 end function
 function funsc(a)
 character(n) a(:)
 character(n) funsc
 funsc= a(2)
 end function
end
