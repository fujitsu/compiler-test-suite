call test01()
call test02()
call test03()
call test04()
call test11()
call test12()
call test13()
call test14()
print *,'snfmm531 pass'
end
subroutine test01()
integer :: a(1:3,2:3,3:3)
parameter (a=1)
integer,parameter,dimension(3) :: l01=lbound(a)
integer,parameter,dimension(3) :: l02=lbound(a-1)
integer,parameter,dimension(3) :: l03=lbound(0-a)
integer,parameter,dimension(3) :: l04=lbound(a/a)
integer,parameter,dimension(3) :: l05=lbound(a*a+1)
integer,parameter,dimension(3) :: l06=lbound(-a)
integer,parameter,dimension(3) :: l07=lbound((a))
integer,parameter,dimension(3) :: l08=lbound(a(:,:,:))
integer,parameter,dimension(3) :: l09=lbound(int(a))
integer,parameter,dimension(3) :: l10=lbound(+a)

integer,parameter,dimension(3) :: l11=lbound((a))
integer,parameter,dimension(3) :: l12=lbound((a)-1)
integer,parameter,dimension(3) :: l13=lbound(0-(a))
integer,parameter,dimension(3) :: l14=lbound((a)/a)
integer,parameter,dimension(3) :: l15=lbound((a)*a+1)
integer,parameter,dimension(3) :: l16=lbound(-(a))
integer,parameter,dimension(3) :: l17=lbound(((a)))
integer,parameter,dimension(3) :: l18=lbound((a(:,:,:)))
integer,parameter,dimension(3) :: l19=lbound(int((a)))
integer,parameter,dimension(3) :: l20=lbound(+(a))

integer,parameter,dimension(3) :: l21=lbound(-a)
integer,parameter,dimension(3) :: l22=lbound(-a-1)
integer,parameter,dimension(3) :: l23=lbound(0-a)
integer,parameter,dimension(3) :: l24=lbound(-a/a)
integer,parameter,dimension(3) :: l25=lbound(-a*a+1)
integer,parameter,dimension(3) :: l26=lbound(-a)
integer,parameter,dimension(3) :: l27=lbound(-(a))
integer,parameter,dimension(3) :: l28=lbound(-a(:,:,:))
integer,parameter,dimension(3) :: l29=lbound(-int(a))
integer,parameter,dimension(3) :: l30=lbound(-(+a))

integer,parameter,dimension(3) :: l31=lbound(+a)
integer,parameter,dimension(3) :: l32=lbound(+a-1)
integer,parameter,dimension(3) :: l33=lbound(+0-a)
integer,parameter,dimension(3) :: l34=lbound(+a/a)
integer,parameter,dimension(3) :: l35=lbound(+a*a+1)
integer,parameter,dimension(3) :: l36=lbound(+(-a))
integer,parameter,dimension(3) :: l37=lbound(+(a))
integer,parameter,dimension(3) :: l38=lbound(+a(:,:,:))
integer,parameter,dimension(3) :: l39=lbound(+int(a))
integer,parameter,dimension(3) :: l40=lbound(+(+a))
integer,dimension(3) :: l
l=l01; l=l02; l=l03; l=l04; l=l05; l=l06; l=l07; l=l08; l=l09; l=l10;
l=l11; l=l12; l=l13; l=l14; l=l15; l=l16; l=l17; l=l18; l=l19; l=l20;
l=l21; l=l22; l=l23; l=l24; l=l25; l=l26; l=l27; l=l28; l=l29; l=l30;
l=l31; l=l32; l=l33; l=l34; l=l35; l=l36; l=l37; l=l38; l=l39; l=l40;
l=l;

end
subroutine test02()
integer :: a(1:3,2:3,3:3)
parameter (a=1)
integer,parameter,dimension(3) :: l01=lbound(a-(a))
integer,parameter,dimension(3) :: l02=lbound(a-1-(a))
integer,parameter,dimension(3) :: l03=lbound(0-a-(a))
integer,parameter,dimension(3) :: l04=lbound(a/a-(a))
integer,parameter,dimension(3) :: l05=lbound(a*a+1-(a))
integer,parameter,dimension(3) :: l06=lbound(-a-(a))
integer,parameter,dimension(3) :: l07=lbound((a)-(a))
integer,parameter,dimension(3) :: l08=lbound(a(:,:,:)-(a))
integer,parameter,dimension(3) :: l09=lbound(int(a)-(a))
integer,parameter,dimension(3) :: l10=lbound(+a-(a))

integer,parameter,dimension(3) :: l11=lbound((a-(a)))
integer,parameter,dimension(3) :: l12=lbound((a-(a))-1)
integer,parameter,dimension(3) :: l13=lbound(0-(a-(a)))
integer,parameter,dimension(3) :: l14=lbound((a-(a))/a)
integer,parameter,dimension(3) :: l15=lbound((a-(a))*a+1)
integer,parameter,dimension(3) :: l16=lbound(-(a-(a)))
integer,parameter,dimension(3) :: l17=lbound(((a-(a))))
integer,parameter,dimension(3) :: l18=lbound((a(:,:,:)-(a)))
integer,parameter,dimension(3) :: l19=lbound(int((a)-(a)))
integer,parameter,dimension(3) :: l20=lbound(+(a-(a)))

integer,parameter,dimension(3) :: l21=lbound(-a-(a))
integer,parameter,dimension(3) :: l22=lbound(-a-(a)-1)
integer,parameter,dimension(3) :: l23=lbound(0-(a)-a)
integer,parameter,dimension(3) :: l24=lbound(-a/a-(a))
integer,parameter,dimension(3) :: l25=lbound(-a*a-(a)+1)
integer,parameter,dimension(3) :: l26=lbound(-a-(a))
integer,parameter,dimension(3) :: l27=lbound(-(a-(a)))
integer,parameter,dimension(3) :: l28=lbound(-a(:,:,:)-(a))
integer,parameter,dimension(3) :: l29=lbound(-int(a)-(a))
integer,parameter,dimension(3) :: l30=lbound(-(+a)-(a))

integer,parameter,dimension(3) :: l31=lbound(+a-(a))
integer,parameter,dimension(3) :: l32=lbound(+a-1-(a))
integer,parameter,dimension(3) :: l33=lbound(+0-(a)-a)
integer,parameter,dimension(3) :: l34=lbound(+a-(a)/a)
integer,parameter,dimension(3) :: l35=lbound(+a*a-(a)+1)
integer,parameter,dimension(3) :: l36=lbound(+(-a-(a)))
integer,parameter,dimension(3) :: l37=lbound(+(a)-(a))
integer,parameter,dimension(3) :: l38=lbound(+a(:,:,:)-(a))
integer,parameter,dimension(3) :: l39=lbound(+int(a)-(a))
integer,parameter,dimension(3) :: l40=lbound(+(+a)-(a))
integer,dimension(3) :: l
l=l01; l=l02; l=l03; l=l04; l=l05; l=l06; l=l07; l=l08; l=l09; l=l10;
l=l11; l=l12; l=l13; l=l14; l=l15; l=l16; l=l17; l=l18; l=l19; l=l20;
l=l21; l=l22; l=l23; l=l24; l=l25; l=l26; l=l27; l=l28; l=l29; l=l30;
l=l31; l=l32; l=l33; l=l34; l=l35; l=l36; l=l37; l=l38; l=l39; l=l40;
l=l;

end
subroutine test03()
integer :: a(1:3,2:3,3:3)
parameter (a=1)
integer,parameter,dimension(3) :: l01=lbound(a-int(a))
integer,parameter,dimension(3) :: l02=lbound(a-1-int(a))
integer,parameter,dimension(3) :: l03=lbound(0-a-int(a))
integer,parameter,dimension(3) :: l04=lbound(a/a-int(a))
integer,parameter,dimension(3) :: l05=lbound(a*a+1-int(a))
integer,parameter,dimension(3) :: l06=lbound(-a-int(a))
integer,parameter,dimension(3) :: l07=lbound((a)-int(a))
integer,parameter,dimension(3) :: l08=lbound(a(:,:,:)-int(a))
integer,parameter,dimension(3) :: l09=lbound(int(a)-int(a))
integer,parameter,dimension(3) :: l10=lbound(+a-int(a))

integer,parameter,dimension(3) :: l11=lbound((a-int(a)))
integer,parameter,dimension(3) :: l12=lbound((a-int(a))-1)
integer,parameter,dimension(3) :: l13=lbound(0-(a-int(a)))
integer,parameter,dimension(3) :: l14=lbound((a-int(a))/a)
integer,parameter,dimension(3) :: l15=lbound((a-int(a))*a+1)
integer,parameter,dimension(3) :: l16=lbound(-(a-int(a)))
integer,parameter,dimension(3) :: l17=lbound(((a-int(a))))
integer,parameter,dimension(3) :: l18=lbound((a(:,:,:)-int(a)))
integer,parameter,dimension(3) :: l19=lbound(int((a-int(a))))
integer,parameter,dimension(3) :: l20=lbound(+(a-int(a)))

integer,parameter,dimension(3) :: l21=lbound(-a-int(a))
integer,parameter,dimension(3) :: l22=lbound(-a-1-int(a))
integer,parameter,dimension(3) :: l23=lbound(0-a-int(a))
integer,parameter,dimension(3) :: l24=lbound(-a/a-int(a))
integer,parameter,dimension(3) :: l25=lbound(-a*a+1-int(a))
integer,parameter,dimension(3) :: l26=lbound(-a-int(a))
integer,parameter,dimension(3) :: l27=lbound(-(a)-int(a))
integer,parameter,dimension(3) :: l28=lbound(-a(:,:,:)-int(a))
integer,parameter,dimension(3) :: l29=lbound(-int(a)-int(a))
integer,parameter,dimension(3) :: l30=lbound(-(+a)-int(a))

integer,parameter,dimension(3) :: l31=lbound(+a-int(a))
integer,parameter,dimension(3) :: l32=lbound(+a-1-int(a))
integer,parameter,dimension(3) :: l33=lbound(+0-a-int(a))
integer,parameter,dimension(3) :: l34=lbound(+a/a-int(a))
integer,parameter,dimension(3) :: l35=lbound(+a*a+1-int(a))
integer,parameter,dimension(3) :: l36=lbound(+(-a)-int(a))
integer,parameter,dimension(3) :: l37=lbound(+(a)-int(a))
integer,parameter,dimension(3) :: l38=lbound(+a(:,:,:)-int(a))
integer,parameter,dimension(3) :: l39=lbound(+int(a)-int(a))
integer,parameter,dimension(3) :: l40=lbound(+(+a)-int(a))
integer,dimension(3) :: l
l=l01; l=l02; l=l03; l=l04; l=l05; l=l06; l=l07; l=l08; l=l09; l=l10;
l=l11; l=l12; l=l13; l=l14; l=l15; l=l16; l=l17; l=l18; l=l19; l=l20;
l=l21; l=l22; l=l23; l=l24; l=l25; l=l26; l=l27; l=l28; l=l29; l=l30;
l=l31; l=l32; l=l33; l=l34; l=l35; l=l36; l=l37; l=l38; l=l39; l=l40;
l=l;

end
subroutine test04()
integer :: a(1:3,2:3,3:3)
parameter (a=1)
integer,parameter,dimension(3) :: l01=lbound(a-(a)+0)
integer,parameter,dimension(3) :: l02=lbound(a-1-(a)+0)
integer,parameter,dimension(3) :: l03=lbound(0-a-(a)+0)
integer,parameter,dimension(3) :: l04=lbound(a/a-(a)+0)
integer,parameter,dimension(3) :: l05=lbound(a*a+1-(a+0))
integer,parameter,dimension(3) :: l06=lbound(-a-(a)+0)
integer,parameter,dimension(3) :: l07=lbound((a)-(a)+0)
integer,parameter,dimension(3) :: l08=lbound(a(:,:,:)-(a+0))
integer,parameter,dimension(3) :: l09=lbound(int(a)-(a+0))
integer,parameter,dimension(3) :: l10=lbound(+a-(a)+0)

integer,parameter,dimension(3) :: l11=lbound((a-(a))+0)
integer,parameter,dimension(3) :: l12=lbound((a-(a))-1+0)
integer,parameter,dimension(3) :: l13=lbound(0-(a-(a))+0)
integer,parameter,dimension(3) :: l14=lbound((a-(a))/a+0)
integer,parameter,dimension(3) :: l15=lbound((a-(a))*a+1+0)
integer,parameter,dimension(3) :: l16=lbound(-(a-(a))+0)
integer,parameter,dimension(3) :: l17=lbound(((a-(a)))+0)
integer,parameter,dimension(3) :: l18=lbound((a(:,:,:)-(a))+0)
integer,parameter,dimension(3) :: l19=lbound(int((a)-(a))+0)
integer,parameter,dimension(3) :: l20=lbound(+(a-(a))+0)

integer,parameter,dimension(3) :: l21=lbound(-a-(a)+0)
integer,parameter,dimension(3) :: l22=lbound(-a-(a)-1+0)
integer,parameter,dimension(3) :: l23=lbound(0-(a)-a+0)
integer,parameter,dimension(3) :: l24=lbound(-a/a-(a)+0)
integer,parameter,dimension(3) :: l25=lbound(-a*a-(a)+1+0)
integer,parameter,dimension(3) :: l26=lbound(-a-(a)+0)
integer,parameter,dimension(3) :: l27=lbound(-(a-(a)+0))
integer,parameter,dimension(3) :: l28=lbound(-a(:,:,:)+0-(a))
integer,parameter,dimension(3) :: l29=lbound(-int(a)-(a)+0)
integer,parameter,dimension(3) :: l30=lbound(-(+a)-(a)+0)

integer,parameter,dimension(3) :: l31=lbound(+a-(a)+0)
integer,parameter,dimension(3) :: l32=lbound(+a-1-(a)+0)
integer,parameter,dimension(3) :: l33=lbound(+0-(a)-a+0)
integer,parameter,dimension(3) :: l34=lbound(+a-(a)/a+0)
integer,parameter,dimension(3) :: l35=lbound(+a*a-(a)+1+0)
integer,parameter,dimension(3) :: l36=lbound(+(-a-(a))+0)
integer,parameter,dimension(3) :: l37=lbound(+(a)-(a)+0)
integer,parameter,dimension(3) :: l38=lbound(+a(:,:,:)-(a)+0)
integer,parameter,dimension(3) :: l39=lbound(+int(a)-(a)+0)
integer,parameter,dimension(3) :: l40=lbound(+(+a)-(a)+0)
integer,dimension(3) :: l
l=l01; l=l02; l=l03; l=l04; l=l05; l=l06; l=l07; l=l08; l=l09; l=l10;
l=l11; l=l12; l=l13; l=l14; l=l15; l=l16; l=l17; l=l18; l=l19; l=l20;
l=l21; l=l22; l=l23; l=l24; l=l25; l=l26; l=l27; l=l28; l=l29; l=l30;
l=l31; l=l32; l=l33; l=l34; l=l35; l=l36; l=l37; l=l38; l=l39; l=l40;
l=l;

end
subroutine test11()
integer :: a(1:3,4:3,3:3)
parameter (a=1)
integer,parameter,dimension(3) :: l01=lbound(a)
integer,parameter,dimension(3) :: l02=lbound(a-1)
integer,parameter,dimension(3) :: l03=lbound(0-a)
integer,parameter,dimension(3) :: l04=lbound(a/a)
integer,parameter,dimension(3) :: l05=lbound(a*a+1)
integer,parameter,dimension(3) :: l06=lbound(-a)
integer,parameter,dimension(3) :: l07=lbound((a))
integer,parameter,dimension(3) :: l08=lbound(a(:,:,:))
integer,parameter,dimension(3) :: l09=lbound(int(a))
integer,parameter,dimension(3) :: l10=lbound(+a)

integer,parameter,dimension(3) :: l11=lbound((a))
integer,parameter,dimension(3) :: l12=lbound((a)-1)
integer,parameter,dimension(3) :: l13=lbound(0-(a))
integer,parameter,dimension(3) :: l14=lbound((a)/a)
integer,parameter,dimension(3) :: l15=lbound((a)*a+1)
integer,parameter,dimension(3) :: l16=lbound(-(a))
integer,parameter,dimension(3) :: l17=lbound(((a)))
integer,parameter,dimension(3) :: l18=lbound((a(:,:,:)))
integer,parameter,dimension(3) :: l19=lbound(int((a)))
integer,parameter,dimension(3) :: l20=lbound(+(a))

integer,parameter,dimension(3) :: l21=lbound(-a)
integer,parameter,dimension(3) :: l22=lbound(-a-1)
integer,parameter,dimension(3) :: l23=lbound(0-a)
integer,parameter,dimension(3) :: l24=lbound(-a/a)
integer,parameter,dimension(3) :: l25=lbound(-a*a+1)
integer,parameter,dimension(3) :: l26=lbound(-a)
integer,parameter,dimension(3) :: l27=lbound(-(a))
integer,parameter,dimension(3) :: l28=lbound(-a(:,:,:))
integer,parameter,dimension(3) :: l29=lbound(-int(a))
integer,parameter,dimension(3) :: l30=lbound(-(+a))

integer,parameter,dimension(3) :: l31=lbound(+a)
integer,parameter,dimension(3) :: l32=lbound(+a-1)
integer,parameter,dimension(3) :: l33=lbound(+0-a)
integer,parameter,dimension(3) :: l34=lbound(+a/a)
integer,parameter,dimension(3) :: l35=lbound(+a*a+1)
integer,parameter,dimension(3) :: l36=lbound(+(-a))
integer,parameter,dimension(3) :: l37=lbound(+(a))
integer,parameter,dimension(3) :: l38=lbound(+a(:,:,:))
integer,parameter,dimension(3) :: l39=lbound(+int(a))
integer,parameter,dimension(3) :: l40=lbound(+(+a))
integer,dimension(3) :: l
l=l01; l=l02; l=l03; l=l04; l=l05; l=l06; l=l07; l=l08; l=l09; l=l10;
l=l11; l=l12; l=l13; l=l14; l=l15; l=l16; l=l17; l=l18; l=l19; l=l20;
l=l21; l=l22; l=l23; l=l24; l=l25; l=l26; l=l27; l=l28; l=l29; l=l30;
l=l31; l=l32; l=l33; l=l34; l=l35; l=l36; l=l37; l=l38; l=l39; l=l40;
l=l;

end
subroutine test12()
integer :: a(4:3,2:3,3:3)
parameter (a=1)
integer,parameter,dimension(3) :: l01=lbound(a-(a))
integer,parameter,dimension(3) :: l02=lbound(a-1-(a))
integer,parameter,dimension(3) :: l03=lbound(0-a-(a))
integer,parameter,dimension(3) :: l04=lbound(a/a-(a))
integer,parameter,dimension(3) :: l05=lbound(a*a+1-(a))
integer,parameter,dimension(3) :: l06=lbound(-a-(a))
integer,parameter,dimension(3) :: l07=lbound((a)-(a))
integer,parameter,dimension(3) :: l08=lbound(a(:,:,:)-(a))
integer,parameter,dimension(3) :: l09=lbound(int(a)-(a))
integer,parameter,dimension(3) :: l10=lbound(+a-(a))

integer,parameter,dimension(3) :: l11=lbound((a-(a)))
integer,parameter,dimension(3) :: l12=lbound((a-(a))-1)
integer,parameter,dimension(3) :: l13=lbound(0-(a-(a)))
integer,parameter,dimension(3) :: l14=lbound((a-(a))/a)
integer,parameter,dimension(3) :: l15=lbound((a-(a))*a+1)
integer,parameter,dimension(3) :: l16=lbound(-(a-(a)))
integer,parameter,dimension(3) :: l17=lbound(((a-(a))))
integer,parameter,dimension(3) :: l18=lbound((a(:,:,:)-(a)))
integer,parameter,dimension(3) :: l19=lbound(int((a)-(a)))
integer,parameter,dimension(3) :: l20=lbound(+(a-(a)))

integer,parameter,dimension(3) :: l21=lbound(-a-(a))
integer,parameter,dimension(3) :: l22=lbound(-a-(a)-1)
integer,parameter,dimension(3) :: l23=lbound(0-(a)-a)
integer,parameter,dimension(3) :: l24=lbound(-a/a-(a))
integer,parameter,dimension(3) :: l25=lbound(-a*a-(a)+1)
integer,parameter,dimension(3) :: l26=lbound(-a-(a))
integer,parameter,dimension(3) :: l27=lbound(-(a-(a)))
integer,parameter,dimension(3) :: l28=lbound(-a(:,:,:)-(a))
integer,parameter,dimension(3) :: l29=lbound(-int(a)-(a))
integer,parameter,dimension(3) :: l30=lbound(-(+a)-(a))

integer,parameter,dimension(3) :: l31=lbound(+a-(a))
integer,parameter,dimension(3) :: l32=lbound(+a-1-(a))
integer,parameter,dimension(3) :: l33=lbound(+0-(a)-a)
integer,parameter,dimension(3) :: l34=lbound(+a-(a)/a)
integer,parameter,dimension(3) :: l35=lbound(+a*a-(a)+1)
integer,parameter,dimension(3) :: l36=lbound(+(-a-(a)))
integer,parameter,dimension(3) :: l37=lbound(+(a)-(a))
integer,parameter,dimension(3) :: l38=lbound(+a(:,:,:)-(a))
integer,parameter,dimension(3) :: l39=lbound(+int(a)-(a))
integer,parameter,dimension(3) :: l40=lbound(+(+a)-(a))
integer,dimension(3) :: l
l=l01; l=l02; l=l03; l=l04; l=l05; l=l06; l=l07; l=l08; l=l09; l=l10;
l=l11; l=l12; l=l13; l=l14; l=l15; l=l16; l=l17; l=l18; l=l19; l=l20;
l=l21; l=l22; l=l23; l=l24; l=l25; l=l26; l=l27; l=l28; l=l29; l=l30;
l=l31; l=l32; l=l33; l=l34; l=l35; l=l36; l=l37; l=l38; l=l39; l=l40;
l=l;

end
subroutine test13()
integer :: a(1:3,2:3,4:3)
parameter (a=1)
integer,parameter,dimension(3) :: l01=lbound(a-int(a))
integer,parameter,dimension(3) :: l02=lbound(a-1-int(a))
integer,parameter,dimension(3) :: l03=lbound(0-a-int(a))
integer,parameter,dimension(3) :: l04=lbound(a/a-int(a))
integer,parameter,dimension(3) :: l05=lbound(a*a+1-int(a))
integer,parameter,dimension(3) :: l06=lbound(-a-int(a))
integer,parameter,dimension(3) :: l07=lbound((a)-int(a))
integer,parameter,dimension(3) :: l08=lbound(a(:,:,:)-int(a))
integer,parameter,dimension(3) :: l09=lbound(int(a)-int(a))
integer,parameter,dimension(3) :: l10=lbound(+a-int(a))

integer,parameter,dimension(3) :: l11=lbound((a-int(a)))
integer,parameter,dimension(3) :: l12=lbound((a-int(a))-1)
integer,parameter,dimension(3) :: l13=lbound(0-(a-int(a)))
integer,parameter,dimension(3) :: l14=lbound((a-int(a))/a)
integer,parameter,dimension(3) :: l15=lbound((a-int(a))*a+1)
integer,parameter,dimension(3) :: l16=lbound(-(a-int(a)))
integer,parameter,dimension(3) :: l17=lbound(((a-int(a))))
integer,parameter,dimension(3) :: l18=lbound((a(:,:,:)-int(a)))
integer,parameter,dimension(3) :: l19=lbound(int((a-int(a))))
integer,parameter,dimension(3) :: l20=lbound(+(a-int(a)))

integer,parameter,dimension(3) :: l21=lbound(-a-int(a))
integer,parameter,dimension(3) :: l22=lbound(-a-1-int(a))
integer,parameter,dimension(3) :: l23=lbound(0-a-int(a))
integer,parameter,dimension(3) :: l24=lbound(-a/a-int(a))
integer,parameter,dimension(3) :: l25=lbound(-a*a+1-int(a))
integer,parameter,dimension(3) :: l26=lbound(-a-int(a))
integer,parameter,dimension(3) :: l27=lbound(-(a)-int(a))
integer,parameter,dimension(3) :: l28=lbound(-a(:,:,:)-int(a))
integer,parameter,dimension(3) :: l29=lbound(-int(a)-int(a))
integer,parameter,dimension(3) :: l30=lbound(-(+a)-int(a))

integer,parameter,dimension(3) :: l31=lbound(+a-int(a))
integer,parameter,dimension(3) :: l32=lbound(+a-1-int(a))
integer,parameter,dimension(3) :: l33=lbound(+0-a-int(a))
integer,parameter,dimension(3) :: l34=lbound(+a/a-int(a))
integer,parameter,dimension(3) :: l35=lbound(+a*a+1-int(a))
integer,parameter,dimension(3) :: l36=lbound(+(-a)-int(a))
integer,parameter,dimension(3) :: l37=lbound(+(a)-int(a))
integer,parameter,dimension(3) :: l38=lbound(+a(:,:,:)-int(a))
integer,parameter,dimension(3) :: l39=lbound(+int(a)-int(a))
integer,parameter,dimension(3) :: l40=lbound(+(+a)-int(a))
integer,dimension(3) :: l
l=l01; l=l02; l=l03; l=l04; l=l05; l=l06; l=l07; l=l08; l=l09; l=l10;
l=l11; l=l12; l=l13; l=l14; l=l15; l=l16; l=l17; l=l18; l=l19; l=l20;
l=l21; l=l22; l=l23; l=l24; l=l25; l=l26; l=l27; l=l28; l=l29; l=l30;
l=l31; l=l32; l=l33; l=l34; l=l35; l=l36; l=l37; l=l38; l=l39; l=l40;
l=l;

end
subroutine test14()
integer :: a(4:3,4:3,4:3)
parameter (a=1)
integer,parameter,dimension(3) :: l01=lbound(a-(a)+0)
integer,parameter,dimension(3) :: l02=lbound(a-1-(a)+0)
integer,parameter,dimension(3) :: l03=lbound(0-a-(a)+0)
integer,parameter,dimension(3) :: l04=lbound(a/a-(a)+0)
integer,parameter,dimension(3) :: l05=lbound(a*a+1-(a+0))
integer,parameter,dimension(3) :: l06=lbound(-a-(a)+0)
integer,parameter,dimension(3) :: l07=lbound((a)-(a)+0)
integer,parameter,dimension(3) :: l08=lbound(a(:,:,:)-(a+0))
integer,parameter,dimension(3) :: l09=lbound(int(a)-(a+0))
integer,parameter,dimension(3) :: l10=lbound(+a-(a)+0)

integer,parameter,dimension(3) :: l11=lbound((a-(a))+0)
integer,parameter,dimension(3) :: l12=lbound((a-(a))-1+0)
integer,parameter,dimension(3) :: l13=lbound(0-(a-(a))+0)
integer,parameter,dimension(3) :: l14=lbound((a-(a))/a+0)
integer,parameter,dimension(3) :: l15=lbound((a-(a))*a+1+0)
integer,parameter,dimension(3) :: l16=lbound(-(a-(a))+0)
integer,parameter,dimension(3) :: l17=lbound(((a-(a)))+0)
integer,parameter,dimension(3) :: l18=lbound((a(:,:,:)-(a))+0)
integer,parameter,dimension(3) :: l19=lbound(int((a)-(a))+0)
integer,parameter,dimension(3) :: l20=lbound(+(a-(a))+0)

integer,parameter,dimension(3) :: l21=lbound(-a-(a)+0)
integer,parameter,dimension(3) :: l22=lbound(-a-(a)-1+0)
integer,parameter,dimension(3) :: l23=lbound(0-(a)-a+0)
integer,parameter,dimension(3) :: l24=lbound(-a/a-(a)+0)
integer,parameter,dimension(3) :: l25=lbound(-a*a-(a)+1+0)
integer,parameter,dimension(3) :: l26=lbound(-a-(a)+0)
integer,parameter,dimension(3) :: l27=lbound(-(a-(a)+0))
integer,parameter,dimension(3) :: l28=lbound(-a(:,:,:)+0-(a))
integer,parameter,dimension(3) :: l29=lbound(-int(a)-(a)+0)
integer,parameter,dimension(3) :: l30=lbound(-(+a)-(a)+0)

integer,parameter,dimension(3) :: l31=lbound(+a-(a)+0)
integer,parameter,dimension(3) :: l32=lbound(+a-1-(a)+0)
integer,parameter,dimension(3) :: l33=lbound(+0-(a)-a+0)
integer,parameter,dimension(3) :: l34=lbound(+a-(a)/a+0)
integer,parameter,dimension(3) :: l35=lbound(+a*a-(a)+1+0)
integer,parameter,dimension(3) :: l36=lbound(+(-a-(a))+0)
integer,parameter,dimension(3) :: l37=lbound(+(a)-(a)+0)
integer,parameter,dimension(3) :: l38=lbound(+a(:,:,:)-(a)+0)
integer,parameter,dimension(3) :: l39=lbound(+int(a)-(a)+0)
integer,parameter,dimension(3) :: l40=lbound(+(+a)-(a)+0)
integer,dimension(3) :: l
l=l01; l=l02; l=l03; l=l04; l=l05; l=l06; l=l07; l=l08; l=l09; l=l10;
l=l11; l=l12; l=l13; l=l14; l=l15; l=l16; l=l17; l=l18; l=l19; l=l20;
l=l21; l=l22; l=l23; l=l24; l=l25; l=l26; l=l27; l=l28; l=l29; l=l30;
l=l31; l=l32; l=l33; l=l34; l=l35; l=l36; l=l37; l=l38; l=l39; l=l40;
l=l;

end
