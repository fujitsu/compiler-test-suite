  program main
    call test01() 
    call test02() 
    call test03() 
    call test04() 
    call test05() 
    call test06() 
    call test07() 
    call test08() 
    call test09() 
    call test10() 
    call test11() 
    call test12() 

    print *," *** pass *** "

  end program main

  subroutine test01()
    integer,parameter,dimension(3) :: a = (/1,3,5/)
    integer          ,dimension(3) :: aa = (/1,3,5/)

    integer,parameter :: b1 = lbound(a,1)
    integer,parameter :: b2 = lbound((a),1)
    integer,parameter :: b3 = lbound(((a)),1)
    integer,parameter :: b4 = lbound(+a,1)
    integer,parameter :: b5 = lbound((+a),1)
    integer,parameter :: b6 = lbound(((+a)),1)
    integer,parameter :: b7 = lbound((+(a)),1)
    integer,parameter :: b8 = lbound(a+0,1)
    integer,parameter :: b9 = lbound(((a)+0),1)

    integer,parameter :: c1 = lbound(a,1)
    integer,parameter :: c2 = lbound((a),1)
    integer,parameter :: c3 = lbound(((a)),1)
    integer,parameter :: c4 = lbound(+a,1)
    integer,parameter :: c5 = lbound((+a),1)
    integer,parameter :: c6 = lbound(((+a)),1)
    integer,parameter :: c7 = lbound((+(a)),1)
    integer,parameter :: c8 = lbound(a+0,1)
    integer,parameter :: c9 = lbound(((a)+0),1)

    integer :: error

    error = 0

    if(b1 /= lbound(aa,1)) error = error+1
    if(b2 /= lbound((aa),1)) error = error+1
    if(b3 /= lbound(((aa)),1)) error = error+1
    if(b4 /= lbound(+aa,1)) error = error+1
    if(b5 /= lbound((+aa),1)) error = error+1
    if(b6 /= lbound(((+aa)),1)) error = error+1
    if(b7 /= lbound((+(aa)),1)) error = error+1
    if(b8 /= lbound(aa+0,1)) error = error+1
    if(b9 /= lbound(((aa)+0),1)) error = error+1
    if(c1 /= lbound(aa,1)) error = error+1
    if(c2 /= lbound((aa),1)) error = error+1
    if(c3 /= lbound(((aa)),1)) error = error+1
    if(c4 /= lbound(+aa,1)) error = error+1
    if(c5 /= lbound((+aa),1)) error = error+1
    if(c6 /= lbound(((+aa)),1)) error = error+1
    if(c7 /= lbound((+(aa)),1)) error = error+1
    if(c8 /= lbound(aa+0,1)) error = error+1
    if(c9 /= lbound(((aa)+0),1)) error = error+1

    if (error /= 0) print *, " +++ test item 1 : ng +++ ",error
  end subroutine test01

  subroutine test02()
    integer,parameter,dimension(2:4) :: a = (/1,3,5/)
    integer          ,dimension(2:4) :: aa = (/1,3,5/)

    integer,parameter :: b1 = lbound(a,1)
    integer,parameter :: b2 = lbound((a),1)
    integer,parameter :: b3 = lbound(((a)),1)
    integer,parameter :: b4 = lbound(+a,1)
    integer,parameter :: b5 = lbound((+a),1)
    integer,parameter :: b6 = lbound(((+a)),1)
    integer,parameter :: b7 = lbound((+(a)),1)
    integer,parameter :: b8 = lbound(a+0,1)
    integer,parameter :: b9 = lbound(((a)+0),1)

    integer,parameter :: c1 = lbound(a,1)
    integer,parameter :: c2 = lbound((a),1)
    integer,parameter :: c3 = lbound(((a)),1)
    integer,parameter :: c4 = lbound(+a,1)
    integer,parameter :: c5 = lbound((+a),1)
    integer,parameter :: c6 = lbound(((+a)),1)
    integer,parameter :: c7 = lbound((+(a)),1)
    integer,parameter :: c8 = lbound(a+0,1)
    integer,parameter :: c9 = lbound(((a)+0),1)

    integer :: error

    error = 0

    if(b1 /= lbound(aa,1)) error = error+1
    if(b2 /= lbound((aa),1)) error = error+1
    if(b3 /= lbound(((aa)),1)) error = error+1
    if(b4 /= lbound(+aa,1)) error = error+1
    if(b5 /= lbound((+aa),1)) error = error+1
    if(b6 /= lbound(((+aa)),1)) error = error+1
    if(b7 /= lbound((+(aa)),1)) error = error+1
    if(b8 /= lbound(aa+0,1)) error = error+1
    if(b9 /= lbound(((aa)+0),1)) error = error+1
    if(c1 /= lbound(aa,1)) error = error+1
    if(c2 /= lbound((aa),1)) error = error+1
    if(c3 /= lbound(((aa)),1)) error = error+1
    if(c4 /= lbound(+aa,1)) error = error+1
    if(c5 /= lbound((+aa),1)) error = error+1
    if(c6 /= lbound(((+aa)),1)) error = error+1
    if(c7 /= lbound((+(aa)),1)) error = error+1
    if(c8 /= lbound(aa+0,1)) error = error+1
    if(c9 /= lbound(((aa)+0),1)) error = error+1

    if (error /= 0) print *, " +++ test item 2 : ng +++ ",error
  end subroutine test02

  subroutine test03()
    integer,parameter,dimension(-1:1) :: a = (/1,3,5/)
    integer          ,dimension(-1:1) :: aa = (/1,3,5/)

    integer,parameter :: b1 = lbound(a,1)
    integer,parameter :: b2 = lbound((a),1)
    integer,parameter :: b3 = lbound(((a)),1)
    integer,parameter :: b4 = lbound(+a,1)
    integer,parameter :: b5 = lbound((+a),1)
    integer,parameter :: b6 = lbound(((+a)),1)
    integer,parameter :: b7 = lbound((+(a)),1)
    integer,parameter :: b8 = lbound(a+0,1)
    integer,parameter :: b9 = lbound(((a)+0),1)

    integer,parameter :: c1 = lbound(a,1)
    integer,parameter :: c2 = lbound((a),1)
    integer,parameter :: c3 = lbound(((a)),1)
    integer,parameter :: c4 = lbound(+a,1)
    integer,parameter :: c5 = lbound((+a),1)
    integer,parameter :: c6 = lbound(((+a)),1)
    integer,parameter :: c7 = lbound((+(a)),1)
    integer,parameter :: c8 = lbound(a+0,1)
    integer,parameter :: c9 = lbound(((a)+0),1)

    integer :: error

    error = 0

    if(b1 /= lbound(aa,1)) error = error+1
    if(b2 /= lbound((aa),1)) error = error+1
    if(b3 /= lbound(((aa)),1)) error = error+1
    if(b4 /= lbound(+aa,1)) error = error+1
    if(b5 /= lbound((+aa),1)) error = error+1
    if(b6 /= lbound(((+aa)),1)) error = error+1
    if(b7 /= lbound((+(aa)),1)) error = error+1
    if(b8 /= lbound(aa+0,1)) error = error+1
    if(b9 /= lbound(((aa)+0),1)) error = error+1
    if(c1 /= lbound(aa,1)) error = error+1
    if(c2 /= lbound((aa),1)) error = error+1
    if(c3 /= lbound(((aa)),1)) error = error+1
    if(c4 /= lbound(+aa,1)) error = error+1
    if(c5 /= lbound((+aa),1)) error = error+1
    if(c6 /= lbound(((+aa)),1)) error = error+1
    if(c7 /= lbound((+(aa)),1)) error = error+1
    if(c8 /= lbound(aa+0,1)) error = error+1
    if(c9 /= lbound(((aa)+0),1)) error = error+1

    if (error /= 0) print *, " +++ test item 3 : ng +++ ",error
  end subroutine test03

  subroutine test04()
    integer,parameter,dimension(1:0) :: a = 999
    integer          ,dimension(1:0) :: aa = 999

    integer,parameter :: b1 = lbound(a,1)
    integer,parameter :: b2 = lbound((a),1)
    integer,parameter :: b3 = lbound(((a)),1)
    integer,parameter :: b4 = lbound(+a,1)
    integer,parameter :: b5 = lbound((+a),1)
    integer,parameter :: b6 = lbound(((+a)),1)
    integer,parameter :: b7 = lbound((+(a)),1)
    integer,parameter :: b8 = lbound(a+0,1)
    integer,parameter :: b9 = lbound(((a)+0),1)

    integer,parameter :: c1 = lbound(a,1)
    integer,parameter :: c2 = lbound((a),1)
    integer,parameter :: c3 = lbound(((a)),1)
    integer,parameter :: c4 = lbound(+a,1)
    integer,parameter :: c5 = lbound((+a),1)
    integer,parameter :: c6 = lbound(((+a)),1)
    integer,parameter :: c7 = lbound((+(a)),1)
    integer,parameter :: c8 = lbound(a+0,1)
    integer,parameter :: c9 = lbound(((a)+0),1)

    integer :: error

    error = 0

    if(b1 /= lbound(aa,1)) error = error+1
    if(b2 /= lbound((aa),1)) error = error+1
    if(b3 /= lbound(((aa)),1)) error = error+1
    if(b4 /= lbound(+aa,1)) error = error+1
    if(b5 /= lbound((+aa),1)) error = error+1
    if(b6 /= lbound(((+aa)),1)) error = error+1
    if(b7 /= lbound((+(aa)),1)) error = error+1
    if(b8 /= lbound(aa+0,1)) error = error+1
    if(b9 /= lbound(((aa)+0),1)) error = error+1
    if(c1 /= lbound(aa,1)) error = error+1
    if(c2 /= lbound((aa),1)) error = error+1
    if(c3 /= lbound(((aa)),1)) error = error+1
    if(c4 /= lbound(+aa,1)) error = error+1
    if(c5 /= lbound((+aa),1)) error = error+1
    if(c6 /= lbound(((+aa)),1)) error = error+1
    if(c7 /= lbound((+(aa)),1)) error = error+1
    if(c8 /= lbound(aa+0,1)) error = error+1
    if(c9 /= lbound(((aa)+0),1)) error = error+1

    if (error /= 0) print *, " +++ test item 4 : ng +++ ",error
  end subroutine test04

  subroutine test05()
    type typ ; sequence ; integer :: e1 ; endtype

    type(typ),parameter,dimension(3) :: a = (/ typ(1),typ(2),typ(3) /)
    type(typ)          ,dimension(3) :: aa = (/ typ(1),typ(2),typ(3) /)

    integer,parameter :: b1 = lbound(a,1)
    integer,parameter :: b2 = lbound((a),1)
    integer,parameter :: b3 = lbound(((a)),1)

    integer,parameter :: c1 = lbound(a,1)
    integer,parameter :: c2 = lbound((a),1)
    integer,parameter :: c3 = lbound(((a)),1)

    integer :: error

    error = 0

    if(b1 /= lbound(aa,1)) error = error+1
    if(b2 /= lbound((aa),1)) error = error+1
    if(b3 /= lbound(((aa)),1)) error = error+1
    if(c1 /= lbound(aa,1)) error = error+1
    if(c2 /= lbound((aa),1)) error = error+1
    if(c3 /= lbound(((aa)),1)) error = error+1

    if (error /= 0) print *, " +++ test item 5 : ng +++ ",error
  end subroutine test05

  subroutine test06()
    type typ ; sequence ; integer :: e1 ; endtype

    type(typ),parameter,dimension(2:4) :: a = (/ typ(1),typ(2),typ(3) /)
    type(typ)          ,dimension(2:4) :: aa = (/ typ(1),typ(2),typ(3) /)

    integer,parameter :: b1 = lbound(a,1)
    integer,parameter :: b2 = lbound((a),1)
    integer,parameter :: b3 = lbound(((a)),1)

    integer,parameter :: c1 = lbound(a,1)
    integer,parameter :: c2 = lbound((a),1)
    integer,parameter :: c3 = lbound(((a)),1)

    integer :: error

    error = 0

    if(b1 /= lbound(aa,1)) error = error+1
    if(b2 /= lbound((aa),1)) error = error+1
    if(b3 /= lbound(((aa)),1)) error = error+1
    if(c1 /= lbound(aa,1)) error = error+1
    if(c2 /= lbound((aa),1)) error = error+1
    if(c3 /= lbound(((aa)),1)) error = error+1

    if (error /= 0) print *, " +++ test item 6 : ng +++ ",error
  end subroutine test06

  subroutine test07()
    type typ ; sequence ; integer :: e1 ; endtype

    type(typ),parameter,dimension(-1:1) :: a = (/ typ(1),typ(2),typ(3) /)
    type(typ)          ,dimension(-1:1) :: aa = (/ typ(1),typ(2),typ(3) /)

    integer,parameter :: b1 = lbound(a,1)
    integer,parameter :: b2 = lbound((a),1)
    integer,parameter :: b3 = lbound(((a)),1)

    integer,parameter :: c1 = lbound(a,1)
    integer,parameter :: c2 = lbound((a),1)
    integer,parameter :: c3 = lbound(((a)),1)

    integer :: error

    error = 0

    if(b1 /= lbound(aa,1)) error = error+1
    if(b2 /= lbound((aa),1)) error = error+1
    if(b3 /= lbound(((aa)),1)) error = error+1
    if(c1 /= lbound(aa,1)) error = error+1
    if(c2 /= lbound((aa),1)) error = error+1
    if(c3 /= lbound(((aa)),1)) error = error+1

    if (error /= 0) print *, " +++ test item 7 : ng +++ ",error
  end subroutine test07

  subroutine test08()
    type typ ; sequence ; integer :: e1 ; endtype

    type(typ),parameter,dimension(1:0) :: a = typ(0)
    type(typ)          ,dimension(1:0) :: aa = typ(0)

    integer,parameter :: b1 = lbound(a,1)
    integer,parameter :: b2 = lbound((a),1)
    integer,parameter :: b3 = lbound(((a)),1)

    integer,parameter :: c1 = lbound(a,1)
    integer,parameter :: c2 = lbound((a),1)
    integer,parameter :: c3 = lbound(((a)),1)

    integer :: error

    error = 0

    if(b1 /= lbound(aa,1)) error = error+1
    if(b2 /= lbound((aa),1)) error = error+1
    if(b3 /= lbound(((aa)),1)) error = error+1
    if(c1 /= lbound(aa,1)) error = error+1
    if(c2 /= lbound((aa),1)) error = error+1
    if(c3 /= lbound(((aa)),1)) error = error+1

    if (error /= 0) print *, " +++ test item 8 : ng +++ ",error
  end subroutine test08

  subroutine test09()
    type typ ; sequence ; integer :: e1 ; endtype

    type(typ),parameter,dimension(3) :: a = (/ typ(1),typ(2),typ(3) /)
    type(typ)          ,dimension(3) :: aa = (/ typ(1),typ(2),typ(3) /)

    integer,parameter :: b1 = lbound(a%e1,1)
    integer,parameter :: b2 = lbound((a%e1),1)
    integer,parameter :: b3 = lbound(((a%e1)),1)
    integer,parameter :: b4 = lbound(+a%e1,1)
    integer,parameter :: b5 = lbound((+a%e1),1)
    integer,parameter :: b6 = lbound(((+a%e1)),1)
    integer,parameter :: b7 = lbound((+(a%e1)),1)
    integer,parameter :: b8 = lbound(a%e1+0,1)
    integer,parameter :: b9 = lbound(((a%e1)+0),1)

    integer,parameter :: c1 = lbound(a%e1,1)
    integer,parameter :: c2 = lbound((a%e1),1)
    integer,parameter :: c3 = lbound(((a%e1)),1)
    integer,parameter :: c4 = lbound(+a%e1,1)
    integer,parameter :: c5 = lbound((+a%e1),1)
    integer,parameter :: c6 = lbound(((+a%e1)),1)
    integer,parameter :: c7 = lbound((+(a%e1)),1)
    integer,parameter :: c8 = lbound(a%e1+0,1)
    integer,parameter :: c9 = lbound(((a%e1)+0),1)

    integer :: error

    error = 0

    if(b1 /= lbound(aa%e1,1)) error = error+1
    if(b2 /= lbound((aa%e1),1)) error = error+1
    if(b3 /= lbound(((aa%e1)),1)) error = error+1
    if(b4 /= lbound(+aa%e1,1)) error = error+1
    if(b5 /= lbound((+aa%e1),1)) error = error+1
    if(b6 /= lbound(((+aa%e1)),1)) error = error+1
    if(b7 /= lbound((+(aa%e1)),1)) error = error+1
    if(b8 /= lbound(aa%e1+0,1)) error = error+1
    if(b9 /= lbound(((aa%e1)+0),1)) error = error+1
    if(c1 /= lbound(aa%e1,1)) error = error+1
    if(c2 /= lbound((aa%e1),1)) error = error+1
    if(c3 /= lbound(((aa%e1)),1)) error = error+1
    if(c4 /= lbound(+aa%e1,1)) error = error+1
    if(c5 /= lbound((+aa%e1),1)) error = error+1
    if(c6 /= lbound(((+aa%e1)),1)) error = error+1
    if(c7 /= lbound((+(aa%e1)),1)) error = error+1
    if(c8 /= lbound(aa%e1+0,1)) error = error+1
    if(c9 /= lbound(((aa%e1)+0),1)) error = error+1

    if (error /= 0) print *, " +++ test item 9 : ng +++ ",error
  end subroutine test09

  subroutine test10()
    type typ ; sequence ; integer :: e1 ; endtype

    type(typ),parameter,dimension(2:4) :: a = (/ typ(1),typ(2),typ(3) /)
    type(typ)          ,dimension(2:4) :: aa = (/ typ(1),typ(2),typ(3) /)

    integer,parameter :: b1 = lbound(a%e1,1)
    integer,parameter :: b2 = lbound((a%e1),1)
    integer,parameter :: b3 = lbound(((a%e1)),1)
    integer,parameter :: b4 = lbound(+a%e1,1)
    integer,parameter :: b5 = lbound((+a%e1),1)
    integer,parameter :: b6 = lbound(((+a%e1)),1)
    integer,parameter :: b7 = lbound((+(a%e1)),1)
    integer,parameter :: b8 = lbound(a%e1+0,1)
    integer,parameter :: b9 = lbound(((a%e1)+0),1)

    integer,parameter :: c1 = lbound(a%e1,1)
    integer,parameter :: c2 = lbound((a%e1),1)
    integer,parameter :: c3 = lbound(((a%e1)),1)
    integer,parameter :: c4 = lbound(+a%e1,1)
    integer,parameter :: c5 = lbound((+a%e1),1)
    integer,parameter :: c6 = lbound(((+a%e1)),1)
    integer,parameter :: c7 = lbound((+(a%e1)),1)
    integer,parameter :: c8 = lbound(a%e1+0,1)
    integer,parameter :: c9 = lbound(((a%e1)+0),1)

    integer :: error

    error = 0

    if(b1 /= lbound(aa%e1,1)) error = error+1
    if(b2 /= lbound((aa%e1),1)) error = error+1
    if(b3 /= lbound(((aa%e1)),1)) error = error+1
    if(b4 /= lbound(+aa%e1,1)) error = error+1
    if(b5 /= lbound((+aa%e1),1)) error = error+1
    if(b6 /= lbound(((+aa%e1)),1)) error = error+1
    if(b7 /= lbound((+(aa%e1)),1)) error = error+1
    if(b8 /= lbound(aa%e1+0,1)) error = error+1
    if(b9 /= lbound(((aa%e1)+0),1)) error = error+1
    if(c1 /= lbound(aa%e1,1)) error = error+1
    if(c2 /= lbound((aa%e1),1)) error = error+1
    if(c3 /= lbound(((aa%e1)),1)) error = error+1
    if(c4 /= lbound(+aa%e1,1)) error = error+1
    if(c5 /= lbound((+aa%e1),1)) error = error+1
    if(c6 /= lbound(((+aa%e1)),1)) error = error+1
    if(c7 /= lbound((+(aa%e1)),1)) error = error+1
    if(c8 /= lbound(aa%e1+0,1)) error = error+1
    if(c9 /= lbound(((aa%e1)+0),1)) error = error+1

    if (error /= 0) print *, " +++ test item 10 : ng +++ ",error
  end subroutine test10

  subroutine test11()
    type typ ; sequence ; integer :: e1 ; endtype

    type(typ),parameter,dimension(-1:1) :: a = (/ typ(1),typ(2),typ(3) /)
    type(typ)          ,dimension(-1:1) :: aa = (/ typ(1),typ(2),typ(3) /)

    integer,parameter :: b1 = lbound(a%e1,1)
    integer,parameter :: b2 = lbound((a%e1),1)
    integer,parameter :: b3 = lbound(((a%e1)),1)
    integer,parameter :: b4 = lbound(+a%e1,1)
    integer,parameter :: b5 = lbound((+a%e1),1)
    integer,parameter :: b6 = lbound(((+a%e1)),1)
    integer,parameter :: b7 = lbound((+(a%e1)),1)
    integer,parameter :: b8 = lbound(a%e1+0,1)
    integer,parameter :: b9 = lbound(((a%e1)+0),1)

    integer,parameter :: c1 = lbound(a%e1,1)
    integer,parameter :: c2 = lbound((a%e1),1)
    integer,parameter :: c3 = lbound(((a%e1)),1)
    integer,parameter :: c4 = lbound(+a%e1,1)
    integer,parameter :: c5 = lbound((+a%e1),1)
    integer,parameter :: c6 = lbound(((+a%e1)),1)
    integer,parameter :: c7 = lbound((+(a%e1)),1)
    integer,parameter :: c8 = lbound(a%e1+0,1)
    integer,parameter :: c9 = lbound(((a%e1)+0),1)

    integer :: error

    error = 0

    if(b1 /= lbound(aa%e1,1)) error = error+1
    if(b2 /= lbound((aa%e1),1)) error = error+1
    if(b3 /= lbound(((aa%e1)),1)) error = error+1
    if(b4 /= lbound(+aa%e1,1)) error = error+1
    if(b5 /= lbound((+aa%e1),1)) error = error+1
    if(b6 /= lbound(((+aa%e1)),1)) error = error+1
    if(b7 /= lbound((+(aa%e1)),1)) error = error+1
    if(b8 /= lbound(aa%e1+0,1)) error = error+1
    if(b9 /= lbound(((aa%e1)+0),1)) error = error+1
    if(c1 /= lbound(aa%e1,1)) error = error+1
    if(c2 /= lbound((aa%e1),1)) error = error+1
    if(c3 /= lbound(((aa%e1)),1)) error = error+1
    if(c4 /= lbound(+aa%e1,1)) error = error+1
    if(c5 /= lbound((+aa%e1),1)) error = error+1
    if(c6 /= lbound(((+aa%e1)),1)) error = error+1
    if(c7 /= lbound((+(aa%e1)),1)) error = error+1
    if(c8 /= lbound(aa%e1+0,1)) error = error+1
    if(c9 /= lbound(((aa%e1)+0),1)) error = error+1

    if (error /= 0) print *, " +++ test item 11 : ng +++ ",error
  end subroutine test11

  subroutine test12()
    type typ ; sequence ; integer :: e1 ; endtype

    type(typ),parameter,dimension(1:0) :: a = typ(0)
    type(typ)          ,dimension(1:0) :: aa = typ(0)

    integer,parameter :: b1 = lbound(a%e1,1)
    integer,parameter :: b2 = lbound((a%e1),1)
    integer,parameter :: b3 = lbound(((a%e1)),1)
    integer,parameter :: b4 = lbound(+a%e1,1)
    integer,parameter :: b5 = lbound((+a%e1),1)
    integer,parameter :: b6 = lbound(((+a%e1)),1)
    integer,parameter :: b7 = lbound((+(a%e1)),1)
    integer,parameter :: b8 = lbound(a%e1+0,1)
    integer,parameter :: b9 = lbound(((a%e1)+0),1)

    integer,parameter :: c1 = lbound(a%e1,1)
    integer,parameter :: c2 = lbound((a%e1),1)
    integer,parameter :: c3 = lbound(((a%e1)),1)
    integer,parameter :: c4 = lbound(+a%e1,1)
    integer,parameter :: c5 = lbound((+a%e1),1)
    integer,parameter :: c6 = lbound(((+a%e1)),1)
    integer,parameter :: c7 = lbound((+(a%e1)),1)
    integer,parameter :: c8 = lbound(a%e1+0,1)
    integer,parameter :: c9 = lbound(((a%e1)+0),1)

    integer :: error

    error = 0

    if(b1 /= lbound(aa%e1,1)) error = error+1
    if(b2 /= lbound((aa%e1),1)) error = error+1
    if(b3 /= lbound(((aa%e1)),1)) error = error+1
    if(b4 /= lbound(+aa%e1,1)) error = error+1
    if(b5 /= lbound((+aa%e1),1)) error = error+1
    if(b6 /= lbound(((+aa%e1)),1)) error = error+1
    if(b7 /= lbound((+(aa%e1)),1)) error = error+1
    if(b8 /= lbound(aa%e1+0,1)) error = error+1
    if(b9 /= lbound(((aa%e1)+0),1)) error = error+1
    if(c1 /= lbound(aa%e1,1)) error = error+1
    if(c2 /= lbound((aa%e1),1)) error = error+1
    if(c3 /= lbound(((aa%e1)),1)) error = error+1
    if(c4 /= lbound(+aa%e1,1)) error = error+1
    if(c5 /= lbound((+aa%e1),1)) error = error+1
    if(c6 /= lbound(((+aa%e1)),1)) error = error+1
    if(c7 /= lbound((+(aa%e1)),1)) error = error+1
    if(c8 /= lbound(aa%e1+0,1)) error = error+1
    if(c9 /= lbound(((aa%e1)+0),1)) error = error+1

    if (error /= 0) print *, " +++ test item 12 : ng +++ ",error
  end subroutine test12
