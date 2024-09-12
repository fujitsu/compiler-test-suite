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
end
module m11
use m0;use m1;use m2;use m3;use m4;use m5;use m6;use m7;use m8;use m9
end
module m12
use m0;use m1;use m2;use m3;use m4;use m5;use m6;use m7;use m8;use m9
end
module m13
use m0;use m1;use m2;use m3;use m4;use m5;use m6;use m7;use m8;use m9
end
module m14
use m0;use m1;use m2;use m3;use m4;use m5;use m6;use m7;use m8;use m9
end
module m15
use m0;use m1;use m2;use m3;use m4;use m5;use m6;use m7;use m8;use m9
end
module m16
use m0;use m1;use m2;use m3;use m4;use m5;use m6;use m7;use m8;use m9
end
module m17
use m0;use m1;use m2;use m3;use m4;use m5;use m6;use m7;use m8;use m9
end
module m18
use m0;use m1;use m2;use m3;use m4;use m5;use m6;use m7;use m8;use m9
end
module m19
use m0;use m1;use m2;use m3;use m4;use m5;use m6;use m7;use m8;use m9
end
module m100
use m0;use m1;use m2;use m3;use m4;use m5;use m6;use m7;use m8;use m9
use m10;use m11;use m12;use m13;use m14;use m15;use m16;use m17;use m18;use m19
end
use m100
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
         print*,"pass"
        end

