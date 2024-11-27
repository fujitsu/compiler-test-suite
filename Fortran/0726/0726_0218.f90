 call s1
 print *,'pass'
 end
 module m1
   type x
     integer(8) ::i11=1
     real   (8) ::i12=2
     complex(8) ::i13=(3,4)
     character(2):: i14='1234'
     integer(8) ,dimension(2)::i21=11
     real   (8) ,dimension(2)::i22=21
     complex(8) ,dimension(2)::i23=(31,41)
     character(2),dimension(2):: i24='abcd'
   end type
   contains
    subroutine ss1(z)
    entry      ss2(z)
    entry      ss3(z)
    type(x),intent(out)::z
    if (1==2)z%i11=0
    if (z%i11/=1)write(6,*) "NG"
    if (z%i12/=2)write(6,*) "NG"
    if (z%i13/=(3,4))write(6,*) "NG"
    if (z%i14/='12')write(6,*) "NG"
    if (any(z%i21/=11))write(6,*) "NG"
    if (any(z%i22/=21))write(6,*) "NG"
    if (any(z%i23/=(31,41)))write(6,*) "NG"
    if (any(z%i24/='ab'))write(6,*) "NG"
    end subroutine 
 end
 subroutine s1
  use m1
   type (x)::y=x(-1_8,-1._8,(-1._8,-1._8),'xx',-1,-1,-1,'xx')
   call ss1(y)
    if (y%i11/=1)write(6,*) "NG"
    if (y%i12/=2)write(6,*) "NG"
    if (y%i13/=(3,4))write(6,*) "NG"
    if (y%i14/='12')write(6,*) "NG"
    if (any(y%i21/=11))write(6,*) "NG"
    if (any(y%i22/=21))write(6,*) "NG"
    if (any(y%i23/=(31,41)))write(6,*) "NG"
    if (any(y%i24/='ab'))write(6,*) "NG"
    y=x(-1_8,-1._8,(-1._8,-1._8),'xx',-1,-1,-1,'xx')
   call ss2(y)
    if (y%i11/=1)write(6,*) "NG"
    if (y%i12/=2)write(6,*) "NG"
    if (y%i13/=(3,4))write(6,*) "NG"
    if (y%i14/='12')write(6,*) "NG"
    if (any(y%i21/=11))write(6,*) "NG"
    if (any(y%i22/=21))write(6,*) "NG"
    if (any(y%i23/=(31,41)))write(6,*) "NG"
    if (any(y%i24/='ab'))write(6,*) "NG"
    y=x(-1_8,-1._8,(-1._8,-1._8),'xx',-1,-1,-1,'xx')
   call ss3(y)
    if (y%i11/=1)write(6,*) "NG"
    if (y%i12/=2)write(6,*) "NG"
    if (y%i13/=(3,4))write(6,*) "NG"
    if (y%i14/='12')write(6,*) "NG"
    if (any(y%i21/=11))write(6,*) "NG"
    if (any(y%i22/=21))write(6,*) "NG"
    if (any(y%i23/=(31,41)))write(6,*) "NG"
    if (any(y%i24/='ab'))write(6,*) "NG"
end
