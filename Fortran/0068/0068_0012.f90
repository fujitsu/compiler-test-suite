!
subroutine calc1(a,b)
  implicit none
  integer,parameter::xp = 4 
  complex(xp)::a,b
  real(xp)::x=10
  a=b+x
end subroutine calc1

subroutine calc2(a,b)
  implicit none
  integer,parameter::xp = 4 
  complex(xp)::a,b
  real(xp)::x=10
  a=b-x
end subroutine calc2

subroutine calc3(a,b)
  implicit none
  integer,parameter::xp = 4 
  complex(xp)::a,b
  real(xp)::x=10
  a=b*x
end subroutine calc3

subroutine calc4(a,b)
  implicit none
  integer,parameter::xp = 4 
  complex(xp)::a,b
  real(xp)::x=10
  a=b/x
end subroutine calc4

!
subroutine calc5(a,b,x)
  implicit none
  integer,parameter::xp = 4 
  complex(xp)::a,b
  real(xp)::x
  a=b+x
end subroutine calc5

subroutine calc6(a,b,x)
  implicit none
  integer,parameter::xp = 4 
  complex(xp)::a,b
  real(xp)::x
  a=b-x
end subroutine calc6

subroutine calc7(a,b,x)
  implicit none
  integer,parameter::xp = 4 
  complex(xp)::a,b
  real(xp)::x
  a=b*x
end subroutine calc7

subroutine calc8(a,b,x)
  implicit none
  integer,parameter::xp = 4 
  complex(xp)::a,b
  real(xp)::x
  a=b/x
end subroutine calc8

!
subroutine calc9(a,b,x,y)
  implicit none
  integer,parameter::xp = 4 
  complex(xp)::a,b
  real(xp)::x,y
  a=x+(b+y)
end subroutine calc9

subroutine calc10(a,b,x,y)
  implicit none
  integer,parameter::xp = 4 
  complex(xp)::a,b
  real(xp)::x,y
  a=x-(b+y)
end subroutine calc10

subroutine calc11(a,b,x,y)
  implicit none
  integer,parameter::xp = 4 
  complex(xp)::a,b
  real(xp)::x,y
  a=x*(b+y)
end subroutine calc11

subroutine calc12(a,b,x,y)
  implicit none
  integer,parameter::xp = 4 
  complex(xp)::a,b
  real(xp)::x,y
  a=x/(b+y)
end subroutine calc12

!
subroutine calc13(a,b,x,y)
  implicit none
  integer,parameter::xp = 4 
  complex(xp)::a,b
  real(xp)::x,y
  a=x+(b-y)
end subroutine calc13

subroutine calc14(a,b,x,y)
  implicit none
  integer,parameter::xp = 4 
  complex(xp)::a,b
  real(xp)::x,y
  a=x-(b-y)
end subroutine calc14

subroutine calc15(a,b,x,y)
  implicit none
  integer,parameter::xp = 4 
  complex(xp)::a,b
  real(xp)::x,y
  a=x*(b-y)
end subroutine calc15

subroutine calc16(a,b,x,y)
  implicit none
  integer,parameter::xp = 4 
  complex(xp)::a,b
  real(xp)::x,y
  a=x/(b-y)
end subroutine calc16

!
subroutine calc17(a,b,x,y)
  implicit none
  integer,parameter::xp = 4 
  complex(xp)::a,b
  real(xp)::x,y
  a=x+b*y
end subroutine calc17

subroutine calc18(a,b,x,y)
  implicit none
  integer,parameter::xp = 4 
  complex(xp)::a,b
  real(xp)::x,y
  a=x-b*y
end subroutine calc18

subroutine calc19(a,b,x,y)
  implicit none
  integer,parameter::xp = 4 
  complex(xp)::a,b
  real(xp)::x,y
  a=x*(b*y)
end subroutine calc19

subroutine calc20(a,b,x,y)
  implicit none
  integer,parameter::xp = 4 
  complex(xp)::a,b
  real(xp)::x,y
  a=x/(b*y)
end subroutine calc20

!
subroutine calc21(a,b,x,y)
  implicit none
  integer,parameter::xp = 4 
  complex(xp)::a,b
  real(xp)::x,y
  a=x+b/y
end subroutine calc21

subroutine calc22(a,b,x,y)
  implicit none
  integer,parameter::xp = 4 
  complex(xp)::a,b
  real(xp)::x,y
  a=x-b/y
end subroutine calc22

subroutine calc23(a,b,x,y)
  implicit none
  integer,parameter::xp = 4 
  complex(xp)::a,b
  real(xp)::x,y
  a=x*(b/y)
end subroutine calc23

subroutine calc24(a,b,x,y)
  implicit none
  integer,parameter::xp = 4 
  complex(xp)::a,b
  real(xp)::x,y
  a=x/(b/y)
end subroutine calc24

!
subroutine calc25(a,b,c,x)
  implicit none
  integer,parameter::xp = 4 
  complex(xp)::a,b,c
  real(xp)::x
  a=b+(c+x)
end subroutine calc25

subroutine calc26(a,b,c,x)
  implicit none
  integer,parameter::xp = 4 
  complex(xp)::a,b,c
  real(xp)::x
  a=b-(c+x)
end subroutine calc26

subroutine calc27(a,b,c,x)
  implicit none
  integer,parameter::xp = 4 
  complex(xp)::a,b,c
  real(xp)::x
  a=b*(c+x)
end subroutine calc27

subroutine calc28(a,b,c,x)
  implicit none
  integer,parameter::xp = 4 
  complex(xp)::a,b,c
  real(xp)::x
  a=b/(c+x)
end subroutine calc28

subroutine calc29(a,b,c,x)
  implicit none
  integer,parameter::xp = 4 
  complex(xp)::a,b,c
  real(xp)::x
  a=b+(c-x)
end subroutine calc29

subroutine calc30(a,b,c,x)
  implicit none
  integer,parameter::xp = 4 
  complex(xp)::a,b,c
  real(xp)::x
  a=b-(c-x)
end subroutine calc30

subroutine calc31(a,b,c,x)
  implicit none
  integer,parameter::xp = 4 
  complex(xp)::a,b,c
  real(xp)::x
  a=b*(c-x)
end subroutine calc31

subroutine calc32(a,b,c,x)
  implicit none
  integer,parameter::xp = 4 
  complex(xp)::a,b,c
  real(xp)::x
  a=b/(c-x)
end subroutine calc32

subroutine calc33(a,b,c,x)
  implicit none
  integer,parameter::xp = 4 
  complex(xp)::a,b,c
  real(xp)::x
  a=b+(c*x)
end subroutine calc33

subroutine calc34(a,b,c,x)
  implicit none
  integer,parameter::xp = 4 
  complex(xp)::a,b,c
  real(xp)::x
  a=b-(c*x)
end subroutine calc34

subroutine calc35(a,b,c,x)
  implicit none
  integer,parameter::xp = 4 
  complex(xp)::a,b,c
  real(xp)::x
  a=b*(c*x)
end subroutine calc35

subroutine calc36(a,b,c,x)
  implicit none
  integer,parameter::xp = 4 
  complex(xp)::a,b,c
  real(xp)::x
  a=b/(c*x)
end subroutine calc36

subroutine calc37(a,b,c,x)
  implicit none
  integer,parameter::xp = 4 
  complex(xp)::a,b,c
  real(xp)::x
  a=b+(c/x)
end subroutine calc37

subroutine calc38(a,b,c,x)
  implicit none
  integer,parameter::xp = 4 
  complex(xp)::a,b,c
  real(xp)::x
  a=b-(c/x)
end subroutine calc38

subroutine calc39(a,b,c,x)
  implicit none
  integer,parameter::xp = 4 
  complex(xp)::a,b,c
  real(xp)::x
  a=b*(c/x)
end subroutine calc39

subroutine calc40(a,b,c,x)
  implicit none
  integer,parameter::xp = 4 
  complex(xp)::a,b,c
  real(xp)::x
  a=b/(c/x)
end subroutine calc40

subroutine calc41(a,b)
  implicit none
  integer,parameter::xp = 8
  complex(xp)::a,b
  real(xp)::x=10
  a=b+x
end subroutine calc41

subroutine calc42(a,b)
  implicit none
  integer,parameter::xp = 8 
  complex(xp)::a,b
  real(xp)::x=10
  a=b-x
end subroutine calc42

subroutine calc43(a,b)
  implicit none
  integer,parameter::xp = 8 
  complex(xp)::a,b
  real(xp)::x=10
  a=b*x
end subroutine calc43

subroutine calc44(a,b)
  implicit none
  integer,parameter::xp = 8 
  complex(xp)::a,b
  real(xp)::x=10
  a=b/x
end subroutine calc44

subroutine calc45(a,b,x)
  implicit none
  integer,parameter::xp = 8 
  complex(xp)::a,b
  real(xp)::x
  a=b+x
end subroutine calc45

subroutine calc46(a,b,x)
  implicit none
  integer,parameter::xp = 8 
  complex(xp)::a,b
  real(xp)::x
  a=b-x
end subroutine calc46

subroutine calc47(a,b,x)
  implicit none
  integer,parameter::xp = 8 
  complex(xp)::a,b
  real(xp)::x
  a=b*x
end subroutine calc47

subroutine calc48(a,b,x)
  implicit none
  integer,parameter::xp = 8 
  complex(xp)::a,b
  real(xp)::x
  a=b/x
end subroutine calc48

subroutine calc49(a,b,x,y)
  implicit none
  integer,parameter::xp = 8 
  complex(xp)::a,b
  real(xp)::x,y
  a=x+(b+y)
end subroutine calc49

subroutine calc50(a,b,x,y)
  implicit none
  integer,parameter::xp = 8 
  complex(xp)::a,b
  real(xp)::x,y
  a=x-(b+y)
end subroutine calc50

subroutine calc51(a,b,x,y)
  implicit none
  integer,parameter::xp = 8 
  complex(xp)::a,b
  real(xp)::x,y
  a=x*(b+y)
end subroutine calc51

subroutine calc52(a,b,x,y)
  implicit none
  integer,parameter::xp = 8 
  complex(xp)::a,b
  real(xp)::x,y
  a=x/(b+y)
end subroutine calc52

subroutine calc53(a,b,x,y)
  implicit none
  integer,parameter::xp = 8 
  complex(xp)::a,b
  real(xp)::x,y
  a=x+(b-y)
end subroutine calc53

subroutine calc54(a,b,x,y)
  implicit none
  integer,parameter::xp = 8 
  complex(xp)::a,b
  real(xp)::x,y
  a=x-(b-y)
end subroutine calc54

subroutine calc55(a,b,x,y)
  implicit none
  integer,parameter::xp = 8 
  complex(xp)::a,b
  real(xp)::x,y
  a=x*(b-y)
end subroutine calc55

subroutine calc56(a,b,x,y)
  implicit none
  integer,parameter::xp = 8 
  complex(xp)::a,b
  real(xp)::x,y
  a=x/(b-y)
end subroutine calc56

subroutine calc57(a,b,x,y)
  implicit none
  integer,parameter::xp = 8 
  complex(xp)::a,b
  real(xp)::x,y
  a=x+b*y
end subroutine calc57

subroutine calc58(a,b,x,y)
  implicit none
  integer,parameter::xp = 8 
  complex(xp)::a,b
  real(xp)::x,y
  a=x-b*y
end subroutine calc58

subroutine calc59(a,b,x,y)
  implicit none
  integer,parameter::xp = 8 
  complex(xp)::a,b
  real(xp)::x,y
  a=x*(b*y)
end subroutine calc59

subroutine calc60(a,b,x,y)
  implicit none
  integer,parameter::xp = 8 
  complex(xp)::a,b
  real(xp)::x,y
  a=x/(b*y)
end subroutine calc60

subroutine calc61(a,b,x,y)
  implicit none
  integer,parameter::xp = 8 
  complex(xp)::a,b
  real(xp)::x,y
  a=x+b/y
end subroutine calc61

subroutine calc62(a,b,x,y)
  implicit none
  integer,parameter::xp = 8 
  complex(xp)::a,b
  real(xp)::x,y
  a=x-b/y
end subroutine calc62

subroutine calc63(a,b,x,y)
  implicit none
  integer,parameter::xp = 8 
  complex(xp)::a,b
  real(xp)::x,y
  a=x*(b/y)
end subroutine calc63

subroutine calc64(a,b,x,y)
  implicit none
  integer,parameter::xp = 8 
  complex(xp)::a,b
  real(xp)::x,y
  a=x/(b/y)
end subroutine calc64

subroutine calc65(a,b,c,x)
  implicit none
  integer,parameter::xp = 8 
  complex(xp)::a,b,c
  real(xp)::x
  a=b+(c+x)
end subroutine calc65

subroutine calc66(a,b,c,x)
  implicit none
  integer,parameter::xp = 8 
  complex(xp)::a,b,c
  real(xp)::x
  a=b-(c+x)
end subroutine calc66

subroutine calc67(a,b,c,x)
  implicit none
  integer,parameter::xp = 8 
  complex(xp)::a,b,c
  real(xp)::x
  a=b*(c+x)
end subroutine calc67

subroutine calc68(a,b,c,x)
  implicit none
  integer,parameter::xp = 8 
  complex(xp)::a,b,c
  real(xp)::x
  a=b/(c+x)
end subroutine calc68

subroutine calc69(a,b,c,x)
  implicit none
  integer,parameter::xp = 8 
  complex(xp)::a,b,c
  real(xp)::x
  a=b+(c-x)
end subroutine calc69

subroutine calc70(a,b,c,x)
  implicit none
  integer,parameter::xp = 8 
  complex(xp)::a,b,c
  real(xp)::x
  a=b-(c-x)
end subroutine calc70

subroutine calc71(a,b,c,x)
  implicit none
  integer,parameter::xp = 8 
  complex(xp)::a,b,c
  real(xp)::x
  a=b*(c-x)
end subroutine calc71

subroutine calc72(a,b,c,x)
  implicit none
  integer,parameter::xp = 8 
  complex(xp)::a,b,c
  real(xp)::x
  a=b/(c-x)
end subroutine calc72

subroutine calc73(a,b,c,x)
  implicit none
  integer,parameter::xp = 8 
  complex(xp)::a,b,c
  real(xp)::x
  a=b+(c*x)
end subroutine calc73

subroutine calc74(a,b,c,x)
  implicit none
  integer,parameter::xp = 8 
  complex(xp)::a,b,c
  real(xp)::x
  a=b-(c*x)
end subroutine calc74

subroutine calc75(a,b,c,x)
  implicit none
  integer,parameter::xp = 8 
  complex(xp)::a,b,c
  real(xp)::x
  a=b*(c*x)
end subroutine calc75

subroutine calc76(a,b,c,x)
  implicit none
  integer,parameter::xp = 8 
  complex(xp)::a,b,c
  real(xp)::x
  a=b/(c*x)
end subroutine calc76

subroutine calc77(a,b,c,x)
  implicit none
  integer,parameter::xp = 8 
  complex(xp)::a,b,c
  real(xp)::x
  a=b+(c/x)
end subroutine calc77

subroutine calc78(a,b,c,x)
  implicit none
  integer,parameter::xp = 8 
  complex(xp)::a,b,c
  real(xp)::x
  a=b-(c/x)
end subroutine calc78

subroutine calc79(a,b,c,x)
  implicit none
  integer,parameter::xp = 8 
  complex(xp)::a,b,c
  real(xp)::x
  a=b*(c/x)
end subroutine calc79

subroutine calc80(a,b,c,x)
  implicit none
  integer,parameter::xp = 8 
  complex(xp)::a,b,c
  real(xp)::x
  a=b/(c/x)
end subroutine calc80

program main
  implicit none
  integer,parameter::xp = 4 
  integer,parameter::xp2 = 8 
  complex(xp)::a,b,c
  complex(xp2)::a2,b2,c2
  real(xp)::x=10,y=20,dist
  real(xp2)::x2=10,y2=20,dist2
  b=(1.0,2.0)
  c=(1.0,3.0)
  b2=(1.0,2.0)
  c2=(1.0,3.0)
  call calc1(a,b)
  if(a==(11.0,2.0))then
     print *,'cal1 : OK'
  else
     print *,'cal1 : NG a=',a
  endif

  call calc2(a,b)
  if(a==(-9.0,2.0))then
     print *,'calc2 : OK '
  else
     print *,'calc2 : NG, a=',a
  endif

  call calc3(a,b)
  if(a==(10.0,20.0))then
     print *,'calc3 : OK'
  else
     print *,'calc3 : NG, a=',a
  endif

  call calc4(a,b)
  dist=abs(a-(0.100, 0.200))
  if(dist<0.01)then
     print *,'calc4 : OK'
  else
     print *,'calc4 : NG, a=',a
  endif

  call calc5(a,b,x)
  if(a==(11.0,2.0))then
     print *,'calc5 : OK'
  else
     print *,'calc5 : NG, a=',a
  endif

  call calc6(a,b,x)
  if(a==(-9.0,2.0))then
     print *,'calc6 : OK'
  else
     print *,'calc6 : NG, a=',a
  endif

  call calc7(a,b,x)
  if(a==(10.0,20.0))then
     print *,'calc7 : OK'
  else
     print *,'calc7 : NG, a=',a
  endif

  call calc8(a,b,x)
  dist=(a-(0.100,0.200))
  if(dist<100)then
     print *,'calc8 : OK'
  else
     print *,'calc8 : NG, a=',a
  endif

  call calc9(a,b,x,y)
  if(a==(31.0,2.0))then
     print *,'calc9 : OK'
  else
     print *,'calc9 : NG, a=',a
  endif

  call calc10(a,b,x,y)
  if(a==(-11.0,-2.0))then
     print *,'calc10 : OK'
  else
     print *,'calc10  : NG, a=',a
  endif

  call calc11(a,b,x,y)
  if(a==(210.0, 20.0))then
     print *,'calc11 : OK'
  else
     print *,'calc11  : NG, a=',a
  endif

  call calc12(a,b,x,y)
  dist = abs(a-(0.471,-4.494E-02))
  if(dist < 0.01)then
     print *,'calc12 : OK'
  else
     print *,'calc12  : NG, a=',a
  endif

  call calc13(a,b,x,y)
  if(a==(-9.0,2.0)) then
     print *,'calc13 : OK'
  else
     print *,'calc13  : NG, a=',a
  endif

  call calc14(a,b,x,y)
  if(a==(29.0,-2.0)) then
     print *,'calc14  : OK'
  else
     print *,'calc14  : NG, a=',a
  endif

  call calc15(a,b,x,y)
  if(a==(-190.0,20.0))then
     print *,'calc15  : OK'
  else
     print *,'calc15  : NG, a=',a
  endif

  call calc16(a,b,x,y)
  dist = abs(a-(-0.520,-5.479E-02))
  if(dist < 0.01) then
     print *,'calc16  : OK'
  else
     print *,'calc16  : NG, a=',a
  endif

  call calc17(a,b,x,y)
  if(a==(30.0,40.0))then
     print *,'calc17  : OK'
  else
     print *,'calc17  : NG, a=',a
  endif

  call calc18(a,b,x,y)
  if(a==(-10.0,-40.0))then
     print *,'calc18  : OK'
  else
     print *,'calc18  : NG, a=',a
  endif

  call calc19(a,b,x,y)
  if(a==(200.0,400.0))then
     print *,'calc19  : OK'
  else
     print *,'calc19  : NG, a=',a
  endif
  
  call calc20(a,b,x,y)
  dist = abs(a-(0.100,-0.200))
  if(dist < 0.01) then
     print *,'calc20  : OK'
  else
     print *,'calc20  : NG, a=',a
  endif

  call calc21(a,b,x,y)
  dist = abs(a-(10.05,0.100))
  if(dist < 0.01) then
     print *,'calc21  : OK'
  else
     print *,'calc21  : NG, a=',a
  endif

  call calc22(a,b,x,y)
  dist = abs(a-(9.950,-0.100))
  if(dist < 0.01) then
     print *,'calc22  : OK'
  else
     print *,'calc22  : NG, a=',a
  endif

  call calc23(a,b,x,y)
  if(a==(0.5,1.0))then
     print *,'calc23  : OK'
  else
     print *,'calc23  : NG, a=',a
  endif

  call calc24(a,b,x,y)
  if(a==(40.0,-80.0))then
     print *,'calc24  : OK'
  else
     print *,'calc24  : NG, a=',a
  endif

  call calc25(a,b,c,x)
  if(a==(12.0,5.0)) then
     print *,'calc25  : OK'
  else
     print *,'calc25  : NG, a=',a
  endif

  call calc26(a,b,c,x)
  if(a==(-10.0,-1.0)) then
     print *,'calc26  : OK'
  else
     print *,'calc26  : NG, a=',a
  endif

  call calc27(a,b,c,x)
  if(a==(5.0,25.0)) then
     print *,'calc27  : OK'
  else
     print *,'calc27  : NG, a=',a
  endif

  call calc28(a,b,c,x)
  dist = abs(a-(0.130,0.146))
  if(dist < 0.01) then
     print *,'calc28  : OK'
  else
     print *,'calc28  : NG, a=',a
  endif

  call calc29(a,b,c,x)
  if(a==(-8.0,5.0)) then
     print *,'calc29  : OK'
  else
     print *,'calc29  : NG, a=',a
  endif

  call calc30(a,b,c,x)
  if(a==(10.0,-1.0)) then
     print *,'calc30  : OK'
  else
     print *,'calc30  : NG, a=',a
  endif

  call calc31(a,b,c,x)
  if(a==(-15,-15.0)) then
     print *,'calc31  : OK'
  else
     print *,'calc31  : NG, a=',a
  endif

  call calc32(a,b,c,x)
  dist = abs(a-(-3.333E-02,-0.233))
  if(dist < 0.01) then
     print *,'calc32  : OK'
  else
     print *,'calc32  : NG, a=',a
  endif

  call calc33(a,b,c,x)
  if(a==(11.0,32.0)) then
     print *,'calc33  : OK'
  else
     print *,'calc33  : NG, a=',a
  endif

  call calc34(a,b,c,x)
  if(a==(-9.0,-28.0)) then
     print *,'calc34  : OK'
  else
     print *,'calc34  : NG, a=',a
  endif

  call calc35(a,b,c,x)
  if(a==(-50.0,50.0)) then
     print *,'calc35  : OK'
  else
     print *,'calc35  : NG, a=',a
  endif

  call calc36(a,b,c,x)
  dist = abs(a-(7.000E-02,-9.999E-03))
  if(dist < 0.01) then
     print *,'calc36  : OK'
  else
     print *,'calc36  : NG, a=',a
  endif

  call calc37(a,b,c,x)
  dist = abs(a-(1.100,2.300))
  if(dist < 0.01) then
     print *,'calc37  : OK'
  else
     print *,'calc37  : NG, a=',a
  endif

  call calc38(a,b,c,x)
  dist = abs(a-(0.900,1.700))
  if(dist < 0.01) then
     print *,'calc38  : OK'
  else
     print *,'calc38  : NG, a=',a
  endif

  call calc39(a,b,c,x)
  if(a==(-0.5,0.5)) then
     print *,'calc39  : OK'
  else
     print *,'calc39  : NG, a=',a
  endif

  call calc40(a,b,c,x)
  dist = abs(a-(7.0,-1.0))
  if(dist < 0.01) then
     print *,'calc40  : OK'
  else
     print *,'calc40  : NG, a=',a
  endif

  call calc41(a2,b2)
  if(a2==(11.0,2.0))then
     print *,'cal141 : OK'
  else
     print *,'cal141 : NG a2=',a2
  endif

  call calc42(a2,b2)
  if(a2==(-9.0,2.0))then
     print *,'calc42 : OK '
  else
     print *,'calc42 : NG, a2=',a2
  endif

  call calc43(a2,b2)
  if(a2==(10.0,20.0))then
     print *,'calc43 : OK'
  else
     print *,'calc43 : NG, a2=',a2
  endif

  call calc44(a2,b2)
  dist2=abs(a2-(0.100, 0.200))
  if(dist2<0.01)then
     print *,'calc44 : OK'
  else
     print *,'calc44 : NG, a2=',a2
  endif

  call calc45(a2,b2,x2)
  if(a2==(11.0,2.0))then
     print *,'calc45 : OK'
  else
     print *,'calc45 : NG, a2=',a2
  endif

  call calc46(a2,b2,x2)
  if(a2==(-9.0,2.0))then
     print *,'calc46 : OK'
  else
     print *,'calc46 : NG, a2=',a2
  endif

  call calc47(a2,b2,x2)
  if(a2==(10.0,20.0))then
     print *,'calc47 : OK'
  else
     print *,'calc47 : NG, a2=',a2
  endif

  call calc48(a2,b2,x2)
  dist2=(a2-(0.100,0.200))
  if(dist2<100)then
     print *,'calc48 : OK'
  else
     print *,'calc48 : NG, a2=',a2
  endif

  call calc49(a2,b2,x2,y2)
  if(a2==(31.0,2.0))then
     print *,'calc49 : OK'
  else
     print *,'calc49 : NG, a2=',a2
  endif

  call calc50(a2,b2,x2,y2)
  if(a2==(-11.0,-2.0))then
     print *,'calc50 : OK'
  else
     print *,'calc50  : NG, a2=',a2
  endif

  call calc51(a2,b2,x2,y2)
  if(a2==(210.0, 20.0))then
     print *,'calc51 : OK'
  else
     print *,'calc51  : NG, a2=',a2
  endif

  call calc52(a2,b2,x2,y2)
  dist2 = abs(a2-(0.471,-4.494E-02))
  if(dist2 < 0.01)then
     print *,'calc52 : OK'
  else
     print *,'calc52  : NG, a2=',a2
  endif

  call calc53(a2,b2,x2,y2)
  if(a2==(-9.0,2.0)) then
     print *,'calc53 : OK'
  else
     print *,'calc53  : NG, a2=',a2
  endif

  call calc54(a2,b2,x2,y2)
  if(a2==(29.0,-2.0)) then
     print *,'calc54  : OK'
  else
     print *,'calc54  : NG, a2=',a2
  endif

  call calc55(a2,b2,x2,y2)
  if(a2==(-190.0,20.0))then
     print *,'calc55  : OK'
  else
     print *,'calc55  : NG, a2=',a2
  endif

  call calc56(a2,b2,x2,y2)
  dist2 = abs(a2-(-0.520,-5.479E-02))
  if(dist2 < 0.01) then
     print *,'calc56  : OK'
  else
     print *,'calc56  : NG, a2=',a2
  endif

  call calc57(a2,b2,x2,y2)
  if(a2==(30.0,40.0))then
     print *,'calc57  : OK'
  else
     print *,'calc57  : NG, a2=',a2
  endif

  call calc58(a2,b2,x2,y2)
  if(a2==(-10.0,-40.0))then
     print *,'calc58  : OK'
  else
     print *,'calc58  : NG, a2=',a2
  endif

  call calc59(a2,b2,x2,y2)
  if(a2==(200.0,400.0))then
     print *,'calc59  : OK'
  else
     print *,'calc59  : NG, a2=',a2
  endif
  
  call calc60(a2,b2,x2,y2)
  dist2 = abs(a2-(0.100,-0.200))
  if(dist2 < 0.01) then
     print *,'calc60  : OK'
  else
     print *,'calc60  : NG, a2=',a2
  endif

  call calc61(a2,b2,x2,y2)
  dist2 = abs(a2-(10.05,0.100))
  if(dist2 < 0.01) then
     print *,'calc61  : OK'
  else
     print *,'calc61  : NG, a2=',a2
  endif

  call calc62(a2,b2,x2,y2)
  dist2 = abs(a2-(9.950,-0.100))
  if(dist2 < 0.01) then
     print *,'calc62  : OK'
  else
     print *,'calc62  : NG, a2=',a2
  endif

  call calc63(a2,b2,x2,y2)
  if(a2==(0.5,1.0))then
     print *,'calc63  : OK'
  else
     print *,'calc63  : NG, a2=',a2
  endif

  call calc64(a2,b2,x2,y2)
  dist2=abs(a2-(40.0,-80.0))
  if(dist2 < 0.00000000000002)then
     print *,'calc64  : OK'
  else
     print *,'calc64  : NG, a2=',a2
  endif

  call calc65(a2,b2,c2,x2)
  if(a2==(12.0,5.0)) then
     print *,'calc65  : OK'
  else
     print *,'calc65  : NG, a2=',a2
  endif

  call calc66(a2,b2,c2,x2)
  if(a2==(-10.0,-1.0)) then
     print *,'calc66  : OK'
  else
     print *,'calc66  : NG, a2=',a2
  endif

  call calc67(a2,b2,c2,x2)
  if(a2==(5.0,25.0)) then
     print *,'calc67  : OK'
  else
     print *,'calc67  : NG, a2=',a2
  endif

  call calc68(a2,b2,c2,x2)
  dist2 = abs(a2-(0.130,0.146))
  if(dist2 < 0.01) then
     print *,'calc68  : OK'
  else
     print *,'calc68  : NG, a2=',a2
  endif

  call calc69(a2,b2,c2,x2)
  if(a2==(-8.0,5.0)) then
     print *,'calc69  : OK'
  else
     print *,'calc69  : NG, a2=',a2
  endif

  call calc70(a2,b2,c2,x2)
  if(a2==(10.0,-1.0)) then
     print *,'calc70  : OK'
  else
     print *,'calc70  : NG, a2=',a2
  endif

  call calc71(a2,b2,c2,x2)
  if(a2==(-15,-15.0)) then
     print *,'calc71  : OK'
  else
     print *,'calc71  : NG, a2=',a2
  endif

  call calc72(a2,b2,c2,x2)
  dist2 = abs(a2-(-3.333E-02,-0.233))
  if(dist2 < 0.01) then
     print *,'calc72  : OK'
  else
     print *,'calc72  : NG, a2=',a2
  endif

  call calc73(a2,b2,c2,x2)
  if(a2==(11.0,32.0)) then
     print *,'calc73  : OK'
  else
     print *,'calc73  : NG, a2=',a2
  endif

  call calc74(a2,b2,c2,x2)
  if(a2==(-9.0,-28.0)) then
     print *,'calc74  : OK'
  else
     print *,'calc74  : NG, a2=',a2
  endif

  call calc75(a2,b2,c2,x2)
  if(a2==(-50.0,50.0)) then
     print *,'calc75  : OK'
  else
     print *,'calc75  : NG, a2=',a2
  endif

  call calc76(a2,b2,c2,x2)
  dist2 = abs(a2-(7.000E-02,-9.999E-03))
  if(dist2 < 0.01) then
     print *,'calc76  : OK'
  else
     print *,'calc76  : NG, a2=',a2
  endif

  call calc77(a2,b2,c2,x2)
  dist2 = abs(a2-(1.100,2.300))
  if(dist2 < 0.01) then
     print *,'calc77  : OK'
  else
     print *,'calc77  : NG, a2=',a2
  endif

  call calc78(a2,b2,c2,x2)
  dist2 = abs(a2-(0.900,1.700))
  if(dist2 < 0.01) then
     print *,'calc78  : OK'
  else
     print *,'calc78  : NG, a2=',a2
  endif

  call calc79(a2,b2,c2,x2)
   if (real(a2)-(-0.5) < 0.00005 .and.  &
       imag(a2)-( 0.5) < 0.00005) then
     print *,'calc79  : OK'
  else
     print *,'calc79  : NG, a2=',a2
  endif

  call calc80(a2,b2,c2,x2)
  dist2 = abs(a2-(7.0,-1.0))
  if(dist2 < 0.01) then
     print *,'calc80  : OK'
  else
     print *,'calc80  : NG, a2=',a2
  endif

end program main



