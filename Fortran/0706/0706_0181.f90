      call s1
      print *,'pass'
      end
module m1
 contains
  function cf(c)
  character (*)::c
  character(len(c)-3)::cf
  cf=c(len(cf):len(c)-2)
  end function
  function df(c)
  character (*)::c(:)
  character(len(c)-3)::df(size(c))
  df=c(:)(len(df):len(c)-2)
  end function
  subroutine ss1( &
   x1 , x2 , x3 , x4 , x5 , x6 , x7 , x8 , x9 , x10 , &
   x11 , x12 , x13 , x14 , x15 , x16 , x17 , x18 , x19 , x20 , &
   x21 , x22 , x23 , x24 , x25 , x26 , x27 , x28 , x29 , x30 , &
   x31 , x32 , x33 , x34 , x35)
   implicit character(*) (x)
   dimension x12(:),x13(:)
   dimension x14(:),x15(:),x16(:),x17(:),x18(:),x19(:),x20(:),x21(:)
 dimension x22(:),x23(:),x24(:),x25(:),x26(:)
 dimension x27(:),x28(:),x29(:),x30(:),x31(:),x32(:),x33(:),x34(:),x35(:)
   if (len(x1)/=5)print *,'fail';if (x1/='12345')print *,'fail'
   if (len(x2)/=2)print *,'fail';if (x2/='23')print *,'fail'
   if (len(x3)/=5)print *,'fail';if (x3/='12345')print *,'fail'
   if (len(x4)/=2)print *,'fail';if (x4/='23')print *,'fail'
   if (len(x5)/=4)print *,'fail';if (x5/='2323')print *,'fail'
   if (len(x6)/=4)print *,'fail';if (x6/='2323')print *,'fail'
   if (len(x7)/=2)print *,'fail';if (x7/='23')print *,'fail'
   if (len(x8)/=2)print *,'fail';if (x8/='23')print *,'fail'
   if (len(x9)/=4)print *,'fail';if (x9/='2323')print *,'fail'
   if (len(x10)/=2)print *,'fail';if (x10/='23')print *,'fail'
   if (len(x11)/=6)print *,'fail';if (x11/='232323')print *,'fail'
   if (size(x12)/=2)print *,'fail';if (len(x12)/=2)print *,'fail'; if (any(x12/='23'))print *,'fail'
   if (size(x13)/=2)print *,'fail';if (len(x13)/=4)print *,'fail'; if (any(x13/='2323'))print *,'fail'
   if (size(x14)/=2)print *,'fail';if (len(x14)/=2)print *,'fail'; if (any(x14/='23'))print *,'fail'
   if (size(x15)/=2)print *,'fail';if (len(x15)/=4)print *,'fail'; if (any(x15/='2323'))print *,'fail'
   if (size(x16)/=2)print *,'fail';if (len(x16)/=2)print *,'fail'; if (any(x16/='23'))print *,'fail'
   if (size(x17)/=2)print *,'fail';if (len(x17)/=4)print *,'fail'; if (any(x17/='2323'))print *,'fail'
   if (size(x18)/=2)print *,'fail';if (len(x18)/=5)print *,'fail'; if (any(x18/=(/'abcde','fghij'/)))print *,'fail'
   if (size(x19)/=2)print *,'fail';if (len(x19)/=5)print *,'fail'; if (any(x19/=(/'fghij','abcde'/)))print *,'fail'
   if (size(x20)/=2)print *,'fail';if (len(x20)/=2)print *,'fail'; if (any(x20/=(/'gh','bc'/)))print *,'fail'
   if (size(x21)/=2)print *,'fail';if (len(x21)/=2)print *,'fail'; if (any(x21/=(/'gh','bc'/)))print *,'fail'
   if (size(x22)/=2)print *,'fail';if (len(x22)/=10)print *,'fail'; if (any(x22/=(/repeat('abcde',2),repeat('fghij',2)/)))print *,'fail'
   if (size(x23)/=2)print *,'fail';if (len(x23)/=10)print *,'fail'; if (any(x23/=(/repeat('fghij',2),repeat('abcde',2)/)))print *,'fail'
   if (size(x24)/=2)print *,'fail';if (len(x24)/=4)print *,'fail'; if (any(x24/=(/repeat('gh',2),repeat('bc',2)/)))print *,'fail'
   if (size(x25)/=2)print *,'fail';if (len(x25)/=4)print *,'fail'; if (any(x25/=(/repeat('gh',2),repeat('bc',2)/)))print *,'fail'
   if (size(x26)/=4)print *,'fail';if (len(x26)/=5)print *,'fail'; if (any(x26/=(/('abcde','fghij',i=1,2)/)))print *,'fail'
   if (size(x27)/=4)print *,'fail';if (len(x27)/=5)print *,'fail'; if (any(x27/=(/('fghij','abcde',i=1,2)/)))print *,'fail'
   if (size(x28)/=4)print *,'fail';if (len(x28)/=2)print *,'fail'; if (any(x28/=(/('gh','bc',i=1,2)/)))print *,'fail'
   if (size(x29)/=4)print *,'fail';if (len(x29)/=2)print *,'fail'; if (any(x29/=(/('gh','bc',i=1,2)/)))print *,'fail'
   if (size(x30)/=4)print *,'fail';if (len(x30)/=10)print *,'fail'; if (any(x30/=(/(repeat('abcde',2),repeat('fghij',2),i=1,2)/)))print *,'fail'
   if (size(x31)/=4)print *,'fail';if (len(x31)/=10)print *,'fail'; if (any(x31/=(/(repeat('fghij',2),repeat('abcde',2),i=1,2)/)))print *,'fail'
   if (size(x32)/=4)print *,'fail';if (len(x32)/=4)print *,'fail'; if (any(x32/=(/(repeat('gh',2),repeat('bc',2),i=1,2)/)))print *,'fail'
   if (size(x33)/=4)print *,'fail';if (len(x33)/=4)print *,'fail'; if (any(x33/=(/(repeat('gh',2),repeat('bc',2),i=1,2)/)))print *,'fail'
   if (size(x34)/=2)print *,'fail';if (len(x34)/=2)print *,'fail'; if (any(x34/=(/'23','23'/)))print *,'fail'
   if (size(x35)/=2)print *,'fail';if (len(x35)/=6)print *,'fail'; if (any(x35/=(/'232323','232323'/)))print *,'fail'
  end subroutine
end 
 subroutine s1
 use m1
 integer,dimension(2) ::v=(/2,1/)
 integer ::i2=2,i3=3
 character(5),parameter::a1='12345'
 character(5),parameter,dimension(2)::a2=(/'abcde','fghij'/)
 call ss1( &
  x1='12345', &
  x2='12345'(2:3), &
  x3=a1, &
  x4=a1(2:3), &
  x5='12345'(2:3)//'12345'(2:3),&
  x6=a1(2:3)//a1(2:3), &
  x7='12345'(i2:i3), &
  x8=a1(i2:i3), &
  x9='12345'(i2:i3)//'12345'(i2:i3), &
  x10=cf('12345') , &
  x11=cf('12345')//cf('12345')//cf('12345'), &
  x12=(/'12345'(2:3),a1(2:3)/), &
  x13=(/'12345'(2:3)//'12345'(2:3),  a1(2:3)//a1(2:3)/), &
  x14=(/'12345'(i2:i3),a1(i2:i3)/), &
  x15=(/'12345'(i2:i3)//'12345'(i2:i3), a1(i2:i3)//a1(i2:i3)/) , &
  x16=(/ cf('12345') ,cf('12345') /) , &
  x17=(/ cf('12345')//cf('12345'), cf('12345')//cf('12345') /), &
  x18=a2 ,  &
  x19=a2(v) , &
  x20=a2(v)(2:3) , &
  x21=a2(v)(i2:i3) , &
  x22=a2//a2 , &
  x23=a2(v)//a2(v) , &
  x24=a2(v)(2:3)//a2(v)(2:3) , &
  x25=a2(v)(i2:i3)//a2(v)(i2:i3) , &
  x26=(/a2,a2/) ,&
  x27=(/a2(v),a2(v)/) , &
  x28=(/a2(v)(2:3),a2(v)(2:3)/) , &
  x29=(/a2(v)(i2:i3) , a2(v)(i2:i3) /) , &
  x30=(/a2//a2 ,a2//a2/), &
  x31=(/a2(v)//a2(v),a2(v)//a2(v)/) , &
  x32=(/ a2(v)(2:3)//a2(v)(2:3) , a2(v)(2:3)//a2(v)(2:3) /) , &
  x33=(/ a2(v)(i2:i3)//a2(v)(i2:i3) , a2(v)(i2:i3)//a2(v)(i2:i3) /) , &
  x34=df((/'12345','12345'/)) , &
  x35=df((/'12345','12345'/))//df((/'12345','12345'/))//df((/'12345','12345'/)))
 end
