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
      character*(*),parameter::t1r2q2p2= t1%r2%q2%p2(2:4)
      character*(*),parameter::t1r2q2p31= t1%r2%q2%p3(1,1,1)(2:4)
      character*(*),parameter::t1r2q2p32= t1%r2%q2%p3(1,1,2)(2:4)
      character*(*),parameter::t1r2q31p2=t1%r2%q3(1,1,1)%p2(2:4)
      character*(*),parameter::t1r2q31p31=t1%r2%q3(1,1,1)%p3(1,1,1)(2:4)
      character*(*),parameter::t1r2q31p32=t1%r2%q3(1,1,1)%p3(1,1,2)(2:4)
      character*(*),parameter::t1r2q32p2=t1%r2%q3(1,1,2)%p2(2:4)
      character*(*),parameter::t1r2q32p31=t1%r2%q3(1,1,2)%p3(1,1,1)(2:4)
      character*(*),parameter::t1r2q32p32=t1%r2%q3(1,1,2)%p3(1,1,2)(2:4)
      character*(*),parameter::t1r31q2p2= t1%r3(1,1,1)%q2%p2(2:4)
      character*(*),parameter::t1r31q2p31=t1%r3(1,1,1)%q2%p3(1,1,1)(2:4)
      character*(*),parameter::t1r31q2p32=t1%r3(1,1,1)%q2%p3(1,1,2)(2:4)
      character*(*),parameter::t1r31q31p2=t1%r3(1,1,1)%q3(1,1,1)%p2(2:4)
      character*(*),parameter::
     1   t1r31q31p31=t1%r3(1,1,1)%q3(1,1,1)%p3(1,1,1)(2:4),
     1   t1r31q31p32=t1%r3(1,1,1)%q3(1,1,1)%p3(1,1,2)(2:4)
      character*(*),parameter::t1r31q32p2=t1%r3(1,1,1)%q3(1,1,2)%p2(2:4)
      character*(*),parameter::
     1   t1r31q32p31=t1%r3(1,1,1)%q3(1,1,2)%p3(1,1,1)(2:4),
     1   t1r31q32p32=t1%r3(1,1,1)%q3(1,1,2)%p3(1,1,2)(2:4)
      character*(*),parameter::t1r32q2p2= t1%r3(1,1,2)%q2%p2(2:4)
      character*(*),parameter::t1r32q2p31=t1%r3(1,1,2)%q2%p3(1,1,1)(2:4)
      character*(*),parameter::t1r32q2p32=t1%r3(1,1,2)%q2%p3(1,1,2)(2:4)
      character*(*),parameter::t1r32q31p2=t1%r3(1,1,2)%q3(1,1,1)%p2(2:4)
      character*(*),parameter::
     1     t1r32q31p31=t1%r3(1,1,2)%q3(1,1,1)%p3(1,1,1)(2:4),
     1     t1r32q31p32=t1%r3(1,1,2)%q3(1,1,1)%p3(1,1,2)(2:4)
      character*(*),parameter::t1r32q32p2=t1%r3(1,1,2)%q3(1,1,2)%p2(2:4)
      character*(*),parameter::
     1     t1r32q32p31=t1%r3(1,1,2)%q3(1,1,2)%p3(1,1,1)(2:4),
     1     t1r32q32p32=t1%r3(1,1,2)%q3(1,1,2)%p3(1,1,2)(2:4)
      character*(*),parameter::t21r2q2p2= t2(1,1,1)%r2%q2%p2(2:4)
      character*(*),parameter::t21r2q2p31=t2(1,1,1)%r2%q2%p3(1,1,1)(2:4)
      character*(*),parameter::t21r2q2p32=t2(1,1,1)%r2%q2%p3(1,1,2)(2:4)
      character*(*),parameter::t21r2q31p2=t2(1,1,1)%r2%q3(1,1,1)%p2(2:4)
      character*(*),parameter::
     1     t21r2q31p31=t2(1,1,1)%r2%q3(1,1,1)%p3(1,1,1)(2:4),
     1     t21r2q31p32=t2(1,1,1)%r2%q3(1,1,1)%p3(1,1,2)(2:4)
      character*(*),parameter::t21r2q32p2=t2(1,1,1)%r2%q3(1,1,2)%p2(2:4)
      character*(*),parameter::
     1     t21r2q32p31=t2(1,1,1)%r2%q3(1,1,2)%p3(1,1,1)(2:4),
     1     t21r2q32p32=t2(1,1,1)%r2%q3(1,1,2)%p3(1,1,2)(2:4)
      character*(*),parameter::t21r31q2p2=t2(1,1,1)%r3(1,1,1)%q2%p2(2:4)
      character*(*),parameter::
     1     t21r31q2p31= t2(1,1,1)%r3(1,1,1)%q2%p3(1,1,1)(2:4),
     1     t21r31q2p32= t2(1,1,1)%r3(1,1,1)%q2%p3(1,1,2)(2:4)
      character*(*),parameter::
     1     t21r31q31p2=t2(1,1,1)%r3(1,1,1)%q3(1,1,1)%p2(2:4)
      character*(*),parameter::
     1     t21r31q31p31=t2(1,1,1)%r3(1,1,1)%q3(1,1,1)%p3(1,1,1)(2:4),
     1     t21r31q31p32=t2(1,1,1)%r3(1,1,1)%q3(1,1,1)%p3(1,1,2)(2:4)
      character*(*),parameter::
     1     t21r31q32p2=t2(1,1,1)%r3(1,1,1)%q3(1,1,2)%p2(2:4)
      character*(*),parameter::
     1     t21r31q32p31=t2(1,1,1)%r3(1,1,1)%q3(1,1,2)%p3(1,1,1)(2:4),
     1     t21r31q32p32=t2(1,1,1)%r3(1,1,1)%q3(1,1,2)%p3(1,1,2)(2:4)
      character*(*),parameter::t21r32q2p2=t2(1,1,1)%r3(1,1,2)%q2%p2(2:4)
      character*(*),parameter::
     1     t21r32q2p31= t2(1,1,1)%r3(1,1,2)%q2%p3(1,1,1)(2:4),
     1     t21r32q2p32= t2(1,1,1)%r3(1,1,2)%q2%p3(1,1,2)(2:4)
      character*(*),parameter::
     1     t21r32q31p2=t2(1,1,1)%r3(1,1,2)%q3(1,1,1)%p2(2:4)
      character*(*),parameter::
     1     t21r32q31p31=t2(1,1,1)%r3(1,1,2)%q3(1,1,1)%p3(1,1,1)(2:4),
     1     t21r32q31p32=t2(1,1,1)%r3(1,1,2)%q3(1,1,1)%p3(1,1,2)(2:4)
      character*(*),parameter::
     1     t21r32q32p2=t2(1,1,1)%r3(1,1,2)%q3(1,1,2)%p2(2:4)
      character*(*),parameter::
     1     t21r32q32p31=t2(1,1,1)%r3(1,1,2)%q3(1,1,2)%p3(1,1,1)(2:4),
     1     t21r32q32p32=t2(1,1,1)%r3(1,1,2)%q3(1,1,2)%p3(1,1,2)(2:4)
      character*(*),parameter::t22r2q2p2= t2(1,1,2)%r2%q2%p2(2:4)
      character*(*),parameter::
     1     t22r2q2p31= t2(1,1,2)%r2%q2%p3(1,1,1)(2:4),
     1     t22r2q2p32= t2(1,1,2)%r2%q2%p3(1,1,2)(2:4)
      character*(*),parameter::t22r2q31p2=t2(1,1,2)%r2%q3(1,1,1)%p2(2:4)
      character*(*),parameter::
     1     t22r2q31p31=t2(1,1,2)%r2%q3(1,1,1)%p3(1,1,1)(2:4),
     1     t22r2q31p32=t2(1,1,2)%r2%q3(1,1,1)%p3(1,1,2)(2:4)
      character*(*),parameter::t22r2q32p2=t2(1,1,2)%r2%q3(1,1,2)%p2(2:4)
      character*(*),parameter::
     1     t22r2q32p31=t2(1,1,2)%r2%q3(1,1,2)%p3(1,1,1)(2:4),
     1     t22r2q32p32=t2(1,1,2)%r2%q3(1,1,2)%p3(1,1,2)(2:4)
      character*(*),parameter::
     1     t22r31q2p2=t2(1,1,2)%r3(1,1,1)%q2%p2(2:4)
      character*(*),parameter::
     1     t22r31q2p31= t2(1,1,2)%r3(1,1,1)%q2%p3(1,1,1)(2:4),
     1     t22r31q2p32= t2(1,1,2)%r3(1,1,1)%q2%p3(1,1,2)(2:4)
      character*(*),parameter::
     1     t22r31q31p2=t2(1,1,2)%r3(1,1,1)%q3(1,1,1)%p2(2:4)
      character*(*),parameter::
     1     t22r31q31p31=t2(1,1,2)%r3(1,1,1)%q3(1,1,1)%p3(1,1,1)(2:4),
     1     t22r31q31p32=t2(1,1,2)%r3(1,1,1)%q3(1,1,1)%p3(1,1,2)(2:4)
      character*(*),parameter::
     1     t22r31q32p2=t2(1,1,2)%r3(1,1,1)%q3(1,1,2)%p2(2:4)
      character*(*),parameter::
     1     t22r31q32p31=t2(1,1,2)%r3(1,1,1)%q3(1,1,2)%p3(1,1,1)(2:4),
     1     t22r31q32p32=t2(1,1,2)%r3(1,1,1)%q3(1,1,2)%p3(1,1,2)(2:4)
      character*(*),parameter::t22r32q2p2=t2(1,1,2)%r3(1,1,2)%q2%p2(2:4)
      character*(*),parameter::
     1     t22r32q2p31= t2(1,1,2)%r3(1,1,2)%q2%p3(1,1,1)(2:4),
     1     t22r32q2p32= t2(1,1,2)%r3(1,1,2)%q2%p3(1,1,2)(2:4)
      character*(*),parameter::
     1     t22r32q31p2=t2(1,1,2)%r3(1,1,2)%q3(1,1,1)%p2(2:4)
      character*(*),parameter::
     1     t22r32q31p31=t2(1,1,2)%r3(1,1,2)%q3(1,1,1)%p3(1,1,1)(2:4),
     1     t22r32q31p32=t2(1,1,2)%r3(1,1,2)%q3(1,1,1)%p3(1,1,2)(2:4)
      character*(*),parameter::
     1     t22r32q32p2=t2(1,1,2)%r3(1,1,2)%q3(1,1,2)%p2(2:4)
      character*(*),parameter::
     1     t22r32q32p31=t2(1,1,2)%r3(1,1,2)%q3(1,1,2)%p3(1,1,1)(2:4),
     1     t22r32q32p32=t2(1,1,2)%r3(1,1,2)%q3(1,1,2)%p3(1,1,2)(2:4)
      integer*2,dimension(1),parameter::m=(/ 1 /)
      character(len=*),dimension(1,1,2),parameter::
     1 u01=t1%r2%q2%p3(m,m,v)(2:4),
     1 u02=t1%r2%q3(1,1,2)%p3(m,m,v)(2:4),
     1 u03=t1%r3(1,1,2)%q2%p3(m,m,v)(2:4),
     1 u04=t2(1,1,2)%r2%q2%p3(m,m,v)(2:4),
     1 u05=t1%r3(1,1,2)%q3(1,1,2)%p3(m,m,v)(2:4),
     1 u06=t2(1,1,2)%r2%q3(1,1,2)%p3(m,m,v)(2:4),
     1 u07=t2(1,1,2)%r3(1,1,2)%q2%p3(m,m,v)(2:4),
     1 u08=t2(1,1,2)%r3(1,1,2)%q3(1,1,2)%p3(m,m,v)(2:4)
      character(len=*),dimension(1,1,2),parameter::
     1 u11=t2(m,m,v)%r2%q2%p2(2:4),
     1 u12=t2(m,m,v)%r2%q2%p3(1,1,2)(2:4),
     1 u13=t2(m,m,v)%r2%q3(1,1,2)%p2(2:4),
     1 u14=t2(m,m,v)%r2%q3(1,1,2)%p3(1,1,2)(2:4),
     1 u15=t2(m,m,v)%r3(1,1,2)%q2%p2(2:4),
     1 u16=t2(m,m,v)%r3(1,1,2)%q2%p3(1,1,2)(2:4),
     1 u17=t2(m,m,v)%r3(1,1,2)%q3(1,1,2)%p2(2:4),
     1 u18=t2(m,m,v)%r3(1,1,2)%q3(1,1,2)%p3(1,1,2) (2:4)
      character(len=*),dimension(1,1,2),parameter::
     1 u21=t1%r3(m,m,v)%q2%p2(2:4),
     1 u22=t1%r3(m,m,v)%q2%p3(1,1,2)(2:4),
     1 u23=t1%r3(m,m,v)%q3(1,1,2)%p2(2:4),
     1 u24=t1%r3(m,m,v)%q3(1,1,2)%p3(1,1,2)(2:4),
     1 u25=t2(1,1,2)%r3(m,m,v)%q2%p2(2:4),
     1 u26=t2(1,1,2)%r3(m,m,v)%q2%p3(1,1,2)(2:4),
     1 u27=t2(1,1,2)%r3(m,m,v)%q3(1,1,2)%p2(2:4),
     1 u28=t2(1,1,2)%r3(m,m,v)%q3(1,1,2)%p3(1,1,2)(2:4)
      character(len=*),dimension(1,1,2),parameter::
     1 u31=t1%r2%q3(m,m,v)%p2(2:4),
     1 u32=t1%r2%q3(m,m,v)%p3(1,1,2)(2:4),
     1 u33=t1%r3(1,1,2)%q3(m,m,v)%p2(2:4),
     1 u34=t1%r3(1,1,2)%q3(m,m,v)%p3(1,1,2)(2:4),
     1 u35=t2(1,1,2)%r2%q3(m,m,v)%p2(2:4),
     1 u36=t2(1,1,2)%r2%q3(m,m,v)%p3(1,1,2)(2:4),
     1 u37=t2(1,1,2)%r3(1,1,2)%q3(m,m,v)%p2(2:4),
     1 u38=t2(1,1,2)%r3(1,1,2)%q3(m,m,v)%p3(1,1,2)(2:4)
      character(len=*),dimension(1,1,2),parameter::
     1 w01=t1%r2%q2%p3(:,:,:)(2:4),
     1 w02=t1%r2%q3(1,1,2)%p3(:,:,:)(2:4),
     1 w03=t1%r3(1,1,2)%q2%p3(:,:,:)(2:4),
     1 w04=t2(1,1,2)%r2%q2%p3(:,:,:)(2:4),
     1 w05=t1%r3(1,1,2)%q3(1,1,2)%p3(:,:,:)(2:4),
     1 w06=t2(1,1,2)%r2%q3(1,1,2)%p3(:,:,:)(2:4),
     1 w07=t2(1,1,2)%r3(1,1,2)%q2%p3(:,:,:)(2:4),
     1 w08=t2(1,1,2)%r3(1,1,2)%q3(1,1,2)%p3(:,:,:)(2:4)
      character(len=*),dimension(1,1,2),parameter::
     1 w11=t2%r2%q2%p2(2:4),
     1 w12=t2%r2%q2%p3(1,1,2)(2:4),
     1 w13=t2%r2%q3(1,1,2)%p2(2:4),
     1 w14=t2%r2%q3(1,1,2)%p3(1,1,2)(2:4),
     1 w15=t2%r3(1,1,2)%q2%p2(2:4),
     1 w16=t2%r3(1,1,2)%q2%p3(1,1,2)(2:4),
     1 w17=t2%r3(1,1,2)%q3(1,1,2)%p2(2:4),
     1 w18=t2%r3(1,1,2)%q3(1,1,2)%p3(1,1,2) (2:4)
      character(len=*),dimension(1,1,2),parameter::
     1 w21=t1%r3%q2%p2(2:4),
     1 w22=t1%r3%q2%p3(1,1,2)(2:4),
     1 w23=t1%r3%q3(1,1,2)%p2(2:4),
     1 w24=t1%r3%q3(1,1,2)%p3(1,1,2)(2:4),
     1 w25=t2(1,1,2)%r3%q2%p2(2:4),
     1 w26=t2(1,1,2)%r3%q2%p3(1,1,2)(2:4),
     1 w27=t2(1,1,2)%r3%q3(1,1,2)%p2(2:4),
     1 w28=t2(1,1,2)%r3%q3(1,1,2)%p3(1,1,2)(2:4)
      character(len=*),dimension(1,1,2),parameter::
     1 w31=t1%r2%q3%p2(2:4),
     1 w32=t1%r2%q3%p3(1,1,2)(2:4),
     1 w33=t1%r3(1,1,2)%q3%p2(2:4),
     1 w34=t1%r3(1,1,2)%q3%p3(1,1,2)(2:4),
     1 w35=t2(1,1,2)%r2%q3%p2(2:4),
     1 w36=t2(1,1,2)%r2%q3%p3(1,1,2)(2:4),
     1 w37=t2(1,1,2)%r3(1,1,2)%q3%p2(2:4),
     1 w38=t2(1,1,2)%r3(1,1,2)%q3%p3(1,1,2)(2:4)
      if(u31(1,1,1)/=t1r2q31p2.or.u31(1,1,2)/=t1r2q32p2)print *,'fail'
      if(u32(1,1,1)/=t1r2q31p32.or.u32(1,1,2)/=t1r2q32p32)print *,'fail'
      if(u33(1,1,1)/=t1r32q31p2.or.u33(1,1,2)/=t1r32q32p2)print *,'fail'
      if(u34(1,1,1)/=t1r32q31p32.or.u34(1,1,2)/=t1r32q32p32)
     1 print *,'fail'
      if(u35(1,1,1)/=t22r2q31p2.or.u35(1,1,2)/=t22r2q32p2)print *,'fail'
      if(u36(1,1,1)/=t22r2q31p32.or.u36(1,1,2)/=t22r2q32p32)
     1 print *,'fail'
      if(u37(1,1,1)/=t22r32q31p2.or.u37(1,1,2)/=t22r32q32p2)
     1 print *,'fail'
      if(u38(1,1,1)/=t22r32q31p32.or.u38(1,1,2)/=t22r32q32p32)
     1 print *,'fail'
      if(u21(1,1,1)/=t1r31q2p2.or.u21(1,1,2)/=t1r32q2p2)print *,'fail'
      if(u22(1,1,1)/=t1r31q2p32.or.u22(1,1,2)/=t1r32q2p32)print *,'fail'
      if(u23(1,1,1)/=t1r31q32p2.or.u23(1,1,2)/=t1r32q32p2)print *,'fail'
      if(u24(1,1,1)/=t1r31q32p32.or.u24(1,1,2)/=t1r32q32p32)
     1 print *,'fail'
      if(u25(1,1,1)/=t22r31q2p2.or.u25(1,1,2)/=t22r32q2p2)print *,'fail'
      if(u26(1,1,1)/=t22r31q2p32.or.u26(1,1,2)/=t22r32q2p32)
     1 print *,'fail'
      if(u27(1,1,1)/=t22r31q32p2.or.u27(1,1,2)/=t22r32q32p2)
     1 print *,'fail'
      if(u28(1,1,1)/=t22r31q32p32.or.u28(1,1,2)/=t22r32q32p32)
     1 print *,'fail'
      if(u11(1,1,1)/=t21r2q2p2.or.u11(1,1,2)/=t22r2q2p2)print *,'fail'
      if(u12(1,1,1)/=t21r2q2p32.or.u12(1,1,2)/=t22r2q2p32)print *,'fail'
      if(u13(1,1,1)/=t21r2q32p2.or.u13(1,1,2)/=t22r2q32p2)print *,'fail'
      if(u14(1,1,1)/=t21r2q32p32.or.u14(1,1,2)/=t22r2q32p32)
     1 print *,'fail'
      if(u15(1,1,1)/=t21r32q2p2.or.u15(1,1,2)/=t22r32q2p2)print *,'fail'
      if(u16(1,1,1)/=t21r32q2p32.or.u16(1,1,2)/=t22r32q2p32)
     1 print *,'fail'
      if(u17(1,1,1)/=t21r32q32p2.or.u17(1,1,2)/=t22r32q32p2)
     1 print *,'fail'
      if(u18(1,1,1)/=t21r32q32p32.or.u18(1,1,2)/=t22r32q32p32)
     1 print *,'fail'
      if(u01(1,1,1)/=t1r2q2p31.or.u01(1,1,2)/=t1r2q2p32)print *,'fail'
      if(u02(1,1,1)/=t1r2q32p31.or.u02(1,1,2)/=t1r2q32p32)
     1 print *,'fail'
      if(u03(1,1,1)/=t1r32q2p31.or.u03(1,1,2)/=t1r32q2p32)
     1 print *,'fail'
      if(u04(1,1,1)/=t22r2q2p31.or.u04(1,1,2)/=t22r2q2p32)
     1 print *,'fail'
      if(u05(1,1,1)/=t1r32q32p31.or.u05(1,1,2)/=t1r32q32p32)
     1 print *,'fail'
      if(u06(1,1,1)/=t22r2q32p31.or.u06(1,1,2)/=t22r2q32p32)
     1 print *,'fail'
      if(u07(1,1,1)/=t22r32q2p31.or.u07(1,1,2)/=t22r32q2p32)
     1 print *,'fail'
      if(u08(1,1,1)/=t22r32q32p31.or.u08(1,1,2)/=t22r32q32p32)
     1 print *,'fail'
      if(w31(1,1,1)/=t1r2q31p2.or.w31(1,1,2)/=t1r2q32p2)print *,'fail'
      if(w32(1,1,1)/=t1r2q31p32.or.w32(1,1,2)/=t1r2q32p32)print *,'fail'
      if(w33(1,1,1)/=t1r32q31p2.or.w33(1,1,2)/=t1r32q32p2)print *,'fail'
      if(w34(1,1,1)/=t1r32q31p32.or.w34(1,1,2)/=t1r32q32p32)
     1 print *,'fail'
      if(w35(1,1,1)/=t22r2q31p2.or.w35(1,1,2)/=t22r2q32p2)print *,'fail'
      if(w36(1,1,1)/=t22r2q31p32.or.w36(1,1,2)/=t22r2q32p32)
     1 print *,'fail'
      if(w37(1,1,1)/=t22r32q31p2.or.w37(1,1,2)/=t22r32q32p2)
     1 print *,'fail'
      if(w38(1,1,1)/=t22r32q31p32.or.w38(1,1,2)/=t22r32q32p32)
     1 print *,'fail'
      if(w21(1,1,1)/=t1r31q2p2.or.w21(1,1,2)/=t1r32q2p2)print *,'fail'
      if(w22(1,1,1)/=t1r31q2p32.or.w22(1,1,2)/=t1r32q2p32)print *,'fail'
      if(w23(1,1,1)/=t1r31q32p2.or.w23(1,1,2)/=t1r32q32p2)print *,'fail'
      if(w24(1,1,1)/=t1r31q32p32.or.w24(1,1,2)/=t1r32q32p32)
     1 print *,'fail'
      if(w25(1,1,1)/=t22r31q2p2.or.w25(1,1,2)/=t22r32q2p2)print *,'fail'
      if(w26(1,1,1)/=t22r31q2p32.or.w26(1,1,2)/=t22r32q2p32)
     1 print *,'fail'
      if(w27(1,1,1)/=t22r31q32p2.or.w27(1,1,2)/=t22r32q32p2)
     1 print *,'fail'
      if(w28(1,1,1)/=t22r31q32p32.or.w28(1,1,2)/=t22r32q32p32)
     1 print *,'fail'
      if(w11(1,1,1)/=t21r2q2p2.or.w11(1,1,2)/=t22r2q2p2)print *,'fail'
      if(w12(1,1,1)/=t21r2q2p32.or.w12(1,1,2)/=t22r2q2p32)print *,'fail'
      if(w13(1,1,1)/=t21r2q32p2.or.w13(1,1,2)/=t22r2q32p2)print *,'fail'
      if(w14(1,1,1)/=t21r2q32p32.or.w14(1,1,2)/=t22r2q32p32)
     1 print *,'fail'
      if(w15(1,1,1)/=t21r32q2p2.or.w15(1,1,2)/=t22r32q2p2)print *,'fail'
      if(w16(1,1,1)/=t21r32q2p32.or.w16(1,1,2)/=t22r32q2p32)
     1 print *,'fail'
      if(w17(1,1,1)/=t21r32q32p2.or.w17(1,1,2)/=t22r32q32p2)
     1 print *,'fail'
      if(w18(1,1,1)/=t21r32q32p32.or.w18(1,1,2)/=t22r32q32p32)
     1 print *,'fail'
      if(w01(1,1,1)/=t1r2q2p31.or.w01(1,1,2)/=t1r2q2p32)print *,'fail'
      if(w02(1,1,1)/=t1r2q32p31.or.w02(1,1,2)/=t1r2q32p32)print *,'fail'
      if(w03(1,1,1)/=t1r32q2p31.or.w03(1,1,2)/=t1r32q2p32)print *,'fail'
      if(w04(1,1,1)/=t22r2q2p31.or.w04(1,1,2)/=t22r2q2p32)print *,'fail'
      if(w05(1,1,1)/=t1r32q32p31.or.w05(1,1,2)/=t1r32q32p32)
     1 print *,'fail'
      if(w06(1,1,1)/=t22r2q32p31.or.w06(1,1,2)/=t22r2q32p32)
     1 print *,'fail'
      if(w07(1,1,1)/=t22r32q2p31.or.w07(1,1,2)/=t22r32q2p32)
     1 print *,'fail'
      if(w08(1,1,1)/=t22r32q32p31.or.w08(1,1,2)/=t22r32q32p32)
     1 print *,'fail'
      if (t1r2q2p2/='111a'(2:4))print *,'fail'
      if (t1r2q2p31/='111b'(2:4))print *,'fail'
      if (t1r2q2p32/='111c'(2:4))print *,'fail'
      if (t1r2q31p2/='112d'(2:4))print *,'fail'
      if (t1r2q31p31/='112e'(2:4))print *,'fail'
      if (t1r2q31p32/='112f'(2:4))print *,'fail'
      if (t1r2q32p2/='113g'(2:4))print *,'fail'
      if (t1r2q32p31/='113h'(2:4))print *,'fail'
      if (t1r2q32p32/='113i'(2:4))print *,'fail'
      if (t1r31q2p2/='121j'(2:4))print *,'fail'
      if (t1r31q2p31/='121k'(2:4))print *,'fail'
      if (t1r31q2p32/='121l'(2:4))print *,'fail'
      if (t1r31q31p2/='122m'(2:4))print *,'fail'
      if (t1r31q31p31/='122n'(2:4))print *,'fail'
      if (t1r31q31p32/='122o'(2:4))print *,'fail'
      if (t1r31q32p2/='123p'(2:4))print *,'fail'
      if (t1r31q32p31/='123q'(2:4))print *,'fail'
      if (t1r31q32p32/='123s'(2:4))print *,'fail'
      if (t1r32q2p2/='131t'(2:4))print *,'fail'
      if (t1r32q2p31/='131u'(2:4))print *,'fail'
      if (t1r32q2p32/='131v'(2:4))print *,'fail'
      if (t1r32q31p2/='132w'(2:4))print *,'fail'
      if (t1r32q31p31/='132x'(2:4))print *,'fail'
      if (t1r32q31p32/='132y'(2:4))print *,'fail'
      if (t1r32q32p2/='133z'(2:4))print *,'fail'
      if (t1r32q32p31/='133#'(2:4))print *,'fail'
      if (t1r32q32p32/='133%'(2:4))print *,'fail'
      if (t21r2q2p2/='211a'(2:4))print *,'fail'
      if (t21r2q2p31/='211b'(2:4))print *,'fail'
      if (t21r2q2p32/='211c'(2:4))print *,'fail'
      if (t21r2q31p2/='212d'(2:4))print *,'fail'
      if (t21r2q31p31/='212e'(2:4))print *,'fail'
      if (t21r2q31p32/='212f'(2:4))print *,'fail'
      if (t21r2q32p2/='213g'(2:4))print *,'fail'
      if (t21r2q32p31/='213h'(2:4))print *,'fail'
      if (t21r2q32p32/='213i'(2:4))print *,'fail'
      if (t21r31q2p2/='221j'(2:4))print *,'fail'
      if (t21r31q2p31/='221k'(2:4))print *,'fail'
      if (t21r31q2p32/='221l'(2:4))print *,'fail'
      if (t21r31q31p2/='222m'(2:4))print *,'fail'
      if (t21r31q31p31/='222n'(2:4))print *,'fail'
      if (t21r31q31p32/='222o'(2:4))print *,'fail'
      if (t21r31q32p2/='223p'(2:4))print *,'fail'
      if (t21r31q32p31/='223q'(2:4))print *,'fail'
      if (t21r31q32p32/='223s'(2:4))print *,'fail'
      if (t21r32q2p2/='231t'(2:4))print *,'fail'
      if (t21r32q2p31/='231u'(2:4))print *,'fail'
      if (t21r32q2p32/='231v'(2:4))print *,'fail'
      if (t21r32q31p2/='232w'(2:4))print *,'fail'
      if (t21r32q31p31/='232x'(2:4))print *,'fail'
      if (t21r32q31p32/='232y'(2:4))print *,'fail'
      if (t21r32q32p2/='233z'(2:4))print *,'fail'
      if (t21r32q32p31/='233#'(2:4))print *,'fail'
      if (t21r32q32p32/='233%'(2:4))print *,'fail'
      if (t22r2q2p2/='311a'(2:4))print *,'fail'
      if (t22r2q2p31/='311b'(2:4))print *,'fail'
      if (t22r2q2p32/='311c'(2:4))print *,'fail'
      if (t22r2q31p2/='312d'(2:4))print *,'fail'
      if (t22r2q31p31/='312e'(2:4))print *,'fail'
      if (t22r2q31p32/='312f'(2:4))print *,'fail'
      if (t22r2q32p2/='313g'(2:4))print *,'fail'
      if (t22r2q32p31/='313h'(2:4))print *,'fail'
      if (t22r2q32p32/='313i'(2:4))print *,'fail'
      if (t22r31q2p2/='321j'(2:4))print *,'fail'
      if (t22r31q2p31/='321k'(2:4))print *,'fail'
      if (t22r31q2p32/='321l'(2:4))print *,'fail'
      if (t22r31q31p2/='322m'(2:4))print *,'fail'
      if (t22r31q31p31/='322n'(2:4))print *,'fail'
      if (t22r31q31p32/='322o'(2:4))print *,'fail'
      if (t22r31q32p2/='323p'(2:4))print *,'fail'
      if (t22r31q32p31/='323q'(2:4))print *,'fail'
      if (t22r31q32p32/='323s'(2:4))print *,'fail'
      if (t22r32q2p2/='331t'(2:4))print *,'fail'
      if (t22r32q2p31/='331u'(2:4))print *,'fail'
      if (t22r32q2p32/='331v'(2:4))print *,'fail'
      if (t22r32q31p2/='332w'(2:4))print *,'fail'
      if (t22r32q31p31/='332x'(2:4))print *,'fail'
      if (t22r32q31p32/='332y'(2:4))print *,'fail'
      if (t22r32q32p2/='333z'(2:4))print *,'fail'
      if (t22r32q32p31/='333#'(2:4))print *,'fail'
      if (t22r32q32p32/='333%'(2:4))print *,'fail'

      end
