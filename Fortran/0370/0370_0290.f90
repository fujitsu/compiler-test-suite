  implicit none

  type tya
     integer::a0 = 1
     integer::a1 = 2
  end type tya

  type tyo0
     type(tya) :: ot
     integer::o0 = 91
     integer::o1 = 92
  end type tyo0

  type tyb
     integer::b0 = 10
     type(tya) :: bt0
     type(tyo0) :: bt1(3)
     integer::b1 = 20
  end type tyb
  type(tyb),target,save :: strb

  type tm
     integer,pointer   :: ma=>strb%b1
     type(tya),pointer :: m00=>strb%bt0
     integer,pointer   :: m01=>strb%bt0%a1
     type(tya),pointer :: m10=>strb%bt1(1)%ot
     integer,pointer   :: m11=>strb%bt1(3)%o1
     integer,pointer   :: m12=>strb%bt1(2)%ot%a1
  end type tm
  type (tm) :: strm

  strb%bt1(2)%ot%a0=5
  strb%bt1(2)%ot%a1=6
  strb%bt1(2)%ot%a0=7
  strb%bt1(2)%ot%a1=8

  print *, strm%ma

  print *, strm%m00
  print *, strm%m01
  print *, strm%m10
  print *, strm%m11
  print *, strm%m12
end program
