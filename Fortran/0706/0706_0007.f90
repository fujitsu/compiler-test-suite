c
c ow =g1128
c
      call s1
      print *,'pass'
      end
      subroutine s1
      integer,parameter::w=1,q=2,u=-1
      integer,parameter::       v211=q,v121=3,v221=4,
     1                   v112=5,v212=6,v122=7,v222=8
      integer,parameter,dimension(2)::f1=(/q,-u/)
      integer,parameter,dimension(2)::f2=(/1,q/)
      integer,parameter,dimension(3)::sh=(/q,q,q/)
      integer,parameter,dimension(8)::v=(/-u,q,3,4,5,6,7,8/)
      integer,parameter,dimension(2,2,2)::a=reshape(shape=sh,source=v)
c     integer,parameter,dimension(2,2,2)::a=reshape(v,sh)
      integer,parameter,dimension(2,2):: j01=a(f1,w:q   ,q)
      integer,parameter,dimension(2,2):: j02=a(f1,q:1:u,q)
      integer,parameter,dimension(2,2):: j03=a(f1, :    ,q)
      integer,parameter,dimension(2,2):: j04=a(f1, : :w ,q)
      integer,parameter,dimension(2,2):: j05=a(f1,w: :w ,q)
      integer,parameter,dimension(2,2):: j06=a(f1, :q:w ,q)
      integer,parameter,dimension(2,2):: j11=a(w:q   ,q,f1)
      integer,parameter,dimension(2,2):: j12=a(q:w:u,q,f1)
      integer,parameter,dimension(2,2):: j13=a( :    ,q,f1)
      integer,parameter,dimension(2,2):: j14=a( : :w ,q,f1)
      integer,parameter,dimension(2,2):: j15=a(w: :w ,q,f1)
      integer,parameter,dimension(2,2):: j16=a( :q:w ,q,f1)
      integer,parameter,dimension(2,2):: j21=a(q,f1,w:q   )
      integer,parameter,dimension(2,2):: j22=a(q,f1,q:w:u)
      integer,parameter,dimension(2,2):: j23=a(q,f1, :    )
      integer,parameter,dimension(2,2):: j24=a(q,f1, : : w)
      integer,parameter,dimension(2,2):: j25=a(q,f1,w: : w)
      integer,parameter,dimension(2,2):: j26=a(q,f1, :q: w)
      integer,parameter,dimension(2,2):: j31=a(q,f1,f2)
      integer,parameter,dimension(2,2):: j32=a(q,f1,f1)
      integer,parameter,dimension(2,2):: j33=a(f2,q,f1)
      integer,parameter,dimension(2,2):: j34=a(f1,q,f1)
      integer,parameter,dimension(2,2):: j35=a(f1,f2,q)
      integer,parameter,dimension(2,2):: j36=a(f1,f1,q)
      integer,parameter,dimension(2,2):: j41=a(q:w:u,w:q   ,q)
      integer,parameter,dimension(2,2):: j42=a(q:w:u,q:w:u,q)
      integer,parameter,dimension(2,2):: j43=a(q:w:u, :    ,q)
      integer,parameter,dimension(2,2):: j44=a(q:w:u, : :w ,q)
      integer,parameter,dimension(2,2):: j45=a(q:w:u,w: :w ,q)
      integer,parameter,dimension(2,2):: j46=a(q:w:u, :q:w ,q)
      integer,parameter,dimension(2,2):: j51=a(w:q   ,q,q:w:u)
      integer,parameter,dimension(2,2):: j52=a(q:w:u,q,q:w:u)
      integer,parameter,dimension(2,2):: j53=a( :    ,q,q:w:u)
      integer,parameter,dimension(2,2):: j54=a( : :w ,q,q:w:u)
      integer,parameter,dimension(2,2):: j55=a(w: :w ,q,q:w:u)
      integer,parameter,dimension(2,2):: j56=a( :q:w ,q,q:w:u)
      if (j51(w,-u)/=v122 .or. j51(2,1)/=v222 .or.
     1    j51(w,2)/=v121 .or. j51(2,2)/=v221)call errtra
      if (j52(w,1)/=v222 .or. j52(2,1)/=v122 .or.
     1    j52(w,2)/=v221 .or. j52(2,2)/=v121)call errtra
      if (j53(w,1)/=v122 .or. j53(2,1)/=v222 .or.
     1    j53(w,2)/=v121 .or. j53(2,2)/=v221)call errtra
      if (j54(w,1)/=v122 .or. j54(2,1)/=v222 .or.
     1    j54(w,2)/=v121 .or. j54(2,2)/=v221)call errtra
      if (j55(1,1)/=v122 .or. j55(2,1)/=v222 .or.
     1    j55(1,2)/=v121 .or. j55(2,2)/=v221)call errtra
      if (j56(1,1)/=v122 .or. j56(2,1)/=v222 .or.
     1    j56(1,2)/=v121 .or. j56(2,2)/=v221)call errtra
      if (j41(1,1)/=v212 .or. j41(2,1)/=v112 .or.
     1    j41(1,2)/=v222 .or. j41(2,2)/=v122)call errtra
      if (j42(1,1)/=v222 .or. j42(2,1)/=v122 .or. 
     1    j42(1,2)/=v212 .or. j42(2,2)/=v112)call errtra
      if (j43(1,1)/=v212 .or. j43(2,1)/=v112 .or.
     1    j43(1,2)/=v222 .or. j43(2,2)/=v122)call errtra
      if (j44(1,1)/=v212 .or. j44(2,1)/=v112 .or.
     1    j44(1,2)/=v222 .or. j44(2,2)/=v122)call errtra
      if (j45(1,1)/=v212 .or. j45(2,1)/=v112 .or.
     1    j45(1,2)/=v222 .or. j45(2,2)/=v122)call errtra
      if (j46(1,1)/=v212 .or. j46(2,1)/=v112 .or.
     1    j46(1,2)/=v222 .or. j46(2,2)/=v122)call errtra
      if (j31(1,1)/=v221 .or. j31(2,1)/=v211 .or.
     1    j31(1,2)/=v222 .or. j31(2,2)/=v212)call errtra
      if (j32(1,1)/=v222 .or. j32(2,1)/=v212 .or.
     1    j32(1,2)/=v221 .or. j32(2,2)/=v211)call errtra
      if (j33(1,1)/=v122 .or. j33(2,1)/=v222 .or.
     1    j33(1,2)/=v121 .or. j33(2,2)/=v221)call errtra
      if (j34(1,1)/=v222 .or. j34(2,1)/=v122 .or.
     1    j34(1,2)/=v221 .or. j34(2,2)/=v121)call errtra
      if (j35(1,1)/=v212 .or. j35(2,1)/=v112 .or.
     1    j35(1,2)/=v222 .or. j35(2,2)/=v122)call errtra
      if (j36(1,1)/=v222 .or. j36(2,1)/=v122 .or. 
     1    j36(1,2)/=v212 .or. j36(2,2)/=v112)call errtra
      if (j21(1,1)/=v221 .or. j21(2,1)/=v211 .or.
     1    j21(1,2)/=v222 .or. j21(2,2)/=v212)call errtra
      if (j22(1,1)/=v222 .or. j22(2,1)/=v212 .or.
     1    j22(1,2)/=v221 .or. j22(2,2)/=v211)call errtra
      if (j23(1,1)/=v221 .or. j23(2,1)/=v211 .or.
     1    j23(1,2)/=v222 .or. j23(2,2)/=v212)call errtra
      if (j24(1,1)/=v221 .or. j24(2,1)/=v211 .or.
     1    j24(1,2)/=v222 .or. j24(2,2)/=v212)call errtra
      if (j25(1,1)/=v221 .or. j25(2,1)/=v211 .or.
     1    j25(1,2)/=v222 .or. j25(2,2)/=v212)call errtra
      if (j26(1,1)/=v221 .or. j26(2,1)/=v211 .or.
     1    j26(1,2)/=v222 .or. j26(2,2)/=v212)call errtra
      if (j11(1,1)/=v122 .or. j11(2,1)/=v222 .or.
     1    j11(1,2)/=v121 .or. j11(2,2)/=v221)call errtra
      if (j12(1,1)/=v222 .or. j12(2,1)/=v122 .or.
     1    j12(1,2)/=v221 .or. j12(2,2)/=v121)call errtra
      if (j13(1,1)/=v122 .or. j13(2,1)/=v222 .or.
     1    j13(1,2)/=v121 .or. j13(2,2)/=v221)call errtra
      if (j14(1,1)/=v122 .or. j14(2,1)/=v222 .or.
     1    j14(1,2)/=v121 .or. j14(2,2)/=v221)call errtra
      if (j15(1,1)/=v122 .or. j15(2,1)/=v222 .or.
     1    j15(1,2)/=v121 .or. j15(2,2)/=v221)call errtra
      if (j16(1,1)/=v122 .or. j16(2,1)/=v222 .or.
     1    j16(1,2)/=v121 .or. j16(2,2)/=v221)call errtra
      if (j01(1,1)/=v212 .or. j01(2,1)/=v112 .or.
     1    j01(1,2)/=v222 .or. j01(2,2)/=v122)call errtra
      if (j02(1,1)/=v222 .or. j02(2,1)/=v122 .or. 
     1    j02(1,2)/=v212 .or. j02(2,2)/=v112)call errtra
      if (j03(1,1)/=v212 .or. j03(2,1)/=v112 .or.
     1    j03(1,2)/=v222 .or. j03(2,2)/=v122)call errtra
      if (j04(1,1)/=v212 .or. j04(2,1)/=v112 .or.
     1    j04(1,2)/=v222 .or. j04(2,2)/=v122)call errtra
      if (j05(1,1)/=v212 .or. j05(2,1)/=v112 .or.
     1    j05(1,2)/=v222 .or. j05(2,2)/=v122)call errtra
      if (j06(1,1)/=v212 .or. j06(2,1)/=v112 .or.
     1    j06(1,2)/=v222 .or. j06(2,2)/=v122)call errtra
c     print *,'ia2=',ia2
c     print *,'jb1=',jb1
      end
