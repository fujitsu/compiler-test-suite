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
    type(p3),parameter::x1=p3(p2(p1(1,1),p1(1,1)),&
                              p2(p1(1,1),p1(1,1)))
    integer,dimension(1),parameter::j12=ubound(x1%pe1%pr2%pp1)
end

