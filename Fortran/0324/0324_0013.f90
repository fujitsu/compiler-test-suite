call test01()
print *,'pass'
end

subroutine test01()
implicit integer(kind=1) (r,p)
implicit logical(kind=4) (x)
parameter(p1=1,p2=2,p3=3,p4=4,p5=5,p6=6,p7=7)
parameter(r001=ibset(-  1_1,p7 ))
parameter(r002=ibset(-  2_1,p7 ))
parameter(r003=ibset(-  3_1,p7 ))
parameter(r004=ibset(-  4_1,p7 ))
parameter(r005=ibset(-  5_1,p7 ))
parameter(r006=ibset(-  6_1,p7 ))
parameter(r007=ibset(-  7_1,p7 ))
parameter(r008=ibset(-  8_1,p7 ))
parameter(r009=ibset(-  9_1,p7 ))
parameter(r010=ibset(- 10_1,p7 ))
parameter(r011=ibset(- 11_1,p7 ))
parameter(r012=ibset(- 12_1,p7 ))
parameter(r013=ibset(- 13_1,p7 ))
parameter(r014=ibset(- 14_1,p7 ))
parameter(r015=ibset(- 15_1,p7 ))
parameter(r016=ibset(- 16_1,p7 ))
parameter(r017=ibset(- 17_1,p7 ))
parameter(r018=ibset(- 18_1,p7 ))
parameter(r019=ibset(- 19_1,p7 ))
parameter(r020=ibset(- 20_1,p7 ))
parameter(r021=ibset(- 21_1,p7 ))
parameter(r022=ibset(- 22_1,p7 ))
parameter(r023=ibset(- 23_1,p7 ))
parameter(r024=ibset(- 24_1,p7 ))
parameter(r025=ibset(- 25_1,p7 ))
parameter(r026=ibset(- 26_1,p7 ))
parameter(r027=ibset(- 27_1,p7 ))
parameter(r028=ibset(- 28_1,p7 ))
parameter(r029=ibset(- 29_1,p7 ))
parameter(r030=ibset(- 30_1,p7 ))
parameter(r031=ibset(- 31_1,p7 ))
parameter(r032=ibset(- 32_1,p7 ))
parameter(r033=ibset(- 33_1,p7 ))
parameter(r034=ibset(- 34_1,p7 ))
parameter(r035=ibset(- 35_1,p7 ))
parameter(r036=ibset(- 36_1,p7 ))
parameter(r037=ibset(- 37_1,p7 ))
parameter(r038=ibset(- 38_1,p7 ))
parameter(r039=ibset(- 39_1,p7 ))
parameter(r040=ibset(- 40_1,p7 ))
parameter(r041=ibset(- 41_1,p7 ))
parameter(r042=ibset(- 42_1,p7 ))
parameter(r043=ibset(- 43_1,p7 ))
parameter(r044=ibset(- 44_1,p7 ))
parameter(r045=ibset(- 45_1,p7 ))
parameter(r046=ibset(- 46_1,p7 ))
parameter(r047=ibset(- 47_1,p7 ))
parameter(r048=ibset(- 48_1,p7 ))
parameter(r049=ibset(- 49_1,p7 ))
parameter(r050=ibset(- 50_1,p7 ))
parameter(r051=ibset(- 51_1,p7 ))
parameter(r052=ibset(- 52_1,p7 ))
parameter(r053=ibset(- 53_1,p7 ))
parameter(r054=ibset(- 54_1,p7 ))
parameter(r055=ibset(- 55_1,p7 ))
parameter(r056=ibset(- 56_1,p7 ))
parameter(r057=ibset(- 57_1,p7 ))
parameter(r058=ibset(- 58_1,p7 ))
parameter(r059=ibset(- 59_1,p7 ))
parameter(r060=ibset(- 60_1,p7 ))
parameter(r061=ibset(- 61_1,p7 ))
parameter(r062=ibset(- 62_1,p7 ))
parameter(r063=ibset(- 63_1,p7 ))
parameter(r064=ibset(- 64_1,p7 ))
parameter(r065=ibset(- 65_1,p7 ))
parameter(r066=ibset(- 66_1,p7 ))
parameter(r067=ibset(- 67_1,p7 ))
parameter(r068=ibset(- 68_1,p7 ))
parameter(r069=ibset(- 69_1,p7 ))
parameter(r070=ibset(- 70_1,p7 ))
parameter(r071=ibset(- 71_1,p7 ))
parameter(r072=ibset(- 72_1,p7 ))
parameter(r073=ibset(- 73_1,p7 ))
parameter(r074=ibset(- 74_1,p7 ))
parameter(r075=ibset(- 75_1,p7 ))
parameter(r076=ibset(- 76_1,p7 ))
parameter(r077=ibset(- 77_1,p7 ))
parameter(r078=ibset(- 78_1,p7 ))
parameter(r079=ibset(- 79_1,p7 ))
parameter(r080=ibset(- 80_1,p7 ))
parameter(r081=ibset(- 81_1,p7 ))
parameter(r082=ibset(- 82_1,p7 ))
parameter(r083=ibset(- 83_1,p7 ))
parameter(r084=ibset(- 84_1,p7 ))
parameter(r085=ibset(- 85_1,p7 ))
parameter(r086=ibset(- 86_1,p7 ))
parameter(r087=ibset(- 87_1,p7 ))
parameter(r088=ibset(- 88_1,p7 ))
parameter(r089=ibset(- 89_1,p7 ))
parameter(r090=ibset(- 90_1,p7 ))
parameter(r091=ibset(- 91_1,p7 ))
parameter(r092=ibset(- 92_1,p7 ))
parameter(r093=ibset(- 93_1,p7 ))
parameter(r094=ibset(- 94_1,p7 ))
parameter(r095=ibset(- 95_1,p7 ))
parameter(r096=ibset(- 96_1,p7 ))
parameter(r097=ibset(- 97_1,p7 ))
parameter(r098=ibset(- 98_1,p7 ))
parameter(r099=ibset(- 99_1,p7 ))
parameter(r100=ibset(-100_1,p7 ))
parameter(r101=ibset(-101_1,p7 ))
parameter(r102=ibset(-102_1,p7 ))
parameter(r103=ibset(-103_1,p7 ))
parameter(r104=ibset(-104_1,p7 ))
parameter(r105=ibset(-105_1,p7 ))
parameter(r106=ibset(-106_1,p7 ))
parameter(r107=ibset(-107_1,p7 ))
parameter(r108=ibset(-108_1,p7 ))
parameter(r109=ibset(-109_1,p7 ))
parameter(r110=ibset(-110_1,p7 ))
parameter(r111=ibset(-111_1,p7 ))
parameter(r112=ibset(-112_1,p7 ))
parameter(r113=ibset(-113_1,p7 ))
parameter(r114=ibset(-114_1,p7 ))
parameter(r115=ibset(-115_1,p7 ))
parameter(r116=ibset(-116_1,p7 ))
parameter(r117=ibset(-117_1,p7 ))
parameter(r118=ibset(-118_1,p7 ))
parameter(r119=ibset(-119_1,p7 ))
parameter(r120=ibset(-120_1,p7 ))
parameter(r121=ibset(-121_1,p7 ))
parameter(r122=ibset(-122_1,p7 ))
parameter(r123=ibset(-123_1,p7 ))
parameter(r124=ibset(-124_1,p7 ))
parameter(r125=ibset(-125_1,p7 ))
parameter(r126=ibset(-126_1,p7 ))
parameter(r127=ibset(-127_1,p7 ))
parameter(x001= (-127_1).ne.r127) 
parameter(x002= (-126_1).ne.r126)
parameter(x003= (-125_1).ne.r125)
parameter(x004= (-124_1).ne.r124)
parameter(x005= (-123_1).ne.r123)
parameter(x006= (-122_1).ne.r122)
parameter(x007= (-121_1).ne.r121)
parameter(x008= (-120_1).ne.r120)
parameter(x009= (-119_1).ne.r119)
parameter(x010= (-118_1).ne.r118)
parameter(x011= (-117_1).ne.r117)
parameter(x012= (-116_1).ne.r116)
parameter(x013= (-115_1).ne.r115)
parameter(x014= (-114_1).ne.r114)
parameter(x015= (-113_1).ne.r113)
parameter(x016= (-112_1).ne.r112)
parameter(x017= (-111_1).ne.r111)
parameter(x018= (-110_1).ne.r110)
parameter(x019= (-109_1).ne.r109)
parameter(x020= (-108_1).ne.r108)
parameter(x021= (-107_1).ne.r107)
parameter(x022= (-106_1).ne.r106)
parameter(x023= (-105_1).ne.r105)
parameter(x024= (-104_1).ne.r104)
parameter(x025= (-103_1).ne.r103)
parameter(x026= (-102_1).ne.r102)
parameter(x027= (-101_1).ne.r101)
parameter(x028= (-100_1).ne.r100)
parameter(x029= (- 99_1).ne.r099)
parameter(x030= (- 98_1).ne.r098)
parameter(x031= (- 97_1).ne.r097)
parameter(x032= (- 96_1).ne.r096)
parameter(x033= (- 95_1).ne.r095)
parameter(x034= (- 94_1).ne.r094)
parameter(x035= (- 93_1).ne.r093)
parameter(x036= (- 92_1).ne.r092)
parameter(x037= (- 91_1).ne.r091)
parameter(x038= (- 90_1).ne.r090)
parameter(x039= (- 89_1).ne.r089)
parameter(x040= (- 88_1).ne.r088)
parameter(x041= (- 87_1).ne.r087)
parameter(x042= (- 86_1).ne.r086)
parameter(x043= (- 85_1).ne.r085)
parameter(x044= (- 84_1).ne.r084)
parameter(x045= (- 83_1).ne.r083)
parameter(x046= (- 82_1).ne.r082)
parameter(x047= (- 81_1).ne.r081)
parameter(x048= (- 80_1).ne.r080)
parameter(x049= (- 79_1).ne.r079)
parameter(x050= (- 78_1).ne.r078)
parameter(x051= (- 77_1).ne.r077)
parameter(x052= (- 76_1).ne.r076)
parameter(x053= (- 75_1).ne.r075)
parameter(x054= (- 74_1).ne.r074)
parameter(x055= (- 73_1).ne.r073)
parameter(x056= (- 72_1).ne.r072)
parameter(x057= (- 71_1).ne.r071)
parameter(x058= (- 70_1).ne.r070)
parameter(x059= (- 69_1).ne.r069)
parameter(x060= (- 68_1).ne.r068)
parameter(x061= (- 67_1).ne.r067)
parameter(x062= (- 66_1).ne.r066)
parameter(x063= (- 65_1).ne.r065)
parameter(x064= (- 64_1).ne.r064)
parameter(x065= (- 63_1).ne.r063)
parameter(x066= (- 62_1).ne.r062)
parameter(x067= (- 61_1).ne.r061)
parameter(x068= (- 60_1).ne.r060)
parameter(x069= (- 59_1).ne.r059)
parameter(x070= (- 58_1).ne.r058)
parameter(x071= (- 57_1).ne.r057)
parameter(x072= (- 56_1).ne.r056)
parameter(x073= (- 55_1).ne.r055)
parameter(x074= (- 54_1).ne.r054)
parameter(x075= (- 53_1).ne.r053)
parameter(x076= (- 52_1).ne.r052)
parameter(x077= (- 51_1).ne.r051)
parameter(x078= (- 50_1).ne.r050) 
parameter(x079= (- 49_1).ne.r049)
parameter(x080= (- 48_1).ne.r048)
parameter(x081= (- 47_1).ne.r047)
parameter(x082= (- 46_1).ne.r046)
parameter(x083= (- 45_1).ne.r045)
parameter(x084= (- 44_1).ne.r044)
parameter(x085= (- 43_1).ne.r043)
parameter(x086= (- 42_1).ne.r042)
parameter(x087= (- 41_1).ne.r041)
parameter(x088= (- 40_1).ne.r040)
parameter(x089= (- 39_1).ne.r039)
parameter(x090= (- 38_1).ne.r038)
parameter(x091= (- 37_1).ne.r037)
parameter(x092= (- 36_1).ne.r036)
parameter(x093= (- 35_1).ne.r035)
parameter(x094= (- 34_1).ne.r034)
parameter(x095= (- 33_1).ne.r033)
parameter(x096= (- 32_1).ne.r032)
parameter(x097= (- 31_1).ne.r031)
parameter(x098= (- 30_1).ne.r030)
parameter(x099= (- 29_1).ne.r029)
parameter(x100= (- 28_1).ne.r028)
parameter(x101= (- 27_1).ne.r027)
parameter(x102= (- 26_1).ne.r026)
parameter(x103= (- 25_1).ne.r025)
parameter(x104= (- 24_1).ne.r024)
parameter(x105= (- 23_1).ne.r023)
parameter(x106= (- 22_1).ne.r022)
parameter(x107= (- 21_1).ne.r021)
parameter(x108= (- 20_1).ne.r020)
parameter(x109= (- 19_1).ne.r019)
parameter(x110= (- 18_1).ne.r018)
parameter(x111= (- 17_1).ne.r017)
parameter(x112= (- 16_1).ne.r016)
parameter(x113= (- 15_1).ne.r015)
parameter(x114= (- 14_1).ne.r014)
parameter(x115= (- 13_1).ne.r013)
parameter(x116= (- 12_1).ne.r012)
parameter(x117= (- 11_1).ne.r011)
parameter(x118= (- 10_1).ne.r010)
parameter(x119= (-  9_1).ne.r009)
parameter(x120= (-  8_1).ne.r008)
parameter(x121= (-  7_1).ne.r007)
parameter(x122= (-  6_1).ne.r006)
parameter(x123= (-  5_1).ne.r005)
parameter(x124= (-  4_1).ne.r004)
parameter(x125= (-  3_1).ne.r003)
parameter(x126= (-  2_1).ne.r002)
parameter(x127= (-  1_1).ne.r001)

if (x001.neqv..false.) call errtra
if (x002.neqv..false.) call errtra
if (x003.neqv..false.) call errtra
if (x004.neqv..false.) call errtra
if (x005.neqv..false.) call errtra
if (x006.neqv..false.) call errtra
if (x007.neqv..false.) call errtra
if (x008.neqv..false.) call errtra
if (x009.neqv..false.) call errtra
if (x010.neqv..false.) call errtra
if (x011.neqv..false.) call errtra
if (x012.neqv..false.) call errtra
if (x013.neqv..false.) call errtra
if (x014.neqv..false.) call errtra
if (x015.neqv..false.) call errtra
if (x016.neqv..false.) call errtra
if (x017.neqv..false.) call errtra
if (x018.neqv..false.) call errtra
if (x019.neqv..false.) call errtra
if (x020.neqv..false.) call errtra
if (x021.neqv..false.) call errtra
if (x022.neqv..false.) call errtra
if (x023.neqv..false.) call errtra
if (x024.neqv..false.) call errtra
if (x025.neqv..false.) call errtra
if (x026.neqv..false.) call errtra
if (x027.neqv..false.) call errtra
if (x028.neqv..false.) call errtra
if (x029.neqv..false.) call errtra
if (x030.neqv..false.) call errtra
if (x031.neqv..false.) call errtra
if (x032.neqv..false.) call errtra
if (x033.neqv..false.) call errtra
if (x034.neqv..false.) call errtra
if (x035.neqv..false.) call errtra
if (x036.neqv..false.) call errtra
if (x037.neqv..false.) call errtra
if (x038.neqv..false.) call errtra
if (x039.neqv..false.) call errtra
if (x040.neqv..false.) call errtra
if (x041.neqv..false.) call errtra
if (x042.neqv..false.) call errtra
if (x043.neqv..false.) call errtra
if (x044.neqv..false.) call errtra
if (x045.neqv..false.) call errtra
if (x046.neqv..false.) call errtra
if (x047.neqv..false.) call errtra
if (x048.neqv..false.) call errtra
if (x049.neqv..false.) call errtra
if (x050.neqv..false.) call errtra
if (x051.neqv..false.) call errtra
if (x052.neqv..false.) call errtra
if (x053.neqv..false.) call errtra
if (x054.neqv..false.) call errtra
if (x055.neqv..false.) call errtra
if (x056.neqv..false.) call errtra
if (x057.neqv..false.) call errtra
if (x058.neqv..false.) call errtra
if (x059.neqv..false.) call errtra
if (x060.neqv..false.) call errtra
if (x061.neqv..false.) call errtra
if (x062.neqv..false.) call errtra
if (x063.neqv..false.) call errtra
if (x064.neqv..false.) call errtra
if (x065.neqv..false.) call errtra
if (x066.neqv..false.) call errtra
if (x067.neqv..false.) call errtra
if (x068.neqv..false.) call errtra
if (x069.neqv..false.) call errtra
if (x070.neqv..false.) call errtra
if (x071.neqv..false.) call errtra
if (x072.neqv..false.) call errtra
if (x073.neqv..false.) call errtra
if (x074.neqv..false.) call errtra
if (x075.neqv..false.) call errtra
if (x076.neqv..false.) call errtra
if (x077.neqv..false.) call errtra
if (x078.neqv..false.) call errtra
if (x079.neqv..false.) call errtra
if (x080.neqv..false.) call errtra
if (x081.neqv..false.) call errtra
if (x082.neqv..false.) call errtra
if (x083.neqv..false.) call errtra
if (x084.neqv..false.) call errtra
if (x085.neqv..false.) call errtra
if (x086.neqv..false.) call errtra
if (x087.neqv..false.) call errtra
if (x088.neqv..false.) call errtra
if (x089.neqv..false.) call errtra
if (x090.neqv..false.) call errtra
if (x091.neqv..false.) call errtra
if (x092.neqv..false.) call errtra
if (x093.neqv..false.) call errtra
if (x094.neqv..false.) call errtra
if (x095.neqv..false.) call errtra
if (x096.neqv..false.) call errtra
if (x097.neqv..false.) call errtra
if (x098.neqv..false.) call errtra
if (x099.neqv..false.) call errtra
if (x100.neqv..false.) call errtra
if (x101.neqv..false.) call errtra
if (x102.neqv..false.) call errtra
if (x103.neqv..false.) call errtra
if (x104.neqv..false.) call errtra
if (x105.neqv..false.) call errtra
if (x106.neqv..false.) call errtra
if (x107.neqv..false.) call errtra
if (x108.neqv..false.) call errtra
if (x109.neqv..false.) call errtra
if (x110.neqv..false.) call errtra
if (x111.neqv..false.) call errtra
if (x112.neqv..false.) call errtra
if (x113.neqv..false.) call errtra
if (x114.neqv..false.) call errtra
if (x115.neqv..false.) call errtra
if (x116.neqv..false.) call errtra
if (x117.neqv..false.) call errtra
if (x118.neqv..false.) call errtra
if (x119.neqv..false.) call errtra
if (x120.neqv..false.) call errtra
if (x121.neqv..false.) call errtra
if (x122.neqv..false.) call errtra
if (x123.neqv..false.) call errtra
if (x124.neqv..false.) call errtra
if (x125.neqv..false.) call errtra
if (x126.neqv..false.) call errtra
if (x127.neqv..false.) call errtra
end subroutine
