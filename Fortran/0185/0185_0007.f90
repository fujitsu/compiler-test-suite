  module mod
        type TAG
        integer,pointer:: p01(:,:,:,:,:)
        integer,pointer:: p02(:,:,:,:,:)
        integer,pointer:: p03(:,:,:,:,:)
        integer,pointer:: p04(:,:,:,:,:)
        integer,pointer:: p05(:,:,:,:,:)
        integer,pointer:: p06(:,:,:,:,:)
        integer,pointer:: p07(:,:,:,:,:)
        integer,pointer:: p08(:,:,:,:,:)
        integer,pointer:: p09(:,:,:,:,:)
        integer,pointer:: p10(:,:,:,:,:)
        integer,pointer:: p11(:,:,:,:,:)
        integer,pointer:: p12(:,:,:,:,:)
        integer,pointer:: p13(:,:,:,:,:)
        integer,pointer:: p14(:,:,:,:,:)
        integer,pointer:: p15(:,:,:,:,:)
        integer,pointer:: p16(:,:,:,:,:)
        integer,pointer:: p17(:,:,:,:,:)
        integer,pointer:: p18(:,:,:,:,:)
        integer,pointer:: p19(:,:,:,:,:)
        integer,pointer:: p20(:,:,:,:,:)
        integer,pointer:: p21(:,:,:,:,:)
        integer,pointer:: p22(:,:,:,:,:)
        integer,pointer:: p23(:,:,:,:,:)
        integer,pointer:: p24(:,:,:,:,:)
        integer,pointer:: p25(:,:,:,:,:)
        integer,pointer:: p26(:,:,:,:,:)
        integer,pointer:: p27(:,:,:,:,:)
        integer,pointer:: p28(:,:,:,:,:)
        integer,pointer:: p29(:,:,:,:,:)
        end type
        end
        subroutine tt(s)
        use mod
        type(TAG) s
        call sub(&
s%p01, s%p02, s%p03, s%p04, s%p05, s%p06, s%p07, s%p08, s%p09, s%p10, &
s%p11, s%p12, s%p13, s%p14, s%p15, s%p16, s%p17, s%p18, s%p19, s%p20, &
s%p21, s%p22, s%p23, s%p24, s%p25, s%p26, s%p27, s%p28, s%p29) 
        call sub(&
s%p01, s%p02, s%p03, s%p04, s%p05, s%p06, s%p07, s%p08, s%p09, s%p10, &
s%p11, s%p12, s%p13, s%p14, s%p15, s%p16, s%p17, s%p18, s%p19, s%p20, &
s%p21, s%p22, s%p23, s%p24, s%p25, s%p26, s%p27, s%p28, s%p29) 
        call sub(&
s%p01, s%p02, s%p03, s%p04, s%p05, s%p06, s%p07, s%p08, s%p09, s%p10, &
s%p11, s%p12, s%p13, s%p14, s%p15, s%p16, s%p17, s%p18, s%p19, s%p20, &
s%p21, s%p22, s%p23, s%p24, s%p25, s%p26, s%p27, s%p28, s%p29) 
        end
use mod
        type(TAG) s
allocate( &
s%p01(2,2,2,2,2), s%p02(2,2,2,2,2), s%p03(2,2,2,2,2), s%p04(2,2,2,2,2), s%p05(2,2,2,2,2), s%p06(2,2,2,2,2), s%p07(2,2,2,2,2), s%p08(2,2,2,2,2), s%p09(2,2,2,2,2), s%p10(2,2,2,2,2), &
s%p11(2,2,2,2,2), s%p12(2,2,2,2,2), s%p13(2,2,2,2,2), s%p14(2,2,2,2,2), s%p15(2,2,2,2,2), s%p16(2,2,2,2,2), s%p17(2,2,2,2,2), s%p18(2,2,2,2,2), s%p19(2,2,2,2,2), s%p20(2,2,2,2,2), &
s%p21(2,2,2,2,2), s%p22(2,2,2,2,2), s%p23(2,2,2,2,2), s%p24(2,2,2,2,2), s%p25(2,2,2,2,2), s%p26(2,2,2,2,2), s%p27(2,2,2,2,2), s%p28(2,2,2,2,2), s%p29(2,2,2,2,2) & 
,source=1)
call tt(s)
print *,'pass'
        end
subroutine sub(&
p01, p02, p03, p04, p05, p06, p07, p08, p09, p10, &
p11, p12, p13, p14, p15, p16, p17, p18, p19, p20, &
p21, p22, p23, p24, p25, p26, p27, p28, p29)  
integer:: &
p01(2), p02(2), p03(2), p04(2), p05(2), p06(2), p07(2), p08(2), p09(2), p10(2), &
p11(2), p12(2), p13(2), p14(2), p15(2), p16(2), p17(2), p18(2), p19(2), p20(2), &
p21(2), p22(2), p23(2), p24(2), p25(2), p26(2), p27(2), p28(2), p29(2)
if (any(p01/=1)) print *,1
if (any(p02/=1)) print *,1
if (any(p03/=1)) print *,1
if (any(p04/=1)) print *,1
if (any(p05/=1)) print *,1
if (any(p06/=1)) print *,1
if (any(p07/=1)) print *,1
if (any(p08/=1)) print *,1
if (any(p09/=1)) print *,1
if (any(p10/=1)) print *,1
if (any(p11/=1)) print *,1
if (any(p12/=1)) print *,1
if (any(p13/=1)) print *,1
if (any(p14/=1)) print *,1
if (any(p15/=1)) print *,1
if (any(p16/=1)) print *,1
if (any(p17/=1)) print *,1
if (any(p18/=1)) print *,1
if (any(p19/=1)) print *,1
if (any(p20/=1)) print *,1
if (any(p21/=1)) print *,1
if (any(p22/=1)) print *,1
if (any(p23/=1)) print *,1
if (any(p24/=1)) print *,1
if (any(p25/=1)) print *,1
if (any(p26/=1)) print *,1
if (any(p27/=1)) print *,1
if (any(p28/=1)) print *,1
if (any(p29/=1)) print *,1
end

