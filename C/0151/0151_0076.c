
















  #include "001.h"





int main()
  {

  header("","ENUM IDENTIFER TEST") ;




  {
  enum tag_01 {
    enum001,enum002,enum003,enum004,enum005,enum006,enum007,
    enum008,enum009,enum010,enum011,enum012,enum013,enum014,
    enum015,enum016,enum017,enum018,enum019,enum020,enum021,
    enum022,enum023,enum024,enum025,enum026,enum027,enum028,
    enum029,enum030,enum031,enum032,enum033,enum034,enum035,
    enum036,enum037,enum038,enum039,enum040,enum041,enum042,
    enum043,enum044,enum045,enum046,enum047,enum048,enum049,
    enum050,enum051,enum052,enum053,enum054,enum055,enum056,
    enum057,enum058,enum059,enum060,enum061,enum062,enum063,
    enum064,enum065,enum066,enum067,enum068,enum069,enum070,
    enum071,enum072,enum073,enum074,enum075,enum076,enum077,
    enum078,enum079,enum080,enum081,enum082,enum083,enum084,
    enum085,enum086,enum087,enum088,enum089,enum090,enum091,
    enum092,enum093,enum094,enum095,enum096,enum097,enum098,
    enum099,enum100,enum101,enum102,enum103,enum104,enum105,
    enum106,enum107,enum108,enum109,enum110,enum111,enum112,
    enum113,enum114,enum115,enum116,enum117,enum118,enum119,
    enum120,enum121,enum122,enum123,enum124,enum125,enum126,
    enum127,enum128,enum129,enum130} enum_area ;
  int judge = 0 ;
  if (enum001 == 0) judge++ ;
  if (enum009 == 8) judge++ ;
  if (enum010 == 9) judge++ ;
  if (enum019 == 18) judge++ ;
  if (enum020 == 19) judge++ ;
  if (enum029 == 28) judge++ ;
  if (enum030 == 29) judge++ ;
  if (enum039 == 38) judge++ ;
  if (enum040 == 39) judge++ ;
  if (enum049 == 48) judge++ ;
  if (enum050 == 49) judge++ ;
  if (enum059 == 58) judge++ ;
  if (enum060 == 59) judge++ ;
  if (enum069 == 68) judge++ ;
  if (enum070 == 69) judge++ ;
  if (enum079 == 78) judge++ ;
  if (enum080 == 79) judge++ ;
  if (enum089 == 88) judge++ ;
  if (enum090 == 89) judge++ ;
  if (enum099 == 98) judge++ ;
  if (enum100 == 99) judge++ ;
  if (enum109 == 108) judge++ ;
  if (enum110 == 109) judge++ ;
  if (enum119 == 118) judge++ ;
  if (enum120 == 119) judge++ ;
  if (enum129 == 128) judge++ ;
  ichck("TKC03.01",26,judge,"enum ident more 128 test") ;
  }



  {
  enum tag_02 {
    enum001=100,enum002=200,enum003=300,enum004=400,enum005=5000,
    enum006=666,enum007=777,enum008=888,enum009=990,enum010=1010
    } enum_area ;
  int i_table[10] = {100,200,300,400,5000,666,777,888,990,1010} ;
  int i_cnt, judge = 0 ;
  for (i_cnt=0;i_cnt<10;i_cnt++) {
    enum_area = i_table[i_cnt] ;
    switch (enum_area) {
      case enum001 : judge++ ;break ;
      case enum002 : judge++ ;break ;
      case enum003 : judge++ ;break ;
      case enum004 : judge++ ;break ;
      case enum005 : judge++ ;break ;
      case enum006 : judge++ ;break ;
      case enum007 : judge++ ;break ;
      case enum008 : judge++ ;break ;
      case enum009 : judge++ ;break ;
      case enum010 : judge++ ;break ;
      default      : ;
    }
  }
  ichck("TKC03.02",10,judge,"enum ident less 127 test") ;
  }



  {
  enum  tag_03 { str001=0, str002=0, str003=0, str004=0, str005=0,
    str006=0, str007=0, str008=0, str009=0, str010=0, str011=0,
    str012=0, str013=0, str014=0, str015=0, str016=0, str017=0,
    str018=0, str019=0, str020=0, str021=0, str022=0, str023=0,
    str024=0, str025=0, str026=0, str027=0, str028=0, str029=0,
    str030=0, str031=0, str032=0, str033=0, str034=0, str035=0,
    str036=0, str037=0, str038=0, str039=0, str040=0, str041=0,
    str042=0, str043=0, str044=0, str045=0, str046=0, str047=0,
    str048=0, str049=0, str050=0, str051=0, str052=0, str053=0,
    str054=0, str055=0, str056=0, str057=0, str058=0, str059=0,
    str060=0, str061=0, str062=0, str063=0, str064=0, str065=0,
    str066=0, str067=0, str068=0, str069=0, str070=0, str071=0,
    str072=0, str073=0, str074=0, str075=0, str076=0, str077=0,
    str078=0, str079=0, str080=0, str081=0, str082=0, str083=0,
    str084=0, str085=0, str086=0, str087=0, str088=0, str089=0,
    str090=0, str091=0, str092=0, str093=0, str094=0, str095=0,
    str096=0, str097=0, str098=0, str099=0, str100=0, str101=0,
    str102=0, str103=0, str104=0, str105=0, str106=0, str107=0,
    str108=0, str109=0, str110=0, str111=0, str112=0, str113=0,
    str114=0, str115=0, str116=0, str117=0, str118=0, str119=0,
    str120=0, str121=0, str122=0, str123=0, str124=0, str125=0,
    str126=0, str127=0, str128=0, str129=0, str130=0} enum_area ;
  int judge = 0 ;
  if (str001==0) judge++ ;
  if (str010==0) judge++ ;
  if (str020==0) judge++ ;
  if (str030==0) judge++ ;
  if (str040==0) judge++ ;
  if (str050==0) judge++ ;
  if (str060==0) judge++ ;
  if (str070==0) judge++ ;
  if (str080==0) judge++ ;
  if (str090==0) judge++ ;
  if (str100==0) judge++ ;
  if (str111==0) judge++ ;
  if (str121==0) judge++ ;
  ichck("TKC03.03",13,judge,"enum ident more 128 test") ;
  }



  {
  int judge = 0 ;
#if defined(os2)
  enum {TYP001=32759,TYP002,TYP003,TYP004,TYP005,TYP006,
TYP007,TYP008,TYP009,TYP010=32767,
TYP011=32759,TYP012,TYP013,TYP014,TYP015,TYP016,
TYP017,TYP018,TYP019,TYP020=32767,
TYP021=32759,TYP022,TYP023,TYP024,TYP025,TYP026,
TYP027,TYP028,TYP029,TYP030=32767,
TYP031=32759,TYP032,TYP033,TYP034,TYP035,TYP036,
TYP037,TYP038,TYP039,TYP040=32767,
TYP041=32759,TYP042,TYP043,TYP044,TYP045,TYP046,
TYP047,TYP048,TYP049,TYP050=32767,
TYP051=32759,TYP052,TYP053,TYP054,TYP055,TYP056,
TYP057,TYP058,TYP059,TYP060=32767,
TYP061=32759,TYP062,TYP063,TYP064,TYP065,TYP066,
TYP067,TYP068,TYP069,TYP070=32767,
TYP071=32759,TYP072,TYP073,TYP074,TYP075,TYP076,
TYP077,TYP078,TYP079,TYP080=32767,
TYP081=32759,TYP082,TYP083,TYP084,TYP085,TYP086,
TYP087,TYP088,TYP089,TYP090=32767,
TYP091=32759,TYP092,TYP093,TYP094,TYP095,TYP096,
TYP097,TYP098,TYP099,TYP100=32767,
TYP101=32759,TYP102,TYP103,TYP104,TYP105,TYP106,
TYP107,TYP108,TYP109,TYP110=32767,
TYP111=32759,TYP112,TYP113,TYP114,TYP115,TYP116,
TYP117,TYP118,TYP119,TYP120=32767,
TYP121=32759,TYP122,TYP123,TYP124,TYP125,TYP126,TYP127} enum_area ;
    if (TYP009==32767) judge++ ;
    if (TYP010==32767) judge++ ;
    if (TYP019==32767) judge++ ;
    if (TYP020==32767) judge++ ;
    if (TYP029==32767) judge++ ;
    if (TYP030==32767) judge++ ;
    if (TYP039==32767) judge++ ;
    if (TYP040==32767) judge++ ;
    if (TYP049==32767) judge++ ;
    if (TYP050==32767) judge++ ;
    if (TYP059==32767) judge++ ;
    if (TYP060==32767) judge++ ;
    if (TYP069==32767) judge++ ;
    if (TYP070==32767) judge++ ;
    if (TYP079==32767) judge++ ;
    if (TYP080==32767) judge++ ;
    if (TYP089==32767) judge++ ;
    if (TYP090==32767) judge++ ;
    if (TYP099==32767) judge++ ;
    if (TYP100==32767) judge++ ;
    if (TYP109==32767) judge++ ;
    if (TYP110==32767) judge++ ;
    if (TYP119==32767) judge++ ;
    if (TYP120==32767) judge++ ;
    if (TYP127==32765) judge++ ;
#else
  enum {TYP001=2147483639,TYP002,TYP003,TYP004,TYP005,TYP006,
TYP007,TYP008,TYP009,TYP010=2147483647,
TYP011=2147483639,TYP012,TYP013,TYP014,TYP015,TYP016,
TYP017,TYP018,TYP019,TYP020=2147483647,
TYP021=2147483639,TYP022,TYP023,TYP024,TYP025,TYP026,
TYP027,TYP028,TYP029,TYP030=2147483647,
TYP031=2147483639,TYP032,TYP033,TYP034,TYP035,TYP036,
TYP037,TYP038,TYP039,TYP040=2147483647,
TYP041=2147483639,TYP042,TYP043,TYP044,TYP045,TYP046,
TYP047,TYP048,TYP049,TYP050=2147483647,
TYP051=2147483639,TYP052,TYP053,TYP054,TYP055,TYP056,
TYP057,TYP058,TYP059,TYP060=2147483647,
TYP061=2147483639,TYP062,TYP063,TYP064,TYP065,TYP066,
TYP067,TYP068,TYP069,TYP070=2147483647,
TYP071=2147483639,TYP072,TYP073,TYP074,TYP075,TYP076,
TYP077,TYP078,TYP079,TYP080=2147483647,
TYP081=2147483639,TYP082,TYP083,TYP084,TYP085,TYP086,
TYP087,TYP088,TYP089,TYP090=2147483647,
TYP091=2147483639,TYP092,TYP093,TYP094,TYP095,TYP096,
TYP097,TYP098,TYP099,TYP100=2147483647,
TYP101=2147483639,TYP102,TYP103,TYP104,TYP105,TYP106,
TYP107,TYP108,TYP109,TYP110=2147483647,
TYP111=2147483639,TYP112,TYP113,TYP114,TYP115,TYP116,
TYP117,TYP118,TYP119,TYP120=2147483647,
TYP121=2147483639,TYP122,TYP123,TYP124,TYP125,TYP126,
TYP127 } enum_area ;
    if (TYP009==2147483647) judge++ ;
    if (TYP010==2147483647) judge++ ;
    if (TYP019==2147483647) judge++ ;
    if (TYP020==2147483647) judge++ ;
    if (TYP029==2147483647) judge++ ;
    if (TYP030==2147483647) judge++ ;
    if (TYP039==2147483647) judge++ ;
    if (TYP040==2147483647) judge++ ;
    if (TYP049==2147483647) judge++ ;
    if (TYP050==2147483647) judge++ ;
    if (TYP059==2147483647) judge++ ;
    if (TYP060==2147483647) judge++ ;
    if (TYP069==2147483647) judge++ ;
    if (TYP070==2147483647) judge++ ;
    if (TYP079==2147483647) judge++ ;
    if (TYP080==2147483647) judge++ ;
    if (TYP089==2147483647) judge++ ;
    if (TYP090==2147483647) judge++ ;
    if (TYP099==2147483647) judge++ ;
    if (TYP100==2147483647) judge++ ;
    if (TYP109==2147483647) judge++ ;
    if (TYP110==2147483647) judge++ ;
    if (TYP119==2147483647) judge++ ;
    if (TYP120==2147483647) judge++ ;
    if (TYP127==2147483645) judge++ ;
#endif
  ichck("TKC03.04",25,judge,"enum ident less 127 test") ;
  }

  header("","ENUM IDENTIFER TEST") ;
  }
