 call s1
 print *,'pass'
 end
 subroutine s1
    type a
      sequence
      integer:: a1
    end type
    type(a)::x3
    do i=1,3
      call ss1(i,x3)
    end do
 end
 subroutine ss1(i,x3)
    type a
      sequence
      integer:: a1=1
    end type
    type(a)::x1,x2(i)
    type(a),intent(out)::x3
    type(a)::x5,x51
    if (x1%a1/=1)write(6,*) "NG"        
    x1%a1=-1
    if (any(x2%a1/=1))write(6,*) "NG"
    x2%a1=-1
    if ((x3%a1/=1))write(6,*) "NG"
    x3%a1=-1
    x51=x5()
    if (x51%a1/=1)write(6,*) "NG"
 end
 function x5()
    type a
      sequence
      integer:: a1=1
    end type
    type(a)::x5
 end 
