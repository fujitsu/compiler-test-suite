        module mox
interface mox_gen01; procedure::g00,g01,g02,g03,g04,g05,g06,g07,g08,g09; end interface
interface mox_gen02; procedure::g00,g01,g02,g03,g04,g05,g06,g07,g08,g09; end interface
interface mox_gen03; procedure::g00,g01,g02,g03,g04,g05,g06,g07,g08,g09; end interface
interface mox_gen04; procedure::g00,g01,g02,g03,g04,g05,g06,g07,g08,g09; end interface
interface mox_gen05; procedure::g00,g01,g02,g03,g04,g05,g06,g07,g08,g09; end interface
interface mox_gen06; procedure::g00,g01,g02,g03,g04,g05,g06,g07,g08,g09; end interface
interface mox_gen07; procedure::g00,g01,g02,g03,g04,g05,g06,g07,g08,g09; end interface
interface mox_gen08; procedure::g00,g01,g02,g03,g04,g05,g06,g07,g08,g09; end interface
interface mox_gen09; procedure::g00,g01,g02,g03,g04,g05,g06,g07,g08,g09; end interface
interface mox_gen11; procedure::g00,g01,g02,g03,g04,g05,g06,g07,g08,g09; end interface
interface mox_gen12; procedure::g00,g01,g02,g03,g04,g05,g06,g07,g08,g09; end interface
interface mox_gen13; procedure::g00,g01,g02,g03,g04,g05,g06,g07,g08,g09; end interface
interface mox_gen14; procedure::g00,g01,g02,g03,g04,g05,g06,g07,g08,g09; end interface
interface mox_gen15; procedure::g00,g01,g02,g03,g04,g05,g06,g07,g08,g09; end interface
interface mox_gen16; procedure::g00,g01,g02,g03,g04,g05,g06,g07,g08,g09; end interface
interface mox_gen17; procedure::g00,g01,g02,g03,g04,g05,g06,g07,g08,g09; end interface
interface mox_gen18; procedure::g00,g01,g02,g03,g04,g05,g06,g07,g08,g09; end interface
interface mox_gen19; procedure::g00,g01,g02,g03,g04,g05,g06,g07,g08,g09; end interface
interface mox_gen21; procedure::g00,g01,g02,g03,g04,g05,g06,g07,g08,g09; end interface
interface mox_gen22; procedure::g00,g01,g02,g03,g04,g05,g06,g07,g08,g09; end interface
interface mox_gen23; procedure::g00,g01,g02,g03,g04,g05,g06,g07,g08,g09; end interface
interface mox_gen24; procedure::g00,g01,g02,g03,g04,g05,g06,g07,g08,g09; end interface
interface mox_gen25; procedure::g00,g01,g02,g03,g04,g05,g06,g07,g08,g09; end interface
interface mox_gen26; procedure::g00,g01,g02,g03,g04,g05,g06,g07,g08,g09; end interface
interface mox_gen27; procedure::g00,g01,g02,g03,g04,g05,g06,g07,g08,g09; end interface
interface mox_gen28; procedure::g00,g01,g02,g03,g04,g05,g06,g07,g08,g09; end interface
interface mox_gen29; procedure::g00,g01,g02,g03,g04,g05,g06,g07,g08,g09; end interface
type y01
  integer::f00,f01,f02,f03,f04,f05,f06,f07,f08,f09
  integer::f10,f11,f12,f13,f14,f15,f16,f17,f18,f19
  contains; procedure::q001=>w001; generic::g001=>q001
end type
type(y01):: vv00,vv01,vv02,vv03,vv04,vv05,vv06,vv07,vv08,vv09
type y02
  integer::f00,f01,f02,f03,f04,f05,f06,f07,f08,f09
  integer::f10,f11,f12,f13,f14,f15,f16,f17,f18,f19
  contains; procedure::q002=>w002; generic::g002=>q002
end type
type(y02):: vv10,vv11,vv12,vv13,vv14,vv15,vv16,vv17,vv18,vv19
  contains
   function w001(t) result(r)
   class(y01),intent(in)::t
   end
   function w002(t) result(r)
   class(y02),intent(in)::t
   end
   function g00() result(r); r= 1; end function
   function g01(k01) result(r); r= 1; end function
   function g02(k01,k02) result(r); r= 1; end function
   function g03(k01,k02,k03) result(r); r= 1; end function
   function g04(k01,k02,k03,k04) result(r); r= 1; end function
   function g05(k01,k02,k03,k04,k05) result(r); r= 1; end function
   function g06(k01,k02,k03,k04,k05,k06) result(r); r= 1; end function
   function g07(k01,k02,k03,k04,k05,k06,k07) result(r); r= 1; end function
   function g08(k01,k02,k03,k04,k05,k06,k07,k08) result(r); r= 1; end function
   function g09(k01,k02,k03,k04,k05,k06,k07,k08,k09) result(r); r= 1; end function
        end
        module mod
interface mod_gen01; procedure::f00,f01,f02,f03,f04,f05,f06,f07,f08,f09; end interface
interface mod_gen02; procedure::f00,f01,f02,f03,f04,f05,f06,f07,f08,f09; end interface
interface mod_gen03; procedure::f00,f01,f02,f03,f04,f05,f06,f07,f08,f09; end interface
interface mod_gen04; procedure::f00,f01,f02,f03,f04,f05,f06,f07,f08,f09; end interface
interface mod_gen05; procedure::f00,f01,f02,f03,f04,f05,f06,f07,f08,f09; end interface
interface mod_gen06; procedure::f00,f01,f02,f03,f04,f05,f06,f07,f08,f09; end interface
interface mod_gen07; procedure::f00,f01,f02,f03,f04,f05,f06,f07,f08,f09; end interface
interface mod_gen08; procedure::f00,f01,f02,f03,f04,f05,f06,f07,f08,f09; end interface
interface mod_gen09; procedure::f00,f01,f02,f03,f04,f05,f06,f07,f08,f09; end interface
type t01
  integer::f00,f01,f02,f03,f04,f05,f06,f07,f08,f09
  integer::f10,f11,f12,f13,f14,f15,f16,f17,f18,f19
  contains; procedure::q01=>w01; generic::g01=>q01
end type
type(t01):: v00,v01,v02,v03,v04,v05,v06,v07,v08,v09
type t02
  integer::f00,f01,f02,f03,f04,f05,f06,f07,f08,f09
  integer::f10,f11,f12,f13,f14,f15,f16,f17,f18,f19
  contains; procedure::q02=>w02; generic::g02=>q02
end type
type(t02):: v10,v11,v12,v13,v14,v15,v16,v17,v18,v19
  contains
   function w01(t) result(r)
   class(t01),intent(in)::t
   end
   function w02(t) result(r)
   class(t02),intent(in)::t
   end
   function f00() result(r); r= 1; end function
   function f01(k01) result(r); r= 1; end function
   function f02(k01,k02) result(r); r= 1; end function
   function f03(k01,k02,k03) result(r); r= 1; end function
   function f04(k01,k02,k03,k04) result(r); r= 1; end function
   function f05(k01,k02,k03,k04,k05) result(r); r= 1; end function
   function f06(k01,k02,k03,k04,k05,k06) result(r); r= 1; end function
   function f07(k01,k02,k03,k04,k05,k06,k07) result(r); r= 1; end function
   function f08(k01,k02,k03,k04,k05,k06,k07,k08) result(r); r= 1; end function
   function f09(k01,k02,k03,k04,k05,k06,k07,k08,k09) result(r); r= 1; end function
        end
        module m0
         use mod; private; public::gen; interface gen
            procedure::f00
          end interface
        end
        module m1
         use mod; private; public::gen; interface gen
            procedure::f01
          end interface
        end
        module m2
         use mod; private; public::gen; interface gen
            procedure::f02
          end interface
        end
        module m3
         use mod; private; public::gen; interface gen
            procedure::f03
          end interface
        end
        module m4
         use mod; private; public::gen; interface gen
            procedure::f04
          end interface
        end
        module m5
         use mod; private; public::gen; interface gen
            procedure::f05
          end interface
        end
        module m6
         use mod; private; public::gen; interface gen
            procedure::f06
          end interface
        end
        module m7
         use mod; private; public::gen; interface gen
            procedure::f07
          end interface
        end
        module m8
         use mod; private; public::gen; interface gen
            procedure::f08
          end interface
        end
        module m9
         use mod; private; public::gen; interface gen
            procedure::f09
          end interface
        end
module m10
use m0;use m1;use m2;use m3;use m4;use m5;use m6;use m7;use m8;use m9
use mox
private; public::gen,genx
         interface genx
            procedure::g00
          end interface
integer::k
end
module m11
use m0;use m1;use m2;use m3;use m4;use m5;use m6;use m7;use m8;use m9
use mox
private; public::gen,genx
         interface genx
            procedure::g01
          end interface
integer::k
end
module m12
use m0;use m1;use m2;use m3;use m4;use m5;use m6;use m7;use m8;use m9
use mox
private; public::gen,genx
         interface genx
            procedure::g02
          end interface
end
module m13
use m0;use m1;use m2;use m3;use m4;use m5;use m6;use m7;use m8;use m9
use mox
private; public::gen,genx
         interface genx
            procedure::g03
          end interface
end
module m14
use m0;use m1;use m2;use m3;use m4;use m5;use m6;use m7;use m8;use m9
use mox
private; public::gen,genx
         interface genx
            procedure::g04
          end interface
end
module m15
use m0;use m1;use m2;use m3;use m4;use m5;use m6;use m7;use m8;use m9
use mox
private; public::gen,genx
         interface genx
            procedure::g05
          end interface
end
module m16
use m0;use m1;use m2;use m3;use m4;use m5;use m6;use m7;use m8;use m9
use mox
private; public::gen,genx
         interface genx
            procedure::g06
          end interface
end
module m17
use m0;use m1;use m2;use m3;use m4;use m5;use m6;use m7;use m8;use m9
use mox
private; public::gen,genx
         interface genx
            procedure::g07
          end interface
end
module m18
use m0;use m1;use m2;use m3;use m4;use m5;use m6;use m7;use m8;use m9
use mox
private; public::gen,genx
         interface genx
            procedure::g08
          end interface
end
module m19
use m0;use m1;use m2;use m3;use m4;use m5;use m6;use m7;use m8;use m9
use mox
private; public::gen,genx
         interface genx
            procedure::g09
          end interface
end
module m100
use m0;use m1;use m2;use m3;use m4;use m5;use m6;use m7;use m8;use m9
use m10;use m11;use m12;use m13;use m14;use m15;use m16;use m17;use m18;use m19
private; public::gen,f00,f01,f02,f03,f04,f05,f06,f07,f08,f09
 public::genx,g00,g01,g02,g03,g04,g05,g06,g07,g08,g09
end
module m101
use m0;use m1;use m2;use m3;use m4;use m5;use m6;use m7;use m8;use m9
use m10;use m11;use m12;use m13;use m14;use m15;use m16;use m17;use m18;use m19
private; public::gen,f00,f01,f02,f03,f04,f05,f06,f07,f08,f09
 public::genx,g00,g01,g02,g03,g04,g05,g06,g07,g08,g09
end
module m102
use m0;use m1;use m2;use m3;use m4;use m5;use m6;use m7;use m8;use m9
use m10;use m11;use m12;use m13;use m14;use m15;use m16;use m17;use m18;use m19
private; public::gen,f00,f01,f02,f03,f04,f05,f06,f07,f08,f09
 public::genx,g00,g01,g02,g03,g04,g05,g06,g07,g08,g09
end
module m103
use m0;use m1;use m2;use m3;use m4;use m5;use m6;use m7;use m8;use m9
use m10;use m11;use m12;use m13;use m14;use m15;use m16;use m17;use m18;use m19
private; public::gen,f00,f01,f02,f03,f04,f05,f06,f07,f08,f09
 public::genx,g00,g01,g02,g03,g04,g05,g06,g07,g08,g09
end
module m104
use m0;use m1;use m2;use m3;use m4;use m5;use m6;use m7;use m8;use m9
use m10;use m11;use m12;use m13;use m14;use m15;use m16;use m17;use m18;use m19
private; public::gen,f00,f01,f02,f03,f04,f05,f06,f07,f08,f09
 public::genx,g00,g01,g02,g03,g04,g05,g06,g07,g08,g09
end
module m105
use m0;use m1;use m2;use m3;use m4;use m5;use m6;use m7;use m8;use m9
use m10;use m11;use m12;use m13;use m14;use m15;use m16;use m17;use m18;use m19
private; public::gen,f00,f01,f02,f03,f04,f05,f06,f07,f08,f09
 public::genx,g00,g01,g02,g03,g04,g05,g06,g07,g08,g09
end
module m106
use m0;use m1;use m2;use m3;use m4;use m5;use m6;use m7;use m8;use m9
use m10;use m11;use m12;use m13;use m14;use m15;use m16;use m17;use m18;use m19
private; public::gen,f00,f01,f02,f03,f04,f05,f06,f07,f08,f09
 public::genx,g00,g01,g02,g03,g04,g05,g06,g07,g08,g09
end
module m107
use m0;use m1;use m2;use m3;use m4;use m5;use m6;use m7;use m8;use m9
use m10;use m11;use m12;use m13;use m14;use m15;use m16;use m17;use m18;use m19
private; public::gen,f00,f01,f02,f03,f04,f05,f06,f07,f08,f09
 public::genx,g00,g01,g02,g03,g04,g05,g06,g07,g08,g09
end
module m108
use m0;use m1;use m2;use m3;use m4;use m5;use m6;use m7;use m8;use m9
use m10;use m11;use m12;use m13;use m14;use m15;use m16;use m17;use m18;use m19
private; public::gen,f00,f01,f02,f03,f04,f05,f06,f07,f08,f09
 public::genx,g00,g01,g02,g03,g04,g05,g06,g07,g08,g09
end
module m109
use m0;use m1;use m2;use m3;use m4;use m5;use m6;use m7;use m8;use m9
use m10;use m11;use m12;use m13;use m14;use m15;use m16;use m17;use m18;use m19
private; public::gen,f00,f01,f02,f03,f04,f05,f06,f07,f08,f09
 public::genx,g00,g01,g02,g03,g04,g05,g06,g07,g08,g09
end
module m110
use m0;use m1;use m2;use m3;use m4;use m5;use m6;use m7;use m8;use m9
use m10;use m11;use m12;use m13;use m14;use m15;use m16;use m17;use m18;use m19
private; public::gen,f00,f01,f02,f03,f04,f05,f06,f07,f08,f09
 public::genx,g00,g01,g02,g03,g04,g05,g06,g07,g08,g09
end
module m1000
use m100; use m101; use m102; ;use m103 ;use m104 ;use m105 ;use m106 ;use m107 ;use m108 ;use m109 ;use m110
private; public::gen,genx
end 
module m1001
use m100; use m101; use m102; ;use m103 ;use m104 ;use m105 ;use m106 ;use m107 ;use m108 ;use m109 ;use m110
private; public::gen,genx
end 
module m1002
use m100; use m101; use m102; ;use m103 ;use m104 ;use m105 ;use m106 ;use m107 ;use m108 ;use m109 ;use m110
private; public::gen,genx
end 
module m1003
use m100; use m101; use m102; ;use m103 ;use m104 ;use m105 ;use m106 ;use m107 ;use m108 ;use m109 ;use m110
private; public::gen,genx
end 
module m1004
use m100; use m101; use m102; ;use m103 ;use m104 ;use m105 ;use m106 ;use m107 ;use m108 ;use m109 ;use m110
private; public::gen,genx
end 
module m1005
use m100; use m101; use m102; ;use m103 ;use m104 ;use m105 ;use m106 ;use m107 ;use m108 ;use m109 ;use m110
private; public::gen,genx
end 
module m1006
use m100; use m101; use m102; ;use m103 ;use m104 ;use m105 ;use m106 ;use m107 ;use m108 ;use m109 ;use m110
private; public::gen,genx
end 
module m1007
use m100; use m101; use m102; ;use m103 ;use m104 ;use m105 ;use m106 ;use m107 ;use m108 ;use m109 ;use m110
private; public::gen,genx
end 
module m1008
use m100; use m101; use m102; ;use m103 ;use m104 ;use m105 ;use m106 ;use m107 ;use m108 ;use m109 ;use m110
private; public::gen,genx
end 
module m1009
use m100; use m101; use m102; ;use m103 ;use m104 ;use m105 ;use m106 ;use m107 ;use m108 ;use m109 ;use m110
private; public::gen,genx
end 
module m1010
use m100; use m101; use m102; ;use m103 ;use m104 ;use m105 ;use m106 ;use m107 ;use m108 ;use m109 ;use m110
private; public::gen,genx
end 
module m10000
use m1000; use m1001; use m1002; ;use m1003 ;use m1004 ;use m1005 ;use m1006 ;use m1007 ;use m1008 ;use m1009 ;use m1010
private; public::gen,genx
end 
module m10001
use m1000; use m1001; use m1002; ;use m1003 ;use m1004 ;use m1005 ;use m1006 ;use m1007 ;use m1008 ;use m1009 ;use m1010
private; public::gen,genx
end 
module m10002
use m1000; use m1001; use m1002; ;use m1003 ;use m1004 ;use m1005 ;use m1006 ;use m1007 ;use m1008 ;use m1009 ;use m1010
private; public::gen,genx
end 
module m10003
use m1000; use m1001; use m1002; ;use m1003 ;use m1004 ;use m1005 ;use m1006 ;use m1007 ;use m1008 ;use m1009 ;use m1010
private; public::gen,genx
end 
module m10004
use m1000; use m1001; use m1002; ;use m1003 ;use m1004 ;use m1005 ;use m1006 ;use m1007 ;use m1008 ;use m1009 ;use m1010
private; public::gen,genx
end 
module m10005
use m1000; use m1001; use m1002; ;use m1003 ;use m1004 ;use m1005 ;use m1006 ;use m1007 ;use m1008 ;use m1009 ;use m1010
private; public::gen,genx
end 
module m10006
use m1000; use m1001; use m1002; ;use m1003 ;use m1004 ;use m1005 ;use m1006 ;use m1007 ;use m1008 ;use m1009 ;use m1010
private; public::gen,genx
end 
module m10007
use m1000; use m1001; use m1002; ;use m1003 ;use m1004 ;use m1005 ;use m1006 ;use m1007 ;use m1008 ;use m1009 ;use m1010
private; public::gen,genx
end 
module m10008
use m1000; use m1001; use m1002; ;use m1003 ;use m1004 ;use m1005 ;use m1006 ;use m1007 ;use m1008 ;use m1009 ;use m1010
private; public::gen,genx
end 
module m10009
use m1000; use m1001; use m1002; ;use m1003 ;use m1004 ;use m1005 ;use m1006 ;use m1007 ;use m1008 ;use m1009 ;use m1010
private; public::gen,genx
end 
module m10010
use m1000; use m1001; use m1002; ;use m1003 ;use m1004 ;use m1005 ;use m1006 ;use m1007 ;use m1008 ;use m1009 ;use m1010
private; public::gen,genx
end 
module m100000
use m10000; use m10001; use m10002; ;use m10003 ;use m10004 ;use m10005 ;use m10006 ;use m10007 ;use m10008 ;use m10009 ;use m10010
private; public::gen,genx
end 
use m100000
         implicit none
        if (gen()/=1) print *,101
        if (gen(1)/=1) print *,102
        if (gen(1,1)/=1) print *,102
        if (gen(1,1,1)/=1) print *,102
        if (gen(1,1,1,1)/=1) print *,102
        if (gen(1,1,1,1,1)/=1) print *,102
        if (gen(1,1,1,1,1,1)/=1) print *,102
        if (gen(1,1,1,1,1,1,1)/=1) print *,102
        if (gen(1,1,1,1,1,1,1,1)/=1) print *,102
        if (gen(1,1,1,1,1,1,1,1,1)/=1) print *,102
        if (genx()/=1) print *,101
        if (genx(1)/=1) print *,102
        if (genx(1,1)/=1) print *,102
        if (genx(1,1,1)/=1) print *,102
        if (genx(1,1,1,1)/=1) print *,102
        if (genx(1,1,1,1,1)/=1) print *,102
        if (genx(1,1,1,1,1,1)/=1) print *,102
        if (genx(1,1,1,1,1,1,1)/=1) print *,102
        if (genx(1,1,1,1,1,1,1,1)/=1) print *,102
        if (genx(1,1,1,1,1,1,1,1,1)/=1) print *,102
         print*,"pass"
        end

