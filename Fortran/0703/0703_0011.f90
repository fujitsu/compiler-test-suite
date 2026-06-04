!
!
 call s1
 print *,'pass'
 end
 module m1
  integer,parameter::z1=1,z2=2,z4=4,z8=8,z16=16
  logical,parameter::t=.true.,f=.false.
  logical(2),parameter::t2=.true.,f2=.false.
  logical(8),parameter::t8=.true.,f8=.false.
  logical::yt=.true.,yf=.false.
  logical(2)::yt2=.true.,yf2=.false.
  logical(8)::yt8=.true.,yf8=.false.
  intrinsic ceiling
 end
 subroutine s1
  use m1
  logical(2),dimension(2,3),parameter::a1=reshape((/t2,f2,t2,f2,t2,f2/),(/2,3/))
  logical(8),dimension(2,3),parameter::a2=reshape((/t8,f8,t8,f8,t8,f8/),(/2,3/))
  logical   ,dimension(2,3),parameter::a3=reshape((/t ,f ,t ,f ,t ,f /),(/2,3/))
  integer,parameter::b1=kind(reshape((/t2,f2,t2,f2,t2,f2/),(/2,3/)))
  integer,parameter::b2=kind(reshape((/t8,f8,t8,f8,t8,f8/),(/2,3/)))
  integer,parameter::b3=kind(reshape((/t ,f ,t ,f ,t ,f /),(/2,3/)))
  i=1;a=1.
  call x01(a1)
  call x02(a2)
  call x03(a3)
  call x04(b1)
  call x05(b2)
  call x06(b3)
  call x01(reshape((/t2,f2,t2,f2,t2,f2/),(/2,3/)))
  call x02(reshape((/t8,f8,t8,f8,t8,f8/),(/2,3/)))
  call x03(reshape((/t ,f ,t ,f ,t ,f /),(/2,3/)))
  call x01(reshape((/yt2,yf2,yt2,yf2,yt2,yf2/),(/2,3/)))
  call x02(reshape((/yt8,yf8,yt8,yf8,yt8,yf8/),(/2,3/)))
  call x03(reshape((/yt ,yf ,yt ,yf ,yt ,yf /),(/2,3/)))
  call x04(kind(reshape((/t2,f2,t2,f2,t2,f2/),(/2,3/))))
  call x05(kind(reshape((/t8,f8,t8,f8,t8,f8/),(/2,3/))))
  call x06(kind(reshape((/t ,f ,t ,f ,t ,f /),(/2,3/))))
  call x04(kind(reshape((/yt2,yf2,yt2,yf2,yt2,yf2/),(/2,3/))))
  call x05(kind(reshape((/yt8,yf8,yt8,yf8,yt8,yf8/),(/2,3/))))
  call x06(kind(reshape((/yt ,yf ,yt ,yf ,yt ,yf /),(/2,3/))))
   contains
     subroutine x01(i)
      logical(2)::i(:,:)
      if (any(shape(i)/=(/2,3/)))print *,'fail'
      if (any((/i/).neqv.(/t,f,t,f,t,f/)))print *,'fail'
     end subroutine
     subroutine x02(i)
      logical(8)::i(:,:)
      if (any(shape(i)/=(/2,3/)))print *,'fail'
      if (any((/i/).neqv.(/t,f,t,f,t,f/)))print *,'fail'
     end subroutine
     subroutine x03(i)
      logical::i(:,:)
      if (any(shape(i)/=(/2,3/)))print *,'fail'
      if (any((/i/).neqv.(/t,f,t,f,t,f/)))print *,'fail'
     end subroutine
     subroutine x04(i)
     if (i/=kind(.true._2))print *,'fail'
     end subroutine
     subroutine x05(i)
     if (i/=kind(.true._8))print *,'fail'
     end subroutine
     subroutine x06(i)
     if (i/=kind(.true.))print *,'fail'
     end subroutine
end
