#include <stdlib.h>




typedef int *TA;
int i;
class CA {
protected:
  int a;
public:
  void ff(){}
}caobj;;
struct SA{
protected:
  int a;
public:
  void ff(){}
}saobj;;
union UA{
protected:
  int a;
  char *b;
}uaobj;
enum EA{ e1, e2};
template <class T , int I> class TPA{
public:
  T  a[I];
  void func(){}
protected:
  typedef int II;
};
TPA<int, 10> tmpaobj;

namespace NA{
  int na_a;
  void na_func(int){}
  typedef int na_type;
}

void func1(){
  typedef int *TA_L;
  class CA_L {
  protected:
    int a;
  public:
    void ff(){}
  }caobj;
  struct SA_L{
  protected:
    int a;
  public:
    void ff(){}
  }saobj;;
  union UA_L{
  protected:
    int a;
    char *b;
  }uaobj;
  enum EA_L{ e1, e2};
  i++;
}



class CB {
public:
  CA  a;
  SA *b;
  UA **c;
  EA  d;
  TA (*e)[3];
  TPA<int, 1> f;
}cbobj;


void func2(){
  typedef int *TA_L;
  class CA_L {
  protected:
    int a;
  public:
    void ff(){}
  }caobj;
  struct SA_L{
  protected:
    int a;
  public:
    void ff(){}
  }saobj;;
  union UA_L{
  protected:
    int a;
    char *b;
  }uaobj;
  enum EA_L{ e1, e2};

  class CB_L{
  protected:
    CA_L  a;
    SA_L *b;
    UA_L **c;
    EA_L  d;
    TA_L (*e)[3];
  }cblobj;
  i++;
}


class LONG_NAME_ABCDEFGHIJKLMNOPQRSTUVWXYABCDEFGHIJKLMNOPQRSTUVWXYABCDEFGHIJKLMNOPQRSTUVWXYABCDEFGHIJKLMNOPQRSTUVWXYABCDEFGHIJKLMNOPQRSTUVWXYABCDEFGHIJKLMNOPQRSTUVWXYABCDEFGHIJKLMNOPQRSTUVWXYABCDEFGHIJKLMNOPQRSTUVWXYABCDEFGHIJKLMNOPQRSTUVWXYABCDEFGHIJKLMNOPQRSTUVWXY{
public:
  int a;
}long_name_obj ;
typedef int TYPDEF_LONG_NAME_ABCDEFGHIJKLMNOPQRSTUVWXYABCDEFGHIJKLMNOPQRSTUVWXYABCDEFGHIJKLMNOPQRSTUVWXYABCDEFGHIJKLMNOPQRSTUVWXYABCDEFGHIJKLMNOPQRSTUVWXYABCDEFGHIJKLMNOPQRSTUVWXYABCDEFGHIJKLMNOPQRSTUVWXYABCDEFGHIJKLMNOPQRSTUVWXYABCDEFGHIJKLMNOPQRSTUVWXYABCDEFGHIJKLMNOPQRSTUVWXY;

namespace LONG_NAMESPACE_ABCDEFGHIJKLMNOPQRSTUVWXYABCDEFGHIJKLMNOPQRSTUVWXYABCDEFGHIJKLMNOPQRSTUVWXYABCDEFGHIJKLMNOPQRSTUVWXYABCDEFGHIJKLMNOPQRSTUVWXYABCDEFGHIJKLMNOPQRSTUVWXYABCDEFGHIJKLMNOPQRSTUVWXYABCDEFGHIJKLMNOPQRSTUVWXYABCDEFGHIJKLMNOPQRSTUVWXYABCDEFGHIJKLMNOPQRSTUVWXY{
  int long_na_1;
  char long_na_2;
  int (*long_na_3)[3];
}


class LONG_MEM {
public:
  int long_mem_abcdefghijklmnopqrstuvwxyabcdefghijklmnopqrstuvwxyabcdefghijklmnopqrstuvwxyabcdefghijklmnopqrstuvwxyabcdefghijklmnopqrstuvwxyabcdefghijklmnopqrstuvwxyabcdefghijklmnopqrstuvwxyabcdefghijklmnopqrstuvwxyabcdefghijklmnopqrstuvwxyabcdefghijklmnopqrstuvwxy;
  class nest_class_abcdefghijklmnopqrstuvwxyabcdefghijklmnopqrstuvwxyabcdefghijklmnopqrstuvwxyabcdefghijklmnopqrstuvwxyabcdefghijklmnopqrstuvwxyabcdefghijklmnopqrstuvwxyabcdefghijklmnopqrstuvwxyabcdefghijklmnopqrstuvwxyabcdefghijklmnopqrstuvwxyabcdefghijklmnopqrstuvwxy{};
  void func_abcdefghijklmnopqrstuvwxyabcdefghijklmnopqrstuvwxyabcdefghijklmnopqrstuvwxyabcdefghijklmnopqrstuvwxyabcdefghijklmnopqrstuvwxyabcdefghijklmnopqrstuvwxyabcdefghijklmnopqrstuvwxyabcdefghijklmnopqrstuvwxyabcdefghijklmnopqrstuvwxyabcdefghijklmnopqrstuvwxy(){}
}long_mem_obj;
namespace LONG_NA{
  char * long_name_char_abcdefghijklmnopqrstuvwx_abcdefghijklmnopqrstuvwx_abcdefghijklmnopqrstuvwx_abcdefghijklmnopqrstuvwx_abcdefghijklmnopqrstuvwx_abcdefghijklmnopqrstuvwx_abcdefghijklmnopqrstuvwx_abcdefghijklmnopqrstuvwx_abcdefghijklmnopqrstuvwx_abcdefghijklmnopqrstuvwx;
  void func_na_abcdefghijklmnopqrstuvwx_abcdefghijklmnopqrstuvwx_abcdefghijklmnopqrstuvwx_abcdefghijklmnopqrstuvwx_abcdefghijklmnopqrstuvwx_abcdefghijklmnopqrstuvwx_abcdefghijklmnopqrstuvwx_abcdefghijklmnopqrstuvwx_abcdefghijklmnopqrstuvwx_abcdefghijklmnopqrstuvwx(){}
}
enum LONG_ENUM{enum_mem_abcdefghijklmnopqrstuvwx_abcdefghijklmnopqrstuvwx_abcdefghijklmnopqrstuvwx_abcdefghijklmnopqrstuvwx_abcdefghijklmnopqrstuvwx_abcdefghijklmnopqrstuvwx_abcdefghijklmnopqrstuvwx_abcdefghijklmnopqrstuvwx_abcdefghijklmnopqrstuvwx_abcdefghijklmnopqrstuvwx};


class MANY_MEM{
public:
  int a1; int a2; int a3; int a4; int a5; int a6; int a7; int a8; int a9; int a10; int a11; int a12; int a13; int a14; int a15; int a16; int a17; int a18; int a19; int a20; int a21; int a22; int a23; int a24; int a25; int a26; int a27; int a28; int a29; int a30; int a31; int a32; int a33; int a34; int a35; int a36; int a37; int a38; int a39; int a40; int a41; int a42; int a43; int a44; int a45; int a46; int a47; int a48; int a49; int a50; int a51; int a52; int a53; int a54; int a55; int a56; int a57; int a58; int a59; int a60; int a61; int a62; int a63; int a64; int a65; int a66; int a67; int a68; int a69; int a70; int a71; int a72; int a73; int a74; int a75; int a76; int a77; int a78; int a79; int a80; int a81; int a82; int a83; int a84; int a85; int a86; int a87; int a88; int a89; int a90; int a91; int a92; int a93; int a94; int a95; int a96; int a97; int a98; int a99; int a100; int a101; int a102; int a103; int a104; int a105; int a106; int a107; int a108; int a109; int a110; int a111; int a112; int a113; int a114; int a115; int a116; int a117; int a118; int a119; int a120; int a121; int a122; int a123; int a124; int a125; int a126; int a127; int a128; int a129; int a130; int a131; int a132; int a133; int a134; int a135; int a136; int a137; int a138; int a139; int a140; int a141; int a142; int a143; int a144; int a145; int a146; int a147; int a148; int a149; int a150; int a151; int a152; int a153; int a154; int a155; int a156; int a157; int a158; int a159; int a160; int a161; int a162; int a163; int a164; int a165; int a166; int a167; int a168; int a169; int a170; int a171; int a172; int a173; int a174; int a175; int a176; int a177; int a178; int a179; int a180; int a181; int a182; int a183; int a184; int a185; int a186; int a187; int a188; int a189; int a190; int a191; int a192; int a193; int a194; int a195; int a196; int a197; int a198; int a199; int a200; int a201; int a202; int a203; int a204; int a205; int a206; int a207; int a208; int a209; int a210; int a211; int a212; int a213; int a214; int a215; int a216; int a217; int a218; int a219; int a220; int a221; int a222; int a223; int a224; int a225; int a226; int a227; int a228; int a229; int a230; int a231; int a232; int a233; int a234; int a235; int a236; int a237; int a238; int a239; int a240; int a241; int a242; int a243; int a244; int a245; int a246; int a247; int a248; int a249; int a250; int a251; int a252; int a253; int a254; int a255; 
}many_mem_obj;
struct MANY_MEM2{
private:
  void  f1(){}  void  f2(){}  void  f3(){}  void  f4(){}  void  f5(){}  void  f6(){}  void  f7(){}  void  f8(){}  void  f9(){}  void  f10(){}  void  f11(){}  void  f12(){}  void  f13(){}  void  f14(){}  void  f15(){}  void  f16(){}  void  f17(){}  void  f18(){}  void  f19(){}  void  f20(){}  void  f21(){}  void  f22(){}  void  f23(){}  void  f24(){}  void  f25(){}  void  f26(){}  void  f27(){}  void  f28(){}  void  f29(){}  void  f30(){}  void  f31(){}  void  f32(){}  void  f33(){}  void  f34(){}  void  f35(){}  void  f36(){}  void  f37(){}  void  f38(){}  void  f39(){}  void  f40(){}  void  f41(){}  void  f42(){}  void  f43(){}  void  f44(){}  void  f45(){}  void  f46(){}  void  f47(){}  void  f48(){}  void  f49(){}  void  f50(){}  void  f51(){}  void  f52(){}  void  f53(){}  void  f54(){}  void  f55(){}  void  f56(){}  void  f57(){}  void  f58(){}  void  f59(){}  void  f60(){}  void  f61(){}  void  f62(){}  void  f63(){}  void  f64(){}  void  f65(){}  void  f66(){}  void  f67(){}  void  f68(){}  void  f69(){}  void  f70(){}  void  f71(){}  void  f72(){}  void  f73(){}  void  f74(){}  void  f75(){}  void  f76(){}  void  f77(){}  void  f78(){}  void  f79(){}  void  f80(){}  void  f81(){}  void  f82(){}  void  f83(){}  void  f84(){}  void  f85(){}  void  f86(){}  void  f87(){}  void  f88(){}  void  f89(){}  void  f90(){}  void  f91(){}  void  f92(){}  void  f93(){}  void  f94(){}  void  f95(){}  void  f96(){}  void  f97(){}  void  f98(){}  void  f99(){}  void  f100(){}  void  f101(){}  void  f102(){}  void  f103(){}  void  f104(){}  void  f105(){}  void  f106(){}  void  f107(){}  void  f108(){}  void  f109(){}  void  f110(){}  void  f111(){}  void  f112(){}  void  f113(){}  void  f114(){}  void  f115(){}  void  f116(){}  void  f117(){}  void  f118(){}  void  f119(){}  void  f120(){}  void  f121(){}  void  f122(){}  void  f123(){}  void  f124(){}  void  f125(){}  void  f126(){}  void  f127(){}  void  f128(){}  void  f129(){}  void  f130(){}  void  f131(){}  void  f132(){}  void  f133(){}  void  f134(){}  void  f135(){}  void  f136(){}  void  f137(){}  void  f138(){}  void  f139(){}  void  f140(){}  void  f141(){}  void  f142(){}  void  f143(){}  void  f144(){}  void  f145(){}  void  f146(){}  void  f147(){}  void  f148(){}  void  f149(){}  void  f150(){}  void  f151(){}  void  f152(){}  void  f153(){}  void  f154(){}  void  f155(){}  void  f156(){}  void  f157(){}  void  f158(){}  void  f159(){}  void  f160(){}  void  f161(){}  void  f162(){}  void  f163(){}  void  f164(){}  void  f165(){}  void  f166(){}  void  f167(){}  void  f168(){}  void  f169(){}  void  f170(){}  void  f171(){}  void  f172(){}  void  f173(){}  void  f174(){}  void  f175(){}  void  f176(){}  void  f177(){}  void  f178(){}  void  f179(){}  void  f180(){}  void  f181(){}  void  f182(){}  void  f183(){}  void  f184(){}  void  f185(){}  void  f186(){}  void  f187(){}  void  f188(){}  void  f189(){}  void  f190(){}  void  f191(){}  void  f192(){}  void  f193(){}  void  f194(){}  void  f195(){}  void  f196(){}  void  f197(){}  void  f198(){}  void  f199(){}  void  f200(){}  void  f201(){}  void  f202(){}  void  f203(){}  void  f204(){}  void  f205(){}  void  f206(){}  void  f207(){}  void  f208(){}  void  f209(){}  void  f210(){}  void  f211(){}  void  f212(){}  void  f213(){}  void  f214(){}  void  f215(){}  void  f216(){}  void  f217(){}  void  f218(){}  void  f219(){}  void  f220(){}  void  f221(){}  void  f222(){}  void  f223(){}  void  f224(){}  void  f225(){}  void  f226(){}  void  f227(){}  void  f228(){}  void  f229(){}  void  f230(){}  void  f231(){}  void  f232(){}  void  f233(){}  void  f234(){}  void  f235(){}  void  f236(){}  void  f237(){}  void  f238(){}  void  f239(){}  void  f240(){}  void  f241(){}  void  f242(){}  void  f243(){}  void  f244(){}  void  f245(){}  void  f246(){}  void  f247(){}  void  f248(){}  void  f249(){}  void  f250(){}  void  f251(){}  void  f252(){}  void  f253(){}  void  f254(){}  void  f255(){}   
}many_men2_obj;

enum MANY_MEM3{
  enum_1,enum_2,enum_3,enum_4,enum_5,enum_6,enum_7,enum_8,enum_9,enum_10,enum_11,enum_12,enum_13,enum_14,enum_15,enum_16,enum_17,enum_18,enum_19,enum_20,enum_21,enum_22,enum_23,enum_24,enum_25,enum_26,enum_27,enum_28,enum_29,enum_30,enum_31,enum_32,enum_33,enum_34,enum_35,enum_36,enum_37,enum_38,enum_39,enum_40,enum_41,enum_42,enum_43,enum_44,enum_45,enum_46,enum_47,enum_48,enum_49,enum_50,enum_51,enum_52,enum_53,enum_54,enum_55,enum_56,enum_57,enum_58,enum_59,enum_60,enum_61,enum_62,enum_63,enum_64,enum_65,enum_66,enum_67,enum_68,enum_69,enum_70,enum_71,enum_72,enum_73,enum_74,enum_75,enum_76,enum_77,enum_78,enum_79,enum_80,enum_81,enum_82,enum_83,enum_84,enum_85,enum_86,enum_87,enum_88,enum_89,enum_90,enum_91,enum_92,enum_93,enum_94,enum_95,enum_96,enum_97,enum_98,enum_99,enum_100,enum_101,enum_102,enum_103,enum_104,enum_105,enum_106,enum_107,enum_108,enum_109,enum_110,enum_111,enum_112,enum_113,enum_114,enum_115,enum_116,enum_117,enum_118,enum_119,enum_120,enum_121,enum_122,enum_123,enum_124,enum_125,enum_126,enum_127,enum_128,enum_129,enum_130,enum_131,enum_132,enum_133,enum_134,enum_135,enum_136,enum_137,enum_138,enum_139,enum_140,enum_141,enum_142,enum_143,enum_144,enum_145,enum_146,enum_147,enum_148,enum_149,enum_150,enum_151,enum_152,enum_153,enum_154,enum_155,enum_156,enum_157,enum_158,enum_159,enum_160,enum_161,enum_162,enum_163,enum_164,enum_165,enum_166,enum_167,enum_168,enum_169,enum_170,enum_171,enum_172,enum_173,enum_174,enum_175,enum_176,enum_177,enum_178,enum_179,enum_180,enum_181,enum_182,enum_183,enum_184,enum_185,enum_186,enum_187,enum_188,enum_189,enum_190,enum_191,enum_192,enum_193,enum_194,enum_195,enum_196,enum_197,enum_198,enum_199,enum_200,enum_201,enum_202,enum_203,enum_204,enum_205,enum_206,enum_207,enum_208,enum_209,enum_210,enum_211,enum_212,enum_213,enum_214,enum_215,enum_216,enum_217,enum_218,enum_219,enum_220,enum_221,enum_222,enum_223,enum_224,enum_225,enum_226,enum_227,enum_228,enum_229,enum_230,enum_231,enum_232,enum_233,enum_234,enum_235,enum_236,enum_237,enum_238,enum_239,enum_240,enum_241,enum_242,enum_243,enum_244,enum_245,enum_246,enum_247,enum_248,enum_249,enum_250,enum_251,enum_252,enum_253,enum_254,enum_255
};

namespace MANY_MEM4{
  int name_1,name_2,name_3,name_4,name_5,name_6,name_7,name_8,name_9,name_10,name_11,name_12,name_13,name_14,name_15,name_16,name_17,name_18,name_19,name_20,name_21,name_22,name_23,name_24,name_25,name_26,name_27,name_28,name_29,name_30,name_31,name_32,name_33,name_34,name_35,name_36,name_37,name_38,name_39,name_40,name_41,name_42,name_43,name_44,name_45,name_46,name_47,name_48,name_49,name_50,name_51,name_52,name_53,name_54,name_55,name_56,name_57,name_58,name_59,name_60,name_61,name_62,name_63,name_64,name_65,name_66,name_67,name_68,name_69,name_70,name_71,name_72,name_73,name_74,name_75,name_76,name_77,name_78,name_79,name_80,name_81,name_82,name_83,name_84,name_85,name_86,name_87,name_88,name_89,name_90,name_91,name_92,name_93,name_94,name_95,name_96,name_97,name_98,name_99,name_100,name_101,name_102,name_103,name_104,name_105,name_106,name_107,name_108,name_109,name_110,name_111,name_112,name_113,name_114,name_115,name_116,name_117,name_118,name_119,name_120,name_121,name_122,name_123,name_124,name_125,name_126,name_127,name_128,name_129,name_130,name_131,name_132,name_133,name_134,name_135,name_136,name_137,name_138,name_139,name_140,name_141,name_142,name_143,name_144,name_145,name_146,name_147,name_148,name_149,name_150,name_151,name_152,name_153,name_154,name_155,name_156,name_157,name_158,name_159,name_160,name_161,name_162,name_163,name_164,name_165,name_166,name_167,name_168,name_169,name_170,name_171,name_172,name_173,name_174,name_175,name_176,name_177,name_178,name_179,name_180,name_181,name_182,name_183,name_184,name_185,name_186,name_187,name_188,name_189,name_190,name_191,name_192,name_193,name_194,name_195,name_196,name_197,name_198,name_199,name_200,name_201,name_202,name_203,name_204,name_205,name_206,name_207,name_208,name_209,name_210,name_211,name_212,name_213,name_214,name_215,name_216,name_217,name_218,name_219,name_220,name_221,name_222,name_223,name_224,name_225,name_226,name_227,name_228,name_229,name_230,name_231,name_232,name_233,name_234,name_235,name_236,name_237,name_238,name_239,name_240,name_241,name_242,name_243,name_244,name_245,name_246,name_247,name_248,name_249,name_250,name_251,name_252,name_253,name_254,name_255;
  class CL_NAM1 {}; class CL_NAM2 {}; class CL_NAM3 {}; class CL_NAM4 {}; class CL_NAM5 {}; class CL_NAM6 {}; class CL_NAM7 {}; class CL_NAM8 {}; class CL_NAM9 {}; class CL_NAM10 {}; class CL_NAM11 {}; class CL_NAM12 {}; class CL_NAM13 {}; class CL_NAM14 {}; class CL_NAM15 {}; class CL_NAM16 {}; class CL_NAM17 {}; class CL_NAM18 {}; class CL_NAM19 {}; class CL_NAM20 {}; class CL_NAM21 {}; class CL_NAM22 {}; class CL_NAM23 {}; class CL_NAM24 {}; class CL_NAM25 {}; class CL_NAM26 {}; class CL_NAM27 {}; class CL_NAM28 {}; class CL_NAM29 {}; class CL_NAM30 {}; class CL_NAM31 {}; class CL_NAM32 {}; class CL_NAM33 {}; class CL_NAM34 {}; class CL_NAM35 {}; class CL_NAM36 {}; class CL_NAM37 {}; class CL_NAM38 {}; class CL_NAM39 {}; class CL_NAM40 {}; class CL_NAM41 {}; class CL_NAM42 {}; class CL_NAM43 {}; class CL_NAM44 {}; class CL_NAM45 {}; class CL_NAM46 {}; class CL_NAM47 {}; class CL_NAM48 {}; class CL_NAM49 {}; class CL_NAM50 {}; class CL_NAM51 {}; class CL_NAM52 {}; class CL_NAM53 {}; class CL_NAM54 {}; class CL_NAM55 {}; class CL_NAM56 {}; class CL_NAM57 {}; class CL_NAM58 {}; class CL_NAM59 {}; class CL_NAM60 {}; class CL_NAM61 {}; class CL_NAM62 {}; class CL_NAM63 {}; class CL_NAM64 {}; class CL_NAM65 {}; class CL_NAM66 {}; class CL_NAM67 {}; class CL_NAM68 {}; class CL_NAM69 {}; class CL_NAM70 {}; class CL_NAM71 {}; class CL_NAM72 {}; class CL_NAM73 {}; class CL_NAM74 {}; class CL_NAM75 {}; class CL_NAM76 {}; class CL_NAM77 {}; class CL_NAM78 {}; class CL_NAM79 {}; class CL_NAM80 {}; class CL_NAM81 {}; class CL_NAM82 {}; class CL_NAM83 {}; class CL_NAM84 {}; class CL_NAM85 {}; class CL_NAM86 {}; class CL_NAM87 {}; class CL_NAM88 {}; class CL_NAM89 {}; class CL_NAM90 {}; class CL_NAM91 {}; class CL_NAM92 {}; class CL_NAM93 {}; class CL_NAM94 {}; class CL_NAM95 {}; class CL_NAM96 {}; class CL_NAM97 {}; class CL_NAM98 {}; class CL_NAM99 {}; class CL_NAM100 {}; class CL_NAM101 {}; class CL_NAM102 {}; class CL_NAM103 {}; class CL_NAM104 {}; class CL_NAM105 {}; class CL_NAM106 {}; class CL_NAM107 {}; class CL_NAM108 {}; class CL_NAM109 {}; class CL_NAM110 {}; class CL_NAM111 {}; class CL_NAM112 {}; class CL_NAM113 {}; class CL_NAM114 {}; class CL_NAM115 {}; class CL_NAM116 {}; class CL_NAM117 {}; class CL_NAM118 {}; class CL_NAM119 {}; class CL_NAM120 {}; class CL_NAM121 {}; class CL_NAM122 {}; class CL_NAM123 {}; class CL_NAM124 {}; class CL_NAM125 {}; class CL_NAM126 {}; class CL_NAM127 {}; class CL_NAM128 {}; class CL_NAM129 {}; class CL_NAM130 {}; class CL_NAM131 {}; class CL_NAM132 {}; class CL_NAM133 {}; class CL_NAM134 {}; class CL_NAM135 {}; class CL_NAM136 {}; class CL_NAM137 {}; class CL_NAM138 {}; class CL_NAM139 {}; class CL_NAM140 {}; class CL_NAM141 {}; class CL_NAM142 {}; class CL_NAM143 {}; class CL_NAM144 {}; class CL_NAM145 {}; class CL_NAM146 {}; class CL_NAM147 {}; class CL_NAM148 {}; class CL_NAM149 {}; class CL_NAM150 {}; class CL_NAM151 {}; class CL_NAM152 {}; class CL_NAM153 {}; class CL_NAM154 {}; class CL_NAM155 {}; class CL_NAM156 {}; class CL_NAM157 {}; class CL_NAM158 {}; class CL_NAM159 {}; class CL_NAM160 {}; class CL_NAM161 {}; class CL_NAM162 {}; class CL_NAM163 {}; class CL_NAM164 {}; class CL_NAM165 {}; class CL_NAM166 {}; class CL_NAM167 {}; class CL_NAM168 {}; class CL_NAM169 {}; class CL_NAM170 {}; class CL_NAM171 {}; class CL_NAM172 {}; class CL_NAM173 {}; class CL_NAM174 {}; class CL_NAM175 {}; class CL_NAM176 {}; class CL_NAM177 {}; class CL_NAM178 {}; class CL_NAM179 {}; class CL_NAM180 {}; class CL_NAM181 {}; class CL_NAM182 {}; class CL_NAM183 {}; class CL_NAM184 {}; class CL_NAM185 {}; class CL_NAM186 {}; class CL_NAM187 {}; class CL_NAM188 {}; class CL_NAM189 {}; class CL_NAM190 {}; class CL_NAM191 {}; class CL_NAM192 {}; class CL_NAM193 {}; class CL_NAM194 {}; class CL_NAM195 {}; class CL_NAM196 {}; class CL_NAM197 {}; class CL_NAM198 {}; class CL_NAM199 {}; class CL_NAM200 {}; class CL_NAM201 {}; class CL_NAM202 {}; class CL_NAM203 {}; class CL_NAM204 {}; class CL_NAM205 {}; class CL_NAM206 {}; class CL_NAM207 {}; class CL_NAM208 {}; class CL_NAM209 {}; class CL_NAM210 {}; class CL_NAM211 {}; class CL_NAM212 {}; class CL_NAM213 {}; class CL_NAM214 {}; class CL_NAM215 {}; class CL_NAM216 {}; class CL_NAM217 {}; class CL_NAM218 {}; class CL_NAM219 {}; class CL_NAM220 {}; class CL_NAM221 {}; class CL_NAM222 {}; class CL_NAM223 {}; class CL_NAM224 {}; class CL_NAM225 {}; class CL_NAM226 {}; class CL_NAM227 {}; class CL_NAM228 {}; class CL_NAM229 {}; class CL_NAM230 {}; class CL_NAM231 {}; class CL_NAM232 {}; class CL_NAM233 {}; class CL_NAM234 {}; class CL_NAM235 {}; class CL_NAM236 {}; class CL_NAM237 {}; class CL_NAM238 {}; class CL_NAM239 {}; class CL_NAM240 {}; class CL_NAM241 {}; class CL_NAM242 {}; class CL_NAM243 {}; class CL_NAM244 {}; class CL_NAM245 {}; class CL_NAM246 {}; class CL_NAM247 {}; class CL_NAM248 {}; class CL_NAM249 {}; class CL_NAM250 {}; class CL_NAM251 {}; class CL_NAM252 {}; class CL_NAM253 {}; class CL_NAM254 {}; class CL_NAM255 {}; 
}


class C9 {
public:
  class {
#if defined (__GNUC__)
  public:
#endif
    int a;
  };
  struct {
  };
  union {
  };
  enum {e1};
}c9obj;
struct S9 {
public:
  class {
    int a;
  }cobj;
  struct {
  }sobj;
  union {
  }uboj;
  enum {e1}eobj;
}s9obj;

namespace N9{
  class {
    int a;
  }cobj;
  struct {
  }sobj;
  union {
  }uboj;
  enum {e1}eobj;
  namespace {
    int non_name_mem;
  }
}


class C10 {
protected:
  int a:1;
  int b:2;
  char c:3;
}c10obj;
template <class T,int I> class TMP10{
  T a:I;
  int b:2;
  char c:3;
};
TMP10<int ,3> tmp10obj;

struct S10{
protected:
  int a:1;
  int b:2;
  char c:3;
};
union U10{
protected:
  int a:1;
  int b:2;
  char c:3;
};


class OP {
  int  operator +(int){return 0;}
  OP &   operator -(OP& obj){ return obj;}
  char operator *(int){return 0;}
  OP &   operator /(OP& obj){ return *this;}
  int  operator =(int){return 0;}
  int  operator ==(int){return 0;}
  int  operator !=(int){return 0;}
  int  operator >(int){return 0;}
  int  operator <(int){return 0;}
  int  operator <<(int){return 0;}
  int  operator >>(int){return 0;}
  int  operator &&(int){return 0;}
  int  operator ||(int){return 0;}
  int  operator &(int){return 0;}
  int  operator |(int){return 0;}
  int  operator ++(int){return 0;}
  int  operator --(int){return 0;}
  int  operator +=(int){return 0;}
  int  operator -=(int){return 0;}
  int  operator /=(int){return 0;}
  int  operator *=(int){return 0;}
#if __aarch64__ || __x86_64__
  void * operator new (size_t a){return 0;}
#else
  void * operator new (unsigned int a){return 0;}
#endif
  void operator delete(void *){}
};

#include <stdio.h>
int main(){
  func1();
  func2();

  puts("ok");
}
