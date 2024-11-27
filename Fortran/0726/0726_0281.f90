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
    integer,dimension(1),parameter::j1=lbound(G%A)
    integer,dimension(1),parameter::j2=lbound(H%B)
    integer,dimension(1),parameter::j3=lbound(I%A)
    integer,dimension(1),parameter::j4=lbound(J%B)
    integer,dimension(1),parameter::j11=lbound(x1%pe1%pr1%pp2)
    integer,dimension(1),parameter::j12=lbound(x1%pe1%pr2%pp1)
    integer,dimension(1),parameter::j13=lbound(x1%pe1%pr2    )
    integer,dimension(1),parameter::j14=lbound(x1%pe2%pr1%pp1)
    integer,dimension(1),parameter::j15=lbound(x1%pe2%pr1    )
    integer,dimension(1),parameter::j16=lbound(x1%pe2        )
    integer,dimension(1),parameter::j17=lbound(x2%pe1%pr1%pp1)
    integer,dimension(1),parameter::j18=lbound(x2%pe1%pr1    )
    integer,dimension(1),parameter::j19=lbound(x2%pe1        )
    integer,dimension(1),parameter::j20=lbound(x2            )
    real,pointer,dimension(:)::z1,z2,z3
    ALLOCATE ( F(0:6) )
    z1=>F%A
    z2=>G%A
    z3=>H%B
    if (any(lbound(F%A)/=(/1/)))write(6,*) "NG"
    if (any(lbound(G%A)/=(/1/)))write(6,*) "NG"
    if (any(lbound(H%B)/=(/0/)))write(6,*) "NG"
    if (any(j1/=1))write(6,*) "NG"
    if (any(j2/=0))write(6,*) "NG"
    if (any(j3/=1))write(6,*) "NG"
    if (any(j4/=0))write(6,*) "NG"
    if (any(j11/=0))write(6,*) "NG"
    if (any(j12/=1))write(6,*) "NG"
    if (any(j13/=0))write(6,*) "NG"
    if (any(j14/=1))write(6,*) "NG"
    if (any(j15/=1))write(6,*) "NG"
    if (any(j16/=0))write(6,*) "NG"
    if (any(j17/=1))write(6,*) "NG"
    if (any(j18/=1))write(6,*) "NG"
    if (any(j19/=1))write(6,*) "NG"
    if (any(j20/=0))write(6,*) "NG"
end
