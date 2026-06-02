c
c
      call s1
      print *,'pass'
      end
      subroutine s1
      call ss1
      call ss2
      call ss3
      end
      subroutine ss3
      type  st
        integer     z1(2)
        complex     z2(2)
        character*4 z3(2)
        integer     z4    
        complex     z5    
        character*4 z6    
      end type       
      type  tt 
        integer     x0
        type (st):: x1(2)
      end type       
      type  yy
        integer     y0
        type (tt):: y1(1,2)
      end type       
      type(st),parameter::st1=
     1 st((/11,12/),(/(12,12),(13,13)/),
     1    (/'pqrs','tuvw'/),13,(14,14),'xyz?')
      type(st),parameter::st2=
     1 st((/1,2/),(/(2,2),(3,3)/),(/'3456','7890'/),3,(4,4),'abcd')
      type(st),parameter::st3=
     1 st((/21,22/),(/(22,22),(23,23)/),
     1    (/'pqrs','tuvw'/),23,(24,24),'xyz?')
      type(st),parameter::st4=
     1 st((/4,5/),(/(5,5),(6,6)/),(/'efgh','hijk'/),6,(7,7),'lmno') 
      type(tt),parameter::tt1= tt( 0, (/ st1 , st2 /) )
      type(tt),parameter::tt2= tt( 0, (/ st3 , st4 /) )
      integer,parameter,dimension(2)::r=(/1,2/)
      type(yy),parameter::yy1= yy( 0, reshape((/ tt1 , tt2 /),r))
      integer,dimension(2),parameter::s=(/1,2/)
      dimension se1(2),se2(2),se3(2),se4(2),se5(2),se6(2),se7(2),se8(2)
      integer,parameter::se1=yy1%y1(1,s)%x1(2)%z1(2)
      complex,parameter::se2=yy1%y1(1,s)%x1(2)%z2(2)
      character(len=4,kind=1),parameter::se3=yy1%y1(1,s)%x1(2)%z3(2)
      character(len=2,kind=1),parameter::
     1                             se4=yy1%y1(1,s)%x1(2)%z3(2)(2:3)
      integer,parameter::se5=yy1%y1(1,s)%x1(2)%z4   
      complex,parameter::se6=yy1%y1(1,s)%x1(2)%z5   
      character(len=4,kind=1),parameter::se7=yy1%y1(1,s)%x1(2)%z6   
      character(len=2,kind=1),parameter::se8=yy1%y1(1,s)%x1(2)%z6(2:3)
c     print *,se1
      if (se1(1)/=2)call err(0,0,0,0,5,1)
      if (se1(2)/=5)call err(0,0,0,1,5,1)
      if (se2(1)/=(3,3))call err(0,0,0,0,5,2)
      if (se2(2)/=(6,6))call err(0,0,0,1,5,2)
      if (se3(1)/='7890')call err(0,0,0,0,5,3)
      if (se3(2)/='hijk')call err(0,0,0,1,5,3)
      if (se4(1)/='89')call err(0,0,0,0,5,4)
      if (se4(2)/='ij')call err(0,0,0,1,5,4)
      if (se5(1)/=3)call err(0,0,0,0,5,1)
      if (se5(2)/=6)call err(0,0,0,1,5,1)
      if (se6(1)/=(4,4))call err(0,0,0,0,5,2)
      if (se6(2)/=(7,7))call err(0,0,0,1,5,2)
      if (se7(1)/='abcd')call err(0,0,0,0,5,3)
      if (se7(2)/='lmno')call err(0,0,0,1,5,3)
      if (se8(1)/='bc')call err(0,0,0,0,5,4)
      if (se8(2)/='mn')call err(0,0,0,1,5,4)
      end
      subroutine ss2
      type  st
        integer     z1(2)
        complex     z2(2)
        character*4 z3(2)
        integer     z4    
        complex     z5    
        character*4 z6    
      end type       
      type  tt 
        integer     x0
        type (st):: x1(2)
      end type       
      type  yy
        integer     y0
        type (tt):: y1(1,2)
      end type       
      type(st),parameter::st1=
     1 st((/11,12/),(/(12,12),(13,13)/),
     1    (/'pqrs','tuvw'/),13,(14,14),'xyz?')
      type(st),parameter::st2=
     1 st((/1,2/),(/(2,2),(3,3)/),(/'3456','7890'/),3,(4,4),'abcd')
      type(st),parameter::st3=
     1 st((/21,22/),(/(22,22),(23,23)/),
     1    (/'pqrs','tuvw'/),23,(24,24),'xyz?')
      type(st),parameter::st4=
     1 st((/4,5/),(/(5,5),(6,6)/),(/'efgh','hijk'/),6,(7,7),'lmno') 
      type(tt),parameter::tt1= tt( 0, (/ st1 , st2 /) )
      type(tt),parameter::tt2= tt( 0, (/ st3 , st4 /) )
      integer,parameter,dimension(2)::r=(/1,2/)
      type(yy),parameter::yy1= yy( 0, reshape((/ tt1 , tt2 /),r))
      dimension se1(2),se2(2),se3(2),se4(2),se5(2),se6(2),se7(2),se8(2)
      integer,parameter::se1=yy1%y1(1,1:2)%x1(2)%z1(2)
      complex,parameter::se2=yy1%y1(1,1:2)%x1(2)%z2(2)
      character(len=4,kind=1),parameter::se3=yy1%y1(1,1:2)%x1(2)%z3(2)
      character(len=2,kind=1),parameter::se4=
     1                        yy1%y1(1,1:2)%x1(2)%z3(2)(2:3)
      integer,parameter::se5=yy1%y1(1,1:2)%x1(2)%z4   
      complex,parameter::se6=yy1%y1(1,1:2)%x1(2)%z5   
      character(len=4,kind=1),parameter::se7=yy1%y1(1,1:2)%x1(2)%z6   
      character(len=2,kind=1),parameter::se8=yy1%y1(1,1:2)%x1(2)%z6(2:3)
c     print *,se1
      if (se1(1)/=2)call err(0,0,0,0,5,1)
      if (se1(2)/=5)call err(0,0,0,1,5,1)
      if (se2(1)/=(3,3))call err(0,0,0,0,5,2)
      if (se2(2)/=(6,6))call err(0,0,0,1,5,2)
      if (se3(1)/='7890')call err(0,0,0,0,5,3)
      if (se3(2)/='hijk')call err(0,0,0,1,5,3)
      if (se4(1)/='89')call err(0,0,0,0,5,4)
      if (se4(2)/='ij')call err(0,0,0,1,5,4)
      if (se5(1)/=3)call err(0,0,0,0,5,1)
      if (se5(2)/=6)call err(0,0,0,1,5,1)
      if (se6(1)/=(4,4))call err(0,0,0,0,5,2)
      if (se6(2)/=(7,7))call err(0,0,0,1,5,2)
      if (se7(1)/='abcd')call err(0,0,0,0,5,3)
      if (se7(2)/='lmno')call err(0,0,0,1,5,3)
      if (se8(1)/='bc')call err(0,0,0,0,5,4)
      if (se8(2)/='mn')call err(0,0,0,1,5,4)
      end
      subroutine ss1
      type  st
        integer     z1(2)
        complex     z2(2)
        character*4 z3(2)
        integer     z4    
        complex     z5    
        character*4 z6    
      end type       
      type  tt 
        integer     x0
        type (st):: x1(2)
      end type       
      type  yy
        integer     y0
        type (tt):: y1(2,1)
      end type       
      type(st),parameter::st1=
     1 st((/11,12/),(/(12,12),(13,13)/),
     1    (/'pqrs','tuvw'/),13,(14,14),'xyz?')
      type(st),parameter::st2=
     1 st((/1,2/),(/(2,2),(3,3)/),(/'3456','7890'/),3,(4,4),'abcd')
      type(st),parameter::st3=
     1 st((/21,22/),(/(22,22),(23,23)/),
     1    (/'pqrs','tuvw'/),23,(24,24),'xyz?')
      type(st),parameter::st4=
     1 st((/4,5/),(/(5,5),(6,6)/),(/'efgh','hijk'/),6,(7,7),'lmno') 
      type(tt),parameter::tt1= tt( 0, (/ st1 , st2 /) )
      type(tt),parameter::tt2= tt( 0, (/ st3 , st4 /) )
      integer,parameter,dimension(2)::r=(/2,1/)
      integer,parameter,dimension(2)::s=(/1,2/)
      type(yy),parameter::yy1= yy( 0, reshape((/ tt1 , tt2 /),r))
      dimension se1(2),se2(2),se3(2),se4(2),se5(2),se6(2),se7(2),se8(2)
      integer,parameter::se1=yy1%y1(s,1)%x1(2)%z1(2)
      complex,parameter::se2=yy1%y1(s,1)%x1(2)%z2(2)
      character(len=4,kind=1),parameter::se3=yy1%y1(s,1)%x1(2)%z3(2)
      character(len=2,kind=1),parameter::
     1  se4=yy1%y1(s,1)%x1(2)%z3(2)(2:3)
      integer,parameter::se5=yy1%y1(s,1)%x1(2)%z4   
      complex,parameter::se6=yy1%y1(s,1)%x1(2)%z5   
      character(len=4,kind=1),parameter::se7=yy1%y1(s,1)%x1(2)%z6   
      character(len=2,kind=1),parameter::se8=yy1%y1(s,1)%x1(2)%z6(2:3)
c     print *,se1
      if (se1(1)/=2)call err(0,0,0,0,5,1)
      if (se1(2)/=5)call err(0,0,0,1,5,1)
      if (se2(1)/=(3,3))call err(0,0,0,0,5,2)
      if (se2(2)/=(6,6))call err(0,0,0,1,5,2)
      if (se3(1)/='7890')call err(0,0,0,0,5,3)
      if (se3(2)/='hijk')call err(0,0,0,1,5,3)
      if (se4(1)/='89')call err(0,0,0,0,5,4)
      if (se4(2)/='ij')call err(0,0,0,1,5,4)
      if (se5(1)/=3)call err(0,0,0,0,5,1)
      if (se5(2)/=6)call err(0,0,0,1,5,1)
      if (se6(1)/=(4,4))call err(0,0,0,0,5,2)
      if (se6(2)/=(7,7))call err(0,0,0,1,5,2)
      if (se7(1)/='abcd')call err(0,0,0,0,5,3)
      if (se7(2)/='lmno')call err(0,0,0,1,5,3)
      if (se8(1)/='bc')call err(0,0,0,0,5,4)
      if (se8(2)/='mn')call err(0,0,0,1,5,4)
      end
      subroutine err(i1,i2,i3,i4,i5,i6)
      print *,'fail'
      print *,'error code :',i1,i2,i3,i4,i5,i6
      end
