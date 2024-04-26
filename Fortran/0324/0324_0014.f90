call test01()
call test02()
print *,'pass'
end

subroutine test02()
implicit integer(kind=2) (r,p)
implicit logical(kind=4) (x)
parameter(p1=1,p2=2,p3=3,p4=4,p5=5,p6=6,p7=7)
parameter(r001=ibset(-  1_2,15_2 ))
parameter(r002=ibset(   1_2,15_2 ))
parameter(r003=ibset(-  2_2,15_2 ))
parameter(r004=ibset(-  2_2,14_2 ))
parameter(r005=ibset(-  2_2,13_2 ))
parameter(r006=ibset(-  2_2,12_2 ))
parameter(r007=ibset(-  2_2,11_2 ))
parameter(r008=ibset(-  2_2,10_2 ))
parameter(r009=ibset(-  2_2, 9_2 ))
parameter(r010=ibset(-  2_2, 8_2 ))
parameter(r011=ibset(-  2_2, 7_2 ))
parameter(r012=ibset(-  2_2, 6_2 ))
parameter(r013=ibset(-  2_2, 5_2 ))
parameter(r014=ibset(-  2_2, 4_2 ))
parameter(r015=ibset(-  2_2, 3_2 ))
parameter(r016=ibset(-  2_2, 2_2 ))
parameter(r017=ibset(-  2_2, 1_2 ))
parameter(r018=ibset(-  2_2, 0_2 ))
parameter(x003= r003.eq.(-2_2))
parameter(x004= r004.eq.(-2_2))
parameter(x005= r005.eq.(-2_2))
parameter(x006= r006.eq.(-2_2))
parameter(x007= r007.eq.(-2_2))
parameter(x008= r008.eq.(-2_2))
parameter(x009= r009.eq.(-2_2))
parameter(x010= r010.eq.(-2_2))
parameter(x011= r011.eq.(-2_2))
parameter(x012= r012.eq.(-2_2))
parameter(x013= r013.eq.(-2_2))
parameter(x014= r014.eq.(-2_2))
parameter(x015= r015.eq.(-2_2))
parameter(x016= r016.eq.(-2_2))
parameter(x017= r017.eq.(-2_2))
parameter(x018= r018.eq.(-1_2))


parameter(r103=ibset(   2_2, 15_2 ))
parameter(r104=ibset(   2_2, 14_2 ))
parameter(r105=ibset(   2_2, 13_2 ))
parameter(r106=ibset(   2_2, 12_2 ))
parameter(r107=ibset(   2_2, 11_2 ))
parameter(r108=ibset(   2_2, 10_2 ))
parameter(r109=ibset(   2_2,  9_2 ))
parameter(r110=ibset(   2_2,  8_2 ))
parameter(r111=ibset(   2_2,  7_2 ))
parameter(r112=ibset(   2_2,  6_2 ))
parameter(r113=ibset(   2_2,  5_2 ))
parameter(r114=ibset(   2_2,  4_2 ))
parameter(r115=ibset(   2_2,  3_2 ))
parameter(r116=ibset(   2_2,  2_2 ))
parameter(r117=ibset(   2_2,  1_2 ))
parameter(r118=ibset(   2_2,  0_2 ))

parameter(x103= r103.eq.(-32766_2))
parameter(x104= r104.eq.(16386_2))
parameter(x105= r105.eq.(8194_2))
parameter(x106= r106.eq.(4098_2))
parameter(x107= r107.eq.(2050_2))
parameter(x108= r108.eq.(1026_2))
parameter(x109= r109.eq.(514_2))
parameter(x110= r110.eq.(258_2))
parameter(x111= r111.eq.(130_2))
parameter(x112= r112.eq.(66_2))
parameter(x113= r113.eq.(34_2))
parameter(x114= r114.eq.(18_2))
parameter(x115= r115.eq.(10_2))
parameter(x116= r116.eq.( 6_2))
parameter(x117= r117.eq.( 2_2))
parameter(x118= r118.eq.( 3_2))


parameter(x001= r001.eq.(-1_2))
parameter(x002= r002.eq.(-32767_2))
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
if (x013.neqv..true.) call errtra
if (x014.neqv..true.) call errtra
if (x015.neqv..true.) call errtra
if (x016.neqv..true.) call errtra
if (x017.neqv..true.) call errtra
if (x018.neqv..true.) call errtra
if (x103.neqv..true.) call errtra
if (x104.neqv..true.) call errtra
if (x105.neqv..true.) call errtra
if (x106.neqv..true.) call errtra
if (x107.neqv..true.) call errtra
if (x108.neqv..true.) call errtra
if (x109.neqv..true.) call errtra
if (x110.neqv..true.) call errtra
if (x111.neqv..true.) call errtra
if (x112.neqv..true.) call errtra
if (x113.neqv..true.) call errtra
if (x114.neqv..true.) call errtra
if (x115.neqv..true.) call errtra
if (x116.neqv..true.) call errtra
if (x117.neqv..true.) call errtra
if (x118.neqv..true.) call errtra
end
subroutine test01()
end
