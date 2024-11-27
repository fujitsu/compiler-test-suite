  module m1
    type x
     integer::x1
     integer::x2
     integer::x3
    end type
  end
    use m1
    type(x)::a(3,5)
    integer n(12)
    a=x(-1,-2,-3)
    call sub(a(1:3:2,2:5:2))
    write(1,*)a(1:3:2,2:5:2)
    write(1,*)a(2:3:2,1:5:2)
    rewind 1
    read(1,*) n
    if (any(n(1:3)/=(/1,2,3/)))write(6,*) "NG"
    if (any(n(4:6)/=(/1,2,3/)))write(6,*) "NG"
    if (any(n(7:9)/=(/1,2,3/)))write(6,*) "NG"
    if (any(n(10:12)/=(/1,2,3/)))write(6,*) "NG"
    read(1,*) n(1:9)
    if (any(-n(1:3)/=(/1,2,3/)))write(6,*) "NG"
    if (any(-n(4:6)/=(/1,2,3/)))write(6,*) "NG"
    if (any(-n(7:9)/=(/1,2,3/)))write(6,*) "NG"
    print *,'pass'
    contains
  subroutine sub(a)
    use m1
    type(x),intent(out)::a(:,:)
    a=x(1,2,3)
   end subroutine 
  end
