call test01()
call test02()
print *,'pass'
end

subroutine test02()
implicit integer(kind=2) (r,p)
implicit logical(kind=4) (x)
parameter(p001=z'7fff')
parameter(p002=z'8000')
parameter(p003=z'8001')
parameter(p004=z'9000')
parameter(p005=z'7000')
parameter(p006=z'7001')
parameter(p007=z'a000')
parameter(p008=z'b000')
parameter(p009=z'c000')
parameter(p010=z'd000')
parameter(p011=z'e000')
parameter(p012=z'f000')
parameter(r001=ibset(p001,15_2 ))
parameter(r002=ibset(p002,15_2 ))
parameter(r003=ibset(p003,15_2 ))
parameter(r004=ibset(p004,15_2 ))
parameter(r005=ibset(p005,15_2 ))
parameter(r006=ibset(p006,15_2 ))
parameter(r007=ibset(p007,15_2 ))
parameter(r008=ibset(p008,15_2 ))
parameter(r009=ibset(p009,15_2 ))
parameter(r010=ibset(p010,15_2 ))
parameter(r011=ibset(p011,15_2 ))
parameter(r012=ibset(p012,15_2 ))
parameter(x001= r001.eq.(-1_2))
parameter(x002= r002.eq.(-32768_2))
parameter(x003= r003.eq.(-32767_2))
parameter(x004= r004.eq.(-28672_2))
parameter(x005= r005.eq.(-4096_2))
parameter(x006= r006.eq.(-4095_2))
parameter(x007= r007.eq.(-24576_2))
parameter(x008= r008.eq.(-20480_2))
parameter(x009= r009.eq.(-16384_2))
parameter(x010= r010.eq.(-12288_2))
parameter(x011= r011.eq.(-8192_2))
parameter(x012= r012.eq.(-4096_2))

if (x001.neqv..true.) call errtra
if (x002.neqv..true.) call errtra
if (x003.neqv..true.) call errtra
if (x004.neqv..true.) call errtra
if (x005.neqv..true.) call errtra
if (x006.neqv..true.) call errtra
if (x007.neqv..true.) call errtra
if (x008.neqv..true.) call errtra
if (x009.neqv..true.) call errtra
if (x010.neqv..true.) call errtra
if (x011.neqv..true.) call errtra
if (x012.neqv..true.) call errtra
end
subroutine test01()
implicit integer(kind=1) (r,p)
implicit logical(kind=4) (x)
parameter(p001=z'81')
parameter(p002=z'ff')
parameter(p003=z'ef')
parameter(p004=z'cf')
parameter(p005=z'af')
parameter(p006=z'8f')
parameter(p007=z'0f')
parameter(r001=ibset(p001, 1_2 ))
parameter(r002=ibset(p002, 2_2 ))
parameter(r003=ibset(p003, 3_2 ))
parameter(r004=ibset(p004, 4_2 ))
parameter(r005=ibset(p005, 5_2 ))
parameter(r006=ibset(p006, 6_2 ))
parameter(r007=ibset(p007, 7_2 ))

parameter(x001= r001.eq.(-125_2))
parameter(x002= r002.eq.(-1_2))
parameter(x003= r003.eq.(-17_2))
parameter(x004= r004.eq.(-33_2))
parameter(x005= r005.eq.(-81_2))
parameter(x006= r006.eq.(-49_2))
parameter(x007= r007.eq.(-113_2))

if (x001.neqv..true.) call errtra
if (x002.neqv..true.) call errtra
if (x003.neqv..true.) call errtra
if (x004.neqv..true.) call errtra
if (x005.neqv..true.) call errtra
if (x006.neqv..true.) call errtra
if (x007.neqv..true.) call errtra



end
