        module mod
         contains
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
    use m0
    use m1
    use m2
    use m3
    use m4
    use m5
    use m6
    use m7
    use m8
    use m9
end
use m10
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
