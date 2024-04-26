call sub01()
call sub02()
call sub03()
print *,'pass'
end

module mod002
contains
subroutine msub21()
entry msub22()
entry msub23()
call sub01()
call sub02()
end subroutine
subroutine msub2a()
call sub01()
call sub02()
end subroutine
end

module mod001
use mod002
contains
subroutine msub01()
entry msub02()
entry msub03()
end subroutine
subroutine msub0a()
if (1.eq.2) call msub21()
if (1.eq.2) call msub22()
if (1.eq.2) call msub23()
if (1.eq.2) call msub2a()
end subroutine
end

subroutine sub01()
use mod001
call msub01()
call msub02()
call msub03()
call msub0a()
end subroutine

subroutine sub02()
use mod001
call msub01()
call msub02()
call msub03()
call msub0a()
call sub01
end subroutine


subroutine sub03()
call sub_01(); call sub_02(); call sub_03(); call sub_04(); call sub_05();
call sub_06(); call sub_07(); call sub_08(); call sub_10(); call sub_11();
call sub_12(); call sub_13(); call sub_14(); call sub_15(); call sub_16();
call sub_17(); call sub_18(); 
call sub_01(); call sub_02(); call sub_03(); call sub_04(); call sub_05();
call sub_06(); call sub_07(); call sub_08(); call sub_10(); call sub_11();
call sub_12(); call sub_13(); call sub_14(); call sub_15(); call sub_16();
call sub_17(); call sub_18();
call sub_01(); call sub_02(); call sub_03(); call sub_04(); call sub_05();
call sub_06(); call sub_07(); call sub_08(); call sub_10(); call sub_11();
call sub_12(); call sub_13(); call sub_14(); call sub_15(); call sub_16();
call sub_17(); call sub_18();
call sub_01(); call sub_02(); call sub_03(); call sub_04(); call sub_05();
call sub_06(); call sub_07(); call sub_08(); call sub_10(); call sub_11();
call sub_12(); call sub_13(); call sub_14(); call sub_15(); call sub_16();
call sub_17(); call sub_18(); call sub_19();
end

module modqq
integer value
data value /1/
end
module modm3
use modqq
contains
subroutine modm3_01();value =value +1;end subroutine
end
module modm2
use modm3
contains
subroutine modm2_01();call modm3_01(); end subroutine
end
module modm1
use modm2
contains
subroutine modm1_01();call modm2_01(); end subroutine
end
module modm
use modm1
contains
subroutine modm_01();call modm1_01(); end subroutine
end
module modv
use modm
contains
subroutine modv_01();call modm_01(); end subroutine
end

module modx
use modv ;
integer,dimension(5000,1000) :: a,q,w,e,r,t,y,u,i,o
contains
subroutine modx_01(); call modx_02() ; end subroutine
subroutine modx_02(); call modx_03() ; end subroutine
subroutine modx_03(); call modx_04() ; end subroutine
subroutine modx_04(); call modx_05() ; end subroutine
subroutine modx_05(); call modx_06() ; end subroutine
subroutine modx_06(); call modx_07() ; end subroutine
subroutine modx_07(); call modx_08() ; end subroutine
subroutine modx_08(); call modx_09() ; end subroutine
subroutine modx_09(); call modx_10() ; end subroutine
subroutine modx_10(); call modx_11() ; end subroutine
subroutine modx_11(); call modx_12() ; end subroutine
subroutine modx_12(); call modx_13() ; end subroutine
subroutine modx_13(); call modx_14() ; end subroutine
subroutine modx_14(); call modx_15() ; end subroutine
subroutine modx_15(); call modx_16() ; end subroutine
subroutine modx_16(); call modx_17() ; end subroutine
subroutine modx_17(); call modx_18() ; end subroutine
subroutine modx_18(); call modx_19() ; end subroutine
subroutine modx_19(); call modx_20() ; end subroutine
subroutine modx_20(); call modv_01();end subroutine
end 
module modaa
use modx ;
contains
subroutine modaa_sub01(); call modbb_01() ;end subroutine
subroutine modaa_sub02(); call modbb_01() ;end subroutine
subroutine modaa_sub03(); call modbb_01() ;end subroutine
subroutine modaa_sub04(); call modbb_01() ;end subroutine
subroutine modaa_sub05(); call modbb_01() ;end subroutine
subroutine modaa_sub06(); call modbb_01() ;end subroutine
subroutine modaa_sub07(); call modbb_01() ;end subroutine
subroutine modaa_sub08(); call modbb_01() ;end subroutine
subroutine modaa_sub09(); call modbb_01() ;end subroutine
subroutine modaa_sub10(); call modbb_01() ;end subroutine
subroutine modbb_01 ();call modx_01();end subroutine
end

subroutine sub_01()
use modaa
call modaa_sub01(); call modaa_sub02(); call modaa_sub03();
call modaa_sub04(); call modaa_sub05(); call modaa_sub06();
call modaa_sub07(); call modaa_sub08(); call modaa_sub09();
call modaa_sub10();
end

subroutine sub_02()
use modaa
call modaa_sub01(); call modaa_sub02(); call modaa_sub03();
call modaa_sub04(); call modaa_sub05(); call modaa_sub06();
call modaa_sub07(); call modaa_sub08(); call modaa_sub09();
call modaa_sub10();
end
subroutine sub_03()
use modaa
call modaa_sub01(); call modaa_sub02(); call modaa_sub03();
call modaa_sub04(); call modaa_sub05(); call modaa_sub06();
call modaa_sub07(); call modaa_sub08(); call modaa_sub09();
call modaa_sub10();
end
subroutine sub_04()
use modaa
call modaa_sub01(); call modaa_sub02(); call modaa_sub03();
call modaa_sub04(); call modaa_sub05(); call modaa_sub06();
call modaa_sub07(); call modaa_sub08(); call modaa_sub09();
call modaa_sub10();
end
subroutine sub_05()
use modaa
call modaa_sub01(); call modaa_sub02(); call modaa_sub03();
call modaa_sub04(); call modaa_sub05(); call modaa_sub06();
call modaa_sub07(); call modaa_sub08(); call modaa_sub09();
call modaa_sub10();
end
subroutine sub_06()
use modaa
call modaa_sub01(); call modaa_sub02(); call modaa_sub03();
call modaa_sub04(); call modaa_sub05(); call modaa_sub06();
call modaa_sub07(); call modaa_sub08(); call modaa_sub09();
call modaa_sub10();
end
subroutine sub_07()
use modaa
call modaa_sub01(); call modaa_sub02(); call modaa_sub03();
call modaa_sub04(); call modaa_sub05(); call modaa_sub06();
call modaa_sub07(); call modaa_sub08(); call modaa_sub09();
call modaa_sub10();
end
subroutine sub_08()
use modaa
call modaa_sub01(); call modaa_sub02(); call modaa_sub03();
call modaa_sub04(); call modaa_sub05(); call modaa_sub06();
call modaa_sub07(); call modaa_sub08(); call modaa_sub09();
call modaa_sub10();
end
subroutine sub_09()
use modaa
call modaa_sub01(); call modaa_sub02(); call modaa_sub03();
call modaa_sub04(); call modaa_sub05(); call modaa_sub06();
call modaa_sub07(); call modaa_sub08(); call modaa_sub09();
call modaa_sub10();
end
subroutine sub_10()
use modaa
call modaa_sub01(); call modaa_sub02(); call modaa_sub03();
call modaa_sub04(); call modaa_sub05(); call modaa_sub06();
call modaa_sub07(); call modaa_sub08(); call modaa_sub09();
call modaa_sub10();
end
subroutine sub_11()
use modaa
call modaa_sub01(); call modaa_sub02(); call modaa_sub03();
call modaa_sub04(); call modaa_sub05(); call modaa_sub06();
call modaa_sub07(); call modaa_sub08(); call modaa_sub09();
call modaa_sub10();
end
subroutine sub_12()
use modaa
call modaa_sub01(); call modaa_sub02(); call modaa_sub03();
call modaa_sub04(); call modaa_sub05(); call modaa_sub06();
call modaa_sub07(); call modaa_sub08(); call modaa_sub09();
call modaa_sub10();
end
subroutine sub_13()
use modaa
call modaa_sub01(); call modaa_sub02(); call modaa_sub03();
call modaa_sub04(); call modaa_sub05(); call modaa_sub06();
call modaa_sub07(); call modaa_sub08(); call modaa_sub09();
call modaa_sub10();
end
subroutine sub_14()
use modaa
call modaa_sub01(); call modaa_sub02(); call modaa_sub03();
call modaa_sub04(); call modaa_sub05(); call modaa_sub06();
call modaa_sub07(); call modaa_sub08(); call modaa_sub09();
call modaa_sub10();
end
subroutine sub_15()
use modaa
call modaa_sub01(); call modaa_sub02(); call modaa_sub03();
call modaa_sub04(); call modaa_sub05(); call modaa_sub06();
call modaa_sub07(); call modaa_sub08(); call modaa_sub09();
call modaa_sub10();
end
subroutine sub_16()
use modaa
call modaa_sub01(); call modaa_sub02(); call modaa_sub03();
call modaa_sub04(); call modaa_sub05(); call modaa_sub06();
call modaa_sub07(); call modaa_sub08(); call modaa_sub09();
call modaa_sub10();
end
subroutine sub_17()
use modaa
call modaa_sub01(); call modaa_sub02(); call modaa_sub03();
call modaa_sub04(); call modaa_sub05(); call modaa_sub06();
call modaa_sub07(); call modaa_sub08(); call modaa_sub09();
call modaa_sub10();
end
subroutine sub_18()
use modaa
call modaa_sub01(); call modaa_sub02(); call modaa_sub03();
call modaa_sub04(); call modaa_sub05(); call modaa_sub06();
call modaa_sub07(); call modaa_sub08(); call modaa_sub09();
call modaa_sub10();
end
subroutine sub_19()
use modaa
call modaa_sub01(); call modaa_sub02(); call modaa_sub03();
call modaa_sub04(); call modaa_sub05(); call modaa_sub06();
call modaa_sub07(); call modaa_sub08(); call modaa_sub09();
call modaa_sub10();
if (value .ne.691) print *,'ng'
end
