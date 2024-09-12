c
c ow =g1128
c
      call s1
      print *,'pass'
      end
      subroutine s1
      type p
        integer*2   p1
        character*5 p2
        character*5 p3(1,1,2)
        integer*2   p4
      end type
      integer,parameter,dimension(3)::s=(/1,1,2/)
      integer,parameter,dimension(2)::v=(/1,2/)
      type(p),parameter::
     1 p111=p(1111,'111a',reshape((/'111b','111c'/),s),1112) ,
     2 p112=p(1121,'112d',reshape((/'112e','112f'/),s),1122) ,
     3 p113=p(1131,'113g',reshape((/'113h','113i'/),s),1132) ,
     4 p121=p(1211,'121j',reshape((/'121k','121l'/),s),1212) ,
     5 p122=p(1221,'122m',reshape((/'122n','122o'/),s),1222) ,
     6 p123=p(1231,'123p',reshape((/'123q','123s'/),s),1232) ,
     7 p131=p(1311,'131t',reshape((/'131u','131v'/),s),1312) ,
     8 p132=p(1321,'132w',reshape((/'132x','132y'/),s),1322) ,
     9 p133=p(1331,'133z',reshape((/'133#','133%'/),s),1332)
      type(p),parameter::
     1 p211=p(2111,'211a',reshape((/'211b','211c'/),s),2112) ,
     2 p212=p(2121,'212d',reshape((/'212e','212f'/),s),2122) ,
     3 p213=p(2131,'213g',reshape((/'213h','213i'/),s),2132) ,
     4 p221=p(2211,'221j',reshape((/'221k','221l'/),s),2212) ,
     5 p222=p(2221,'222m',reshape((/'222n','222o'/),s),2222) ,
     6 p223=p(2231,'223p',reshape((/'223q','223s'/),s),2232) ,
     7 p231=p(2311,'231t',reshape((/'231u','231v'/),s),2312) ,
     8 p232=p(2321,'232w',reshape((/'232x','232y'/),s),2322) ,
     9 p233=p(2331,'233z',reshape((/'233#','233%'/),s),2332)
      type(p),parameter::
     1 p311=p(3111,'311a',reshape((/'311b','311c'/),s),3112) ,
     2 p312=p(3121,'312d',reshape((/'312e','312f'/),s),3122) ,
     3 p313=p(3131,'313g',reshape((/'313h','313i'/),s),3132) ,
     4 p321=p(3211,'321j',reshape((/'321k','321l'/),s),3212) ,
     5 p322=p(3221,'322m',reshape((/'322n','322o'/),s),3222) ,
     6 p323=p(3231,'323p',reshape((/'323q','323s'/),s),3232) ,
     7 p331=p(3311,'331t',reshape((/'331u','331v'/),s),3312) ,
     8 p332=p(3321,'332w',reshape((/'332x','332y'/),s),3322) ,
     9 p333=p(3331,'333z',reshape((/'333#','333%'/),s),3332)
      type q 
         integer    q1
         type (p):: q2
         type (p):: q3(1,1,2)
         integer    q4
      end type
      type (q),parameter::q11=q(0,p111,reshape((/p112,p113/),s),0)
      type (q),parameter::q12=q(0,p121,reshape((/p122,p123/),s),0)
      type (q),parameter::q13=q(0,p131,reshape((/p132,p133/),s),0)
      type (q),parameter::q21=q(0,p211,reshape((/p212,p213/),s),0)
      type (q),parameter::q22=q(0,p221,reshape((/p222,p223/),s),0)
      type (q),parameter::q23=q(0,p231,reshape((/p232,p233/),s),0)
      type (q),parameter::q31=q(0,p311,reshape((/p312,p313/),s),0)
      type (q),parameter::q32=q(0,p321,reshape((/p322,p323/),s),0)
      type (q),parameter::q33=q(0,p331,reshape((/p332,p333/),s),0)
      type r
         integer     r1 
         type (q)::  r2
         type (q)::  r3(1,1,2)
         integer     r4 
      end type 
      type (r),parameter::r1=r(0,q11,reshape((/q12,q13/),s),0)
      type (r),parameter::r2=r(0,q21,reshape((/q22,q23/),s),0)
      type (r),parameter::r3=r(0,q31,reshape((/q32,q33/),s),0)
      type (r),parameter::t1=r1
      type (r),parameter,dimension(1,1,2)::t2=reshape((/ r2, r3 /),s)
      integer,parameter::t1r2q2p1= t1%r2%q2%p1
      integer,parameter::t1r2q2p4= t1%r2%q2%p4
      integer,parameter::t1r2q31p1=t1%r2%q3(1,1,1)%p1
      integer,parameter::t1r2q31p4=t1%r2%q3(1,1,1)%p4
      integer,parameter::t1r2q32p1=t1%r2%q3(1,1,2)%p1
      integer,parameter::t1r2q32p4=t1%r2%q3(1,1,2)%p4
      integer,parameter::t1r31q2p1= t1%r3(1,1,1)%q2%p1
      integer,parameter::t1r31q2p4= t1%r3(1,1,1)%q2%p4
      integer,parameter::t1r31q31p1=t1%r3(1,1,1)%q3(1,1,1)%p1
      integer,parameter::t1r31q31p4=t1%r3(1,1,1)%q3(1,1,1)%p4
      integer,parameter::t1r31q32p1=t1%r3(1,1,1)%q3(1,1,2)%p1
      integer,parameter::t1r31q32p4=t1%r3(1,1,1)%q3(1,1,2)%p4
      integer,parameter::t1r32q2p1= t1%r3(1,1,2)%q2%p1
      integer,parameter::t1r32q2p4= t1%r3(1,1,2)%q2%p4
      integer,parameter::t1r32q31p1=t1%r3(1,1,2)%q3(1,1,1)%p1
      integer,parameter::t1r32q31p4=t1%r3(1,1,2)%q3(1,1,1)%p4
      integer,parameter::t1r32q32p1=t1%r3(1,1,2)%q3(1,1,2)%p1
      integer,parameter::t1r32q32p4=t1%r3(1,1,2)%q3(1,1,2)%p4
      integer,parameter::t21r2q2p1= t2(1,1,1)%r2%q2%p1
      integer,parameter::t21r2q2p4= t2(1,1,1)%r2%q2%p4
      integer,parameter::t21r2q31p1=t2(1,1,1)%r2%q3(1,1,1)%p1
      integer,parameter::t21r2q31p4=t2(1,1,1)%r2%q3(1,1,1)%p4
      integer,parameter::t21r2q32p1=t2(1,1,1)%r2%q3(1,1,2)%p1
      integer,parameter::t21r2q32p4=t2(1,1,1)%r2%q3(1,1,2)%p4
      integer,parameter::t21r31q2p1= t2(1,1,1)%r3(1,1,1)%q2%p1
      integer,parameter::t21r31q2p4= t2(1,1,1)%r3(1,1,1)%q2%p4
      integer,parameter::t21r31q31p1=t2(1,1,1)%r3(1,1,1)%q3(1,1,1)%p1
      integer,parameter::t21r31q31p4=t2(1,1,1)%r3(1,1,1)%q3(1,1,1)%p4
      integer,parameter::t21r31q32p1=t2(1,1,1)%r3(1,1,1)%q3(1,1,2)%p1
      integer,parameter::t21r31q32p4=t2(1,1,1)%r3(1,1,1)%q3(1,1,2)%p4
      integer,parameter::t21r32q2p1= t2(1,1,1)%r3(1,1,2)%q2%p1
      integer,parameter::t21r32q2p4= t2(1,1,1)%r3(1,1,2)%q2%p4
      integer,parameter::t21r32q31p1=t2(1,1,1)%r3(1,1,2)%q3(1,1,1)%p1
      integer,parameter::t21r32q31p4=t2(1,1,1)%r3(1,1,2)%q3(1,1,1)%p4
      integer,parameter::t21r32q32p1=t2(1,1,1)%r3(1,1,2)%q3(1,1,2)%p1
      integer,parameter::t21r32q32p4=t2(1,1,1)%r3(1,1,2)%q3(1,1,2)%p4
      integer,parameter::t22r2q2p1= t2(1,1,2)%r2%q2%p1
      integer,parameter::t22r2q2p4= t2(1,1,2)%r2%q2%p4
      integer,parameter::t22r2q31p1=t2(1,1,2)%r2%q3(1,1,1)%p1
      integer,parameter::t22r2q31p4=t2(1,1,2)%r2%q3(1,1,1)%p4
      integer,parameter::t22r2q32p1=t2(1,1,2)%r2%q3(1,1,2)%p1
      integer,parameter::t22r2q32p4=t2(1,1,2)%r2%q3(1,1,2)%p4
      integer,parameter::t22r31q2p1= t2(1,1,2)%r3(1,1,1)%q2%p1
      integer,parameter::t22r31q2p4= t2(1,1,2)%r3(1,1,1)%q2%p4
      integer,parameter::t22r31q31p1=t2(1,1,2)%r3(1,1,1)%q3(1,1,1)%p1
      integer,parameter::t22r31q31p4=t2(1,1,2)%r3(1,1,1)%q3(1,1,1)%p4
      integer,parameter::t22r31q32p1=t2(1,1,2)%r3(1,1,1)%q3(1,1,2)%p1
      integer,parameter::t22r31q32p4=t2(1,1,2)%r3(1,1,1)%q3(1,1,2)%p4
      integer,parameter::t22r32q2p1= t2(1,1,2)%r3(1,1,2)%q2%p1
      integer,parameter::t22r32q2p4= t2(1,1,2)%r3(1,1,2)%q2%p4
      integer,parameter::t22r32q31p1=t2(1,1,2)%r3(1,1,2)%q3(1,1,1)%p1
      integer,parameter::t22r32q31p4=t2(1,1,2)%r3(1,1,2)%q3(1,1,1)%p4
      integer,parameter::t22r32q32p1=t2(1,1,2)%r3(1,1,2)%q3(1,1,2)%p1
      integer,parameter::t22r32q32p4=t2(1,1,2)%r3(1,1,2)%q3(1,1,2)%p4
      integer,parameter::y01=t1%r2%q2%p1
      integer,parameter,dimension(1,1,2)::y02=t2%r2%q2%p1
      integer,parameter::y03=t1%r2%q2%p4
      integer,parameter,dimension(1,1,2)::y04=t1%r2%q3(:,:,v)%p4
      integer,parameter,dimension(1,1,2)::y05=t1%r2%q3%p4
      integer,parameter,dimension(1,1,2)::y06=t1%r3%q2%p4
      integer,parameter,dimension(1,1,2)::y07=t1%r3(:,:,:)%q2%p4
      integer,parameter,dimension(1,1,2)::y08=t2%r3(1,1,2)%q3(1,1,2)%p4
      integer,parameter,dimension(1,1,2)::
     1                       y09=t2(:,:,v)%r3(1,1,2)%q3(1,1,2)%p4
      integer,parameter,dimension(1,1,2)::
     1                       y10=t2(1,1,2)%r3(:,:,v)%q3(1,1,2)%p4
      integer,parameter,dimension(1,1,2)::y11=t2(1,1,2)%r3%q3(1,1,2)%p4
      integer,parameter,dimension(1,1,2)::
     1                       y12=t2(1,1,2)%r3(1,1,2)%q3(:,:,:)%p4
      integer,parameter,dimension(1,1,2)::y13=t2(1,1,2)%r3(1,1,2)%q3%p4
      integer,parameter,dimension(1,1,2)::y14=t2(:,:,v)%r2%q2%p4
      integer,parameter,dimension(1,1,2)::y15=t2%r2%q2%p4
      integer,parameter,dimension(1,1,2)::y16=t1%r3(:,:,v)%q2%p4
      integer,parameter,dimension(1,1,2)::y17=t1%r3%q2%p4
      integer,parameter,dimension(1,1,2)::y18=t1%r2%q3%p4
      integer,parameter,dimension(1,1,2)::y19=t1%r2%q3(:,:,v)%p4
      integer,parameter,dimension(1,1,2)::y20=
     1                              t2(:,:,v)%r3(1,1,2)%q2%p4
      integer,parameter,dimension(1,1,2)::y21=   t2%r3(1,1,2)%q2%p4
      integer,parameter,dimension(1,1,2)::y22=
     1                              t2(:,:,v)%r2%q3(1,1,2)%p4
      integer,parameter,dimension(1,1,2)::y23=t2%r2%q3(1,1,2)%p4
      integer,parameter,dimension(1,1,2)::y24=t2(1,1,2)%r3%q3(1,1,2)%p4
      integer,parameter,dimension(1,1,2)::
     1                y25=t2(1,1,2)%r3(:,:,:)%q3(1,1,2)%p4
      type(p),parameter,dimension(1,1,2)::
     1                yy25=t2(1,1,2)%r3(:,:,:)%q3(1,1,2)
      integer,parameter,dimension(1,1,2)::y26=yy25%p4
      type(p),parameter,dimension(1,1,2)::yy24=t2(1,1,2)%r3%q3(1,1,2)
      integer,parameter,dimension(1,1,2)::y27=yy24%p4
      type(p),parameter,dimension(1,1,2)::yy23=t2%r2%q3(1,1,2)
      integer,parameter,dimension(1,1,2)::y28=yy23%p4
      type(p),parameter,dimension(1,1,2)::yy22=t2(:,:,v)%r2%q3(1,1,2)
      integer,parameter,dimension(1,1,2)::y29=yy22%p4
      type(p),parameter,dimension(1,1,2)::yy21=   t2%r3(1,1,2)%q2
      integer,parameter,dimension(1,1,2)::y30=yy21%p4
      type(p),parameter,dimension(1,1,2)::yy20=
     1                              t2(:,:,v)%r3(1,1,2)%q2
      integer,parameter,dimension(1,1,2)::y31=yy20%p4
      type(p),parameter,dimension(1,1,2)::yy17=t1%r3%q2
      integer,parameter,dimension(1,1,2)::y32=yy17%p4
      type(p),parameter,dimension(1,1,2)::yy18=t1%r2%q3
      integer,parameter,dimension(1,1,2)::y33=yy18%p4
      type(p),parameter,dimension(1,1,2)::yy19=t1%r2%q3(:,:,v)
      integer,parameter,dimension(1,1,2)::y34=yy19%p4
      type(p),parameter::yy01=t1%r2%q2
      integer,parameter                 ::y35=yy01%p1
      type(p),parameter,dimension(1,1,2)::yy02=t2%r2%q2
      integer,parameter,dimension(1,1,2)::y36=yy02%p1
      type(p),parameter::yy03=t1%r2%q2
      integer,parameter                 ::y37=yy03%p4
      type(p),parameter,dimension(1,1,2)::yy04=t1%r2%q3(:,:,v)
      integer,parameter,dimension(1,1,2)::y38=yy04%p4
      type(p),parameter,dimension(1,1,2)::yy05=t1%r2%q3
      integer,parameter,dimension(1,1,2)::y39=yy05%p4
      type(p),parameter,dimension(1,1,2)::yy06=t1%r3%q2
      integer,parameter,dimension(1,1,2)::y40=yy06%p4
      type(p),parameter,dimension(1,1,2)::yy07=t1%r3(:,:,:)%q2
      integer,parameter,dimension(1,1,2)::y41=yy07%p4
      type(p),parameter,dimension(1,1,2)::yy08=t2%r3(1,1,2)%q3(1,1,2)
      integer,parameter,dimension(1,1,2)::y42=yy08%p4
      type(p),parameter,dimension(1,1,2)::
     1                       yy09=t2(:,:,v)%r3(1,1,2)%q3(1,1,2)
      integer,parameter,dimension(1,1,2)::y43=yy09%p4
      type(p),parameter,dimension(1,1,2)::
     1                       yy10=t2(1,1,2)%r3(:,:,v)%q3(1,1,2)
      integer,parameter,dimension(1,1,2)::y44=yy10%p4
      type(p),parameter,dimension(1,1,2)::yy11=t2(1,1,2)%r3%q3(1,1,2)
      integer,parameter,dimension(1,1,2)::y45=yy11%p4
      type(p),parameter,dimension(1,1,2)::
     1                       yy12=t2(1,1,2)%r3(1,1,2)%q3(:,:,:)
      integer,parameter,dimension(1,1,2)::y46=yy12%p4
      type(p),parameter,dimension(1,1,2)::yy13=t2(1,1,2)%r3(1,1,2)%q3
      integer,parameter,dimension(1,1,2)::y47=yy13%p4
      type(p),parameter,dimension(1,1,2)::yy14=t2(:,:,v)%r2%q2
      integer,parameter,dimension(1,1,2)::y48=yy14%p4
      type(p),parameter,dimension(1,1,2)::yy15=t2%r2%q2
      integer,parameter,dimension(1,1,2)::y49=yy15%p4
      type(p),parameter,dimension(1,1,2)::yy16=t1%r3(:,:,v)%q2
      integer,parameter,dimension(1,1,2)::y50=yy16%p4

      if (y50(1,1,1)/=t1r31q2p4.or.y50(1,1,2)/=t1r32q2p4)call errtra
      if (y49(1,1,1)/=t21r2q2p4.or.y49(1,1,2)/=t22r2q2p4)call errtra
      if (y48(1,1,1)/=t21r2q2p4.or.y48(1,1,2)/=t22r2q2p4)call errtra
      if (y47(1,1,1)/=t22r32q31p4.or.y47(1,1,2)/=t22r32q32p4)call errtra
      if (y46(1,1,1)/=t22r32q31p4.or.y46(1,1,2)/=t22r32q32p4)call errtra
      if (y45(1,1,1)/=t22r31q32p4.or.y45(1,1,2)/=t22r32q32p4)call errtra
      if (y44(1,1,1)/=t22r31q32p4.or.y44(1,1,2)/=t22r32q32p4)call errtra
      if (y43(1,1,1)/=t21r32q32p4.or.y43(1,1,2)/=t22r32q32p4)call errtra
      if (y42(1,1,1)/=t21r32q32p4.or.y42(1,1,2)/=t22r32q32p4)call errtra
      if (y41(1,1,1)/=t1r31q2p4.or.y41(1,1,2)/=t1r32q2p4)call errtra
      if (y40(1,1,1)/=t1r31q2p4.or.y40(1,1,2)/=t1r32q2p4)call errtra
      if (y39(1,1,1)/=t1r2q31p4.or.y39(1,1,2)/=t1r2q32p4)call errtra
      if (y38(1,1,1)/=t1r2q31p4.or.y38(1,1,2)/=t1r2q32p4)call errtra
      if (y37/=t1r2q2p4)call errtra
      if (y36(1,1,1)/=2111.or.y36(1,1,2)/=3111)call errtra
      if (y35/=1111)call errtra
      if (y34(1,1,1)/=t1r2q31p4.or.y34(1,1,2)/=t1r2q32p4)call errtra
      if (y33(1,1,1)/=t1r2q31p4.or.y33(1,1,2)/=t1r2q32p4)call errtra
      if (y32(1,1,1)/=t1r31q2p4.or.y32(1,1,2)/=t1r32q2p4)call errtra
      if (y31(1,1,1)/=t21r32q2p4.or.y31(1,1,2)/=t22r32q2p4)call errtra
      if (y30(1,1,1)/=t21r32q2p4.or.y30(1,1,2)/=t22r32q2p4)call errtra
      if (y29(1,1,1)/=t21r2q32p4.or.y29(1,1,2)/=t22r2q32p4)call errtra
      if (y28(1,1,1)/=t21r2q32p4.or.y28(1,1,2)/=t22r2q32p4)call errtra
      if (y27(1,1,1)/=t22r31q32p4.or.y27(1,1,2)/=t22r32q32p4)call errtra
      if (y26(1,1,1)/=t22r31q32p4.or.y26(1,1,2)/=t22r32q32p4)call errtra
      if (y25(1,1,1)/=t22r31q32p4.or.y25(1,1,2)/=t22r32q32p4)call errtra
      if (y24(1,1,1)/=t22r31q32p4.or.y24(1,1,2)/=t22r32q32p4)call errtra
      if (y23(1,1,1)/=t21r2q32p4.or.y23(1,1,2)/=t22r2q32p4)call errtra
      if (y22(1,1,1)/=t21r2q32p4.or.y22(1,1,2)/=t22r2q32p4)call errtra
      if (y21(1,1,1)/=t21r32q2p4.or.y21(1,1,2)/=t22r32q2p4)call errtra
      if (y20(1,1,1)/=t21r32q2p4.or.y20(1,1,2)/=t22r32q2p4)call errtra
      if (y19(1,1,1)/=t1r2q31p4.or.y19(1,1,2)/=t1r2q32p4)call errtra
      if (y18(1,1,1)/=t1r2q31p4.or.y18(1,1,2)/=t1r2q32p4)call errtra
      if (y17(1,1,1)/=t1r31q2p4.or.y17(1,1,2)/=t1r32q2p4)call errtra
      if (y16(1,1,1)/=t1r31q2p4.or.y16(1,1,2)/=t1r32q2p4)call errtra
      if (y15(1,1,1)/=t21r2q2p4.or.y15(1,1,2)/=t22r2q2p4)call errtra
      if (y14(1,1,1)/=t21r2q2p4.or.y14(1,1,2)/=t22r2q2p4)call errtra
      if (y13(1,1,1)/=t22r32q31p4.or.y13(1,1,2)/=t22r32q32p4)call errtra
      if (y12(1,1,1)/=t22r32q31p4.or.y12(1,1,2)/=t22r32q32p4)call errtra
      if (y11(1,1,1)/=t22r31q32p4.or.y11(1,1,2)/=t22r32q32p4)call errtra
      if (y10(1,1,1)/=t22r31q32p4.or.y10(1,1,2)/=t22r32q32p4)call errtra
      if (y09(1,1,1)/=t21r32q32p4.or.y09(1,1,2)/=t22r32q32p4)call errtra
      if (y08(1,1,1)/=t21r32q32p4.or.y08(1,1,2)/=t22r32q32p4)call errtra
      if (y07(1,1,1)/=t1r31q2p4.or.y07(1,1,2)/=t1r32q2p4)call errtra
      if (y06(1,1,1)/=t1r31q2p4.or.y06(1,1,2)/=t1r32q2p4)call errtra
      if (y05(1,1,1)/=t1r2q31p4.or.y05(1,1,2)/=t1r2q32p4)call errtra
      if (y04(1,1,1)/=t1r2q31p4.or.y04(1,1,2)/=t1r2q32p4)call errtra
      if (y03/=t1r2q2p4)call errtra
      if (y02(1,1,1)/=2111.or.y02(1,1,2)/=3111)call errtra
      if (y01/=1111)call errtra
      if (t1r2q2p1/=1111)call errtra
      if (t1r2q2p4/=1112)call errtra
      if (t1r2q31p1/=1121)call errtra
      if (t1r2q31p4/=1122)call errtra
      if (t1r2q32p1/=1131)call errtra
      if (t1r2q32p4/=1132)call errtra
      if (t1r31q2p1/= 1211)call errtra
      if (t1r31q2p4/= 1212)call errtra
      if (t1r31q31p1/=1221)call errtra
      if (t1r31q31p4/=1222)call errtra
      if (t1r31q32p1/=1231)call errtra
      if (t1r31q32p4/=1232)call errtra
      if (t1r32q2p1/= 1311)call errtra
      if (t1r32q2p4/= 1312)call errtra
      if (t1r32q31p1/=1321)call errtra
      if (t1r32q31p4/=1322)call errtra
      if (t1r32q32p1/=1331)call errtra
      if (t1r32q32p4/=1332)call errtra
      if (t21r2q2p1/=2111)call errtra
      if (t21r2q2p4/= 2112)call errtra
      if (t21r2q31p1/=2121)call errtra
      if (t21r2q31p4/=2122)call errtra
      if (t21r2q32p1/=2131)call errtra
      if (t21r2q32p4/=2132)call errtra
      if (t21r31q2p1/=2211)call errtra
      if (t21r31q2p4/=2212)call errtra
      if (t21r31q31p1/=2221)call errtra
      if (t21r31q31p4/=2222)call errtra
      if (t21r31q32p1/=2231)call errtra
      if (t21r31q32p4/=2232)call errtra
      if (t21r32q2p1/= 2311)call errtra
      if (t21r32q2p4/=2312)call errtra
      if (t21r32q31p1/=2321)call errtra
      if (t21r32q31p4/=2322)call errtra
      if (t21r32q32p1/=2331)call errtra
      if (t21r32q32p4/=2332)call errtra
      if (t22r2q2p1/= 3111)call errtra
      if (t22r2q2p4/=3112)call errtra
      if (t22r2q31p1/=3121)call errtra
      if (t22r2q31p4/=3122)call errtra
      if (t22r2q32p1/=3131)call errtra
      if (t22r2q32p4/=3132)call errtra
      if (t22r31q2p1/=3211)call errtra
      if (t22r31q2p4/= 3212)call errtra
      if (t22r31q31p1/=3221)call errtra
      if (t22r31q31p4/=3222)call errtra
      if (t22r31q32p1/=3231)call errtra
      if (t22r31q32p4/=3232)call errtra
      if (t22r32q2p1/= 3311)call errtra
      if (t22r32q2p4/= 3312)call errtra
      if (t22r32q31p1/=3321)call errtra
      if (t22r32q31p4/=3322)call errtra
      if (t22r32q32p1/=3331)call errtra
      if (t22r32q32p4/=3332)call errtra
      end
