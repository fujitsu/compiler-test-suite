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
        integer,pointer:: p30(:,:,:,:,:)
        end type
        end
        subroutine tt(s)
        use mod
        type(TAG) s
do k1=1,size(s%p30,1)
do k2=1,size(s%p30,2)
do k3=1,size(s%p30,3)
do k4=1,size(s%p30,4)
do k5=1,size(s%p30,5)
s%p30(k5,k4,k3,k2,k1)=&
s%p01(k5,k4,k3,k2,k1)+ s%p02(k5,k4,k3,k2,k1)+ s%p03(k5,k4,k3,k2,k1)+ s%p04(k5,k4,k3,k2,k1)+ s%p05(k5,k4,k3,k2,k1)+ s%p06(k5,k4,k3,k2,k1)+ s%p07(k5,k4,k3,k2,k1)+ s%p08(k5,k4,k3,k2,k1)+ s%p09(k5,k4,k3,k2,k1)+ s%p10(k5,k4,k3,k2,k1)+ &
s%p11(k5,k4,k3,k2,k1)+ s%p12(k5,k4,k3,k2,k1)+ s%p13(k5,k4,k3,k2,k1)+ s%p14(k5,k4,k3,k2,k1)+ s%p15(k5,k4,k3,k2,k1)+ s%p16(k5,k4,k3,k2,k1)+ s%p17(k5,k4,k3,k2,k1)+ s%p18(k5,k4,k3,k2,k1)+ s%p19(k5,k4,k3,k2,k1)+ s%p20(k5,k4,k3,k2,k1)+ &
s%p21(k5,k4,k3,k2,k1)+ s%p22(k5,k4,k3,k2,k1)+ s%p23(k5,k4,k3,k2,k1)+ s%p24(k5,k4,k3,k2,k1)+ s%p25(k5,k4,k3,k2,k1)+ s%p26(k5,k4,k3,k2,k1)+ s%p27(k5,k4,k3,k2,k1)+ s%p28(k5,k4,k3,k2,k1)+ s%p29(k5,k4,k3,k2,k1)+&
s%p01(k5,k4,k3,k2,k1)+ s%p02(k5,k4,k3,k2,k1)+ s%p03(k5,k4,k3,k2,k1)+ s%p04(k5,k4,k3,k2,k1)+ s%p05(k5,k4,k3,k2,k1)+ s%p06(k5,k4,k3,k2,k1)+ s%p07(k5,k4,k3,k2,k1)+ s%p08(k5,k4,k3,k2,k1)+ s%p09(k5,k4,k3,k2,k1)+ s%p10(k5,k4,k3,k2,k1)+ &
s%p11(k5,k4,k3,k2,k1)+ s%p12(k5,k4,k3,k2,k1)+ s%p13(k5,k4,k3,k2,k1)+ s%p14(k5,k4,k3,k2,k1)+ s%p15(k5,k4,k3,k2,k1)+ s%p16(k5,k4,k3,k2,k1)+ s%p17(k5,k4,k3,k2,k1)+ s%p18(k5,k4,k3,k2,k1)+ s%p19(k5,k4,k3,k2,k1)+ s%p20(k5,k4,k3,k2,k1)+ &
s%p21(k5,k4,k3,k2,k1)+ s%p22(k5,k4,k3,k2,k1)+ s%p23(k5,k4,k3,k2,k1)+ s%p24(k5,k4,k3,k2,k1)+ s%p25(k5,k4,k3,k2,k1)+ s%p26(k5,k4,k3,k2,k1)+ s%p27(k5,k4,k3,k2,k1)+ s%p28(k5,k4,k3,k2,k1)+ s%p29(k5,k4,k3,k2,k1)+&
s%p01(k5,k4,k3,k2,k1)+ s%p02(k5,k4,k3,k2,k1)+ s%p03(k5,k4,k3,k2,k1)+ s%p04(k5,k4,k3,k2,k1)+ s%p05(k5,k4,k3,k2,k1)+ s%p06(k5,k4,k3,k2,k1)+ s%p07(k5,k4,k3,k2,k1)+ s%p08(k5,k4,k3,k2,k1)+ s%p09(k5,k4,k3,k2,k1)+ s%p10(k5,k4,k3,k2,k1)+ &
s%p11(k5,k4,k3,k2,k1)+ s%p12(k5,k4,k3,k2,k1)+ s%p13(k5,k4,k3,k2,k1)+ s%p14(k5,k4,k3,k2,k1)+ s%p15(k5,k4,k3,k2,k1)+ s%p16(k5,k4,k3,k2,k1)+ s%p17(k5,k4,k3,k2,k1)+ s%p18(k5,k4,k3,k2,k1)+ s%p19(k5,k4,k3,k2,k1)+ s%p20(k5,k4,k3,k2,k1)+ &
s%p21(k5,k4,k3,k2,k1)+ s%p22(k5,k4,k3,k2,k1)+ s%p23(k5,k4,k3,k2,k1)+ s%p24(k5,k4,k3,k2,k1)+ s%p25(k5,k4,k3,k2,k1)+ s%p26(k5,k4,k3,k2,k1)+ s%p27(k5,k4,k3,k2,k1)+ s%p28(k5,k4,k3,k2,k1)+ s%p29(k5,k4,k3,k2,k1) 
end do
end do
end do
end do
end do
if (sum(s%p30)/=29*(2**5)*3) print *,9001
        end
use mod
        type(TAG) s
allocate( &
s%p01(2,2,2,2,2), s%p02(2,2,2,2,2), s%p03(2,2,2,2,2), s%p04(2,2,2,2,2), s%p05(2,2,2,2,2), s%p06(2,2,2,2,2), s%p07(2,2,2,2,2), s%p08(2,2,2,2,2), s%p09(2,2,2,2,2), s%p10(2,2,2,2,2), &
s%p11(2,2,2,2,2), s%p12(2,2,2,2,2), s%p13(2,2,2,2,2), s%p14(2,2,2,2,2), s%p15(2,2,2,2,2), s%p16(2,2,2,2,2), s%p17(2,2,2,2,2), s%p18(2,2,2,2,2), s%p19(2,2,2,2,2), s%p20(2,2,2,2,2), &
s%p21(2,2,2,2,2), s%p22(2,2,2,2,2), s%p23(2,2,2,2,2), s%p24(2,2,2,2,2), s%p25(2,2,2,2,2), s%p26(2,2,2,2,2), s%p27(2,2,2,2,2), s%p28(2,2,2,2,2), s%p29(2,2,2,2,2) & 
,source=1)
allocate(s%p30(2,2,2,2,2))
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
