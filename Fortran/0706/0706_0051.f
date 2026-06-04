      call s1
      print *,'pass'
      end
      subroutine s1
      call ss1
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
      type  stt
        type (st):: x1(2)
      end type       
      type(stt),parameter::ss=
     1 stt( (/
     1 st((/1,2/),(/(2,2),(3,3)/),(/'3456','7890'/),3,(4,4),'abcd'),
     2 st((/4,5/),(/(5,5),(6,6)/),(/'efgh','hijk'/),6,(7,7),'lmno') 
     3 /) )
      dimension se1(2),se2(2),se3(2),se4(2),se5(2),se6(2),se7(2),se8(2)
      integer,parameter::se1=ss%x1%z1(2)
      complex,parameter::se2=ss%x1%z2(2)
      character(len=4,kind=1),parameter::se3=ss%x1%z3(2)
      character(len=2,kind=1),parameter::se4=ss%x1%z3(2)(2:3)
      integer,parameter::se5=ss%x1%z4   
      complex,parameter::se6=ss%x1%z5   
      character(len=4,kind=1),parameter::se7=ss%x1%z6   
      character(len=2,kind=1),parameter::se8=ss%x1%z6(2:3)
      if (se1(2)/=5)call err(0,0,0,1,5,1)
      if (se2(2)/=(6,6))call err(0,0,0,1,5,2)
      if (se3(2)/='hijk')call err(0,0,0,1,5,3)
      if (se4(2)/='ij')call err(0,0,0,1,5,4)
      if (se5(2)/=6)call err(0,0,0,1,5,1)
      if (se6(2)/=(7,7))call err(0,0,0,1,5,2)
      if (se7(2)/='lmno')call err(0,0,0,1,5,3)
      if (se8(2)/='mn')call err(0,0,0,1,5,4)
      if (se1(1)/=2)call err(0,0,0,0,5,1)
      if (se2(1)/=(3,3))call err(0,0,0,0,5,2)
      if (se3(1)/='7890')call err(0,0,0,0,5,3)
      if (se4(1)/='89')call err(0,0,0,0,5,4)
      if (se5(1)/=3)call err(0,0,0,0,5,1)
      if (se6(1)/=(4,4))call err(0,0,0,0,5,2)
      if (se7(1)/='abcd')call err(0,0,0,0,5,3)
      if (se8(1)/='bc')call err(0,0,0,0,5,4)
      end
      subroutine err(i1,i2,i3,i4,i5,i6)
      print *,'fail'
      print *,'error code :',i1,i2,i3,i4,i5,i6
      end
