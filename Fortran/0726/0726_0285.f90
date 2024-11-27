 call s1
 print *,'pass'
 end
 subroutine s1
    TYPE p1
      REAL :: pp1
      REAL :: pp2(0:6)
    END TYPE p1
    type p2
      type(p1)::pr1
      type(p1)::pr2(0:6)
    end type
    type p3
      type(p2)::pe1
      type(p2)::pe2(0:6)
    end type
    TYPE OBJECT
      REAL :: A
      REAL :: B(0:6)
    END TYPE OBJECT
    TYPE(OBJECT),TARGET, ALLOCATABLE :: F(:)
    TYPE(OBJECT),TARGET       :: G(0:6)
    TYPE(OBJECT),TARGET       :: H
    TYPE(OBJECT), parameter   :: I(0:6)=OBJECT(1.0,2.0)
    TYPE(OBJECT), parameter   :: J     =OBJECT(1.0,2.0)
    type(p3),parameter::x1=p3(p2(p1(1,1),p1(1,1)),&
                              p2(p1(1,1),p1(1,1)))
    type(p3),parameter::x2(0:6)=x1
    integer,dimension(1),parameter::j1=ubound(G%A)
    integer,dimension(1),parameter::j2=ubound(H%B)
    integer,dimension(1),parameter::j3=ubound(I%A)
    integer,dimension(1),parameter::j4=ubound(J%B)
    integer,dimension(1),parameter::j11=ubound(x1%pe1%pr1%pp2)
    integer,dimension(1),parameter::j12=ubound(x1%pe1%pr2%pp1)
    integer,dimension(1),parameter::j13=ubound(x1%pe1%pr2    )
    integer,dimension(1),parameter::j14=ubound(x1%pe2%pr1%pp1)
    integer,dimension(1),parameter::j15=ubound(x1%pe2%pr1    )
    integer,dimension(1),parameter::j16=ubound(x1%pe2        )
    integer,dimension(1),parameter::j17=ubound(x2%pe1%pr1%pp1)
    integer,dimension(1),parameter::j18=ubound(x2%pe1%pr1    )
    integer,dimension(1),parameter::j19=ubound(x2%pe1        )
    integer,dimension(1),parameter::j20=ubound(x2            )
    real,pointer,dimension(:)::z1,z2,z3
    ALLOCATE ( F(0:6) )
    z1=>F%A
    z2=>G%A
    z3=>H%B
    if (any(ubound(F%A)/=(/7/)))write(6,*) "NG"
    if (any(ubound(G%A)/=(/7/)))write(6,*) "NG"
    if (any(ubound(H%B)/=(/6/)))write(6,*) "NG"
    if (any(j1/=7))write(6,*) "NG"
    if (any(j2/=6))write(6,*) "NG"
    if (any(j3/=7))write(6,*) "NG"
    if (any(j4/=6))write(6,*) "NG"
    if (any(j11/=6))write(6,*) "NG"
    if (any(j12/=7))write(6,*) "NG"
    if (any(j13/=6))write(6,*) "NG"
    if (any(j14/=7))write(6,*) "NG"
    if (any(j15/=7))write(6,*) "NG"
    if (any(j16/=6))write(6,*) "NG"
    if (any(j17/=7))write(6,*) "NG"
    if (any(j18/=7))write(6,*) "NG"
    if (any(j19/=7))write(6,*) "NG"
    if (any(j20/=6))write(6,*) "NG"
end
