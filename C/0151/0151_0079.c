
  #include "001.h"

int main()
  {

  header("","STRING LETELAL TEST") ;

  {
  char char_01[10] = "?'?'?''?'" ;

  schck("TKC05.01","?'?'?''?'",char_01,"string letelal ? test") ;
  }
  {
  char char_02[100] = "ABCDEFGHIJKLMNOPQRSTUVWXYZ\
abcdefghijklmnopqrstuvwxyz\
0123456789\
!\"%&()*+,-./:;<=>?[\\]^{|}-_#" ;

  schck("TKC05.02",
  "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789\
!\"%&()*+,-./:;<=>?[\\]^{|}-_#",char_02,
  "string letelal source group test") ;
  }
  {
  char char_03[100] = "\'STRING\'"  "\'TEST\'" "\'single quote\'" ;
  int  i_cnt=0,judge=0 ;
  if (char_03[0]  == '\'' ) judge++ ;
  if (char_03[7]  == '\'' ) judge++ ;
  if (char_03[8]  == '\'' ) judge++ ;
  if (char_03[13] == '\'' ) judge++ ;
  if (char_03[14] == '\'' ) judge++ ;
  if (char_03[27] == '\'' ) judge++ ;
  schck("TKC05.03","\'STRING\'\'TEST\'\'single quote\'",char_03,
                    "string letelal extend single quote test");
  }
  {
  char char_04[10] = "\?\?\?\?\?\?\
\?\?\?" ;
  int  i_cnt=0,judge=0 ;
  while(char_04[i_cnt]) {
     switch (char_04[i_cnt]) {
       case '?' : judge++ ;break ;
       default  : judge-- ;
       }
  i_cnt++ ;
  }
  schck("TKC05.04","\?\?\?\?\?\?\?\?\?",char_04,
                    "string letelal extend question");
  }
  {
  char char_05[200] =
 "\fabcdefghijklmnopqrstuvwxyz"
   "abcdef\fghijklmnopqrstuvwxyz"
     "abcdefghij\fklmnopqrstuvwxyz"
        "abcdefghijklmnopqrst\fuvwxyz"
           "abcdefghijklmnopqrstuvwxyz\f" ;
  schck("TKC05.05","\fabcdefghijklmnopqrstuvwxyz"
                     "abcdef\fghijklmnopqrstuvwxyz"
                       "abcdefghij\fklmnopqrstuvwxyz"
                         "abcdefghijklmnopqrst\fuvwxyz"
                           "abcdefghijklmnopqrstuvwxyz\f",
                    char_05,"string letelal extend \\f") ;
  }
  {
  char char_06[200] =
"*\n*abcdefghijklmnopqrstuvwxyz\
abcdef*\n*ghijklmnopqrstuvwxyz\
abcdefghij*\n*klmnopqrstuvwxyz\
abcdefghijklmnopqrst*\n*uvwxyz\
abcdefghijklmnopqrstuvwxyz*\n" ;

  schck("TKC05.06","*\n*abcdefghijklmnopqrstuvwxyz"
                            "abcdef*\n*ghijklmnopqrstuvwxyz"
                             "abcdefghij*\n*klmnopqrstuvwxyz"
                              "abcdefghijklmnopqrst*\n*uvwxyz"
                               "abcdefghijklmnopqrstuvwxyz*\n",
          char_06,"string letelal extend \\n") ;
  }
  {
#if !defined(os2)
  char char_07[4001] =
"\r0123456789!abcdefghijklmnopqrstuvwxyz!/*    50 */\
\r0123456789!abcdefghijklmnopqrstuvwxyz!/*   100 */\
\r0123456789!abcdefghijklmnopqrstuvwxyz!/*   150 */\
\r0123456789!abcdefghijklmnopqrstuvwxyz!/*   200 */\
\r0123456789!abcdefghijklmnopqrstuvwxyz!/*   250 */\
\r0123456789!abcdefghijklmnopqrstuvwxyz!/*   300 */\
\r0123456789!abcdefghijklmnopqrstuvwxyz!/*   350 */\
\r0123456789!abcdefghijklmnopqrstuvwxyz!/*   400 */\
\r0123456789!abcdefghijklmnopqrstuvwxyz!/*   450 */\
\r0123456789!abcdefghijklmnopqrstuvwxyz!/*   500 */\
\r0123456789!abcdefghijklmnopqrstuvwxyz!/*   550 */\
\r0123456789!abcdefghijklmnopqrstuvwxyz!/*   600 */\
\r0123456789!abcdefghijklmnopqrstuvwxyz!/*   650 */\
\r0123456789!abcdefghijklmnopqrstuvwxyz!/*   700 */\
\r0123456789!abcdefghijklmnopqrstuvwxyz!/*   750 */\
\r0123456789!abcdefghijklmnopqrstuvwxyz!/*   800 */\
\r0123456789!abcdefghijklmnopqrstuvwxyz!/*   850 */\
\r0123456789!abcdefghijklmnopqrstuvwxyz!/*   900 */\
\r0123456789!abcdefghijklmnopqrstuvwxyz!/*   950 */\
\r0123456789!abcdefghijklmnopqrstuvwxyz!/*  1000 */\
\r0123456789!abcdefghijklmnopqrstuvwxyz!/*  1050 */\
\r0123456789!abcdefghijklmnopqrstuvwxyz!/*  1100 */\
\r0123456789!abcdefghijklmnopqrstuvwxyz!/*  1150 */\
\r0123456789!abcdefghijklmnopqrstuvwxyz!/*  1200 */\
\r0123456789!abcdefghijklmnopqrstuvwxyz!/*  1250 */\
\r0123456789!abcdefghijklmnopqrstuvwxyz!/*  1300 */\
\r0123456789!abcdefghijklmnopqrstuvwxyz!/*  1350 */\
\r0123456789!abcdefghijklmnopqrstuvwxyz!/*  1400 */\
\r0123456789!abcdefghijklmnopqrstuvwxyz!/*  1450 */\
\r0123456789!abcdefghijklmnopqrstuvwxyz!/*  1500 */\
\r0123456789!abcdefghijklmnopqrstuvwxyz!/*  1550 */\
\r0123456789!abcdefghijklmnopqrstuvwxyz!/*  1600 */\
\r0123456789!abcdefghijklmnopqrstuvwxyz!/*  1650 */\
\r0123456789!abcdefghijklmnopqrstuvwxyz!/*  1700 */\
\r0123456789!abcdefghijklmnopqrstuvwxyz!/*  1750 */\
\r0123456789!abcdefghijklmnopqrstuvwxyz!/*  1800 */\
\r0123456789!abcdefghijklmnopqrstuvwxyz!/*  1850 */\
\r0123456789!abcdefghijklmnopqrstuvwxyz!/*  1900 */\
\r0123456789!abcdefghijklmnopqrstuvwxyz!/*  1950 */\
\r0123456789!abcdefghijklmnopqrstuvwxyz!/*  2000 */\
\r0123456789!abcdefghijklmnopqrstuvwxyz!/*  2050 */\
\r0123456789!abcdefghijklmnopqrstuvwxyz!/*  2100 */\
\r0123456789!abcdefghijklmnopqrstuvwxyz!/*  2150 */\
\r0123456789!abcdefghijklmnopqrstuvwxyz!/*  2200 */\
\r0123456789!abcdefghijklmnopqrstuvwxyz!/*  2250 */\
\r0123456789!abcdefghijklmnopqrstuvwxyz!/*  2300 */\
\r0123456789!abcdefghijklmnopqrstuvwxyz!/*  2350 */\
\r0123456789!abcdefghijklmnopqrstuvwxyz!/*  2400 */\
\r0123456789!abcdefghijklmnopqrstuvwxyz!/*  2450 */\
\r0123456789!abcdefghijklmnopqrstuvwxyz!/*  2500 */\
\r0123456789!abcdefghijklmnopqrstuvwxyz!/*  2550 */\
\r0123456789!abcdefghijklmnopqrstuvwxyz!/*  2600 */\
\r0123456789!abcdefghijklmnopqrstuvwxyz!/*  2650 */\
\r0123456789!abcdefghijklmnopqrstuvwxyz!/*  2700 */\
\r0123456789!abcdefghijklmnopqrstuvwxyz!/*  2750 */\
\r0123456789!abcdefghijklmnopqrstuvwxyz!/*  2800 */\
\r0123456789!abcdefghijklmnopqrstuvwxyz!/*  2850 */\
\r0123456789!abcdefghijklmnopqrstuvwxyz!/*  2900 */\
\r0123456789!abcdefghijklmnopqrstuvwxyz!/*  2950 */\
\r0123456789!abcdefghijklmnopqrstuvwxyz!/*  3000 */\
\r0123456789!abcdefghijklmnopqrstuvwxyz!/*  3050 */\
\r0123456789!abcdefghijklmnopqrstuvwxyz!/*  3100 */\
\r0123456789!abcdefghijklmnopqrstuvwxyz!/*  3150 */\
\r0123456789!abcdefghijklmnopqrstuvwxyz!/*  3200 */\
\r0123456789!abcdefghijklmnopqrstuvwxyz!/*  3250 */\
\r0123456789!abcdefghijklmnopqrstuvwxyz!/*  3300 */\
\r0123456789!abcdefghijklmnopqrstuvwxyz!/*  3350 */\
\r0123456789!abcdefghijklmnopqrstuvwxyz!/*  3400 */\
\r0123456789!abcdefghijklmnopqrstuvwxyz!/*  3450 */\
\r0123456789!abcdefghijklmnopqrstuvwxyz!/*  3500 */\
\r0123456789!abcdefghijklmnopqrstuvwxyz!/*  3550 */\
\r0123456789!abcdefghijklmnopqrstuvwxyz!/*  3600 */\
\r0123456789!abcdefghijklmnopqrstuvwxyz!/*  3650 */\
\r0123456789!abcdefghijklmnopqrstuvwxyz!/*  3700 */\
\r0123456789!abcdefghijklmnopqrstuvwxyz!/*  3750 */\
\r0123456789!abcdefghijklmnopqrstuvwxyz!/*  3800 */\
\r0123456789!abcdefghijklmnopqrstuvwxyz!/*  3850 */\
\r0123456789!abcdefghijklmnopqrstuvwxyz!/*  3900 */\
\r0123456789!abcdefghijklmnopqrstuvwxyz!/*  3950 */";
  int judge=0 ;
  if (char_07[0]    == 0x0D) judge++ ;
  if (char_07[50]    == 0x0D) judge++ ;
  if (char_07[1000]  == 0x0D) judge++ ;
  if (char_07[2000]  == 0x0D) judge++ ;
  if (char_07[3000]  == 0x0D) judge++ ;
  ichck("TKC05.07",5,judge,"string letelal extend \\r") ;
#endif
  }
  {
#if !defined(os2)
  char char_08[4001] =
   "0123456789!abcdefghijklmnopqrstuvwxyz!/*    50 */\0"
   "0123456789!abcdefghijklmnopqrstuvwxyz!/*   100 */\0"
   "0123456789!abcdefghijklmnopqrstuvwxyz!/*   150 */\0"
   "0123456789!abcdefghijklmnopqrstuvwxyz!/*   200 */\0"
   "0123456789!abcdefghijklmnopqrstuvwxyz!/*   250 */\0"
   "0123456789!abcdefghijklmnopqrstuvwxyz!/*   300 */\0"
   "0123456789!abcdefghijklmnopqrstuvwxyz!/*   350 */\0"
   "0123456789!abcdefghijklmnopqrstuvwxyz!/*   400 */\0"
   "0123456789!abcdefghijklmnopqrstuvwxyz!/*   450 */\0"
   "0123456789!abcdefghijklmnopqrstuvwxyz!/*   500 */\0"
   "0123456789!abcdefghijklmnopqrstuvwxyz!/*   550 */\0"
   "0123456789!abcdefghijklmnopqrstuvwxyz!/*   600 */\0"
   "0123456789!abcdefghijklmnopqrstuvwxyz!/*   650 */\0"
   "0123456789!abcdefghijklmnopqrstuvwxyz!/*   700 */\0"
   "0123456789!abcdefghijklmnopqrstuvwxyz!/*   750 */\0"
   "0123456789!abcdefghijklmnopqrstuvwxyz!/*   800 */\0"
   "0123456789!abcdefghijklmnopqrstuvwxyz!/*   850 */\0"
   "0123456789!abcdefghijklmnopqrstuvwxyz!/*   900 */\0"
   "0123456789!abcdefghijklmnopqrstuvwxyz!/*   950 */\0"
   "0123456789!abcdefghijklmnopqrstuvwxyz!/*  1000 */\0"
   "0123456789!abcdefghijklmnopqrstuvwxyz!/*  1050 */\0"
   "0123456789!abcdefghijklmnopqrstuvwxyz!/*  1100 */\0"
   "0123456789!abcdefghijklmnopqrstuvwxyz!/*  1150 */\0"
   "0123456789!abcdefghijklmnopqrstuvwxyz!/*  1200 */\0"
   "0123456789!abcdefghijklmnopqrstuvwxyz!/*  1250 */\0"
   "0123456789!abcdefghijklmnopqrstuvwxyz!/*  1300 */\0"
   "0123456789!abcdefghijklmnopqrstuvwxyz!/*  1350 */\0"
   "0123456789!abcdefghijklmnopqrstuvwxyz!/*  1400 */\0"
   "0123456789!abcdefghijklmnopqrstuvwxyz!/*  1450 */\0"
   "0123456789!abcdefghijklmnopqrstuvwxyz!/*  1500 */\0"
   "0123456789!abcdefghijklmnopqrstuvwxyz!/*  1550 */\0"
   "0123456789!abcdefghijklmnopqrstuvwxyz!/*  1600 */\0"
   "0123456789!abcdefghijklmnopqrstuvwxyz!/*  1650 */\0"
   "0123456789!abcdefghijklmnopqrstuvwxyz!/*  1700 */\0"
   "0123456789!abcdefghijklmnopqrstuvwxyz!/*  1750 */\0"
   "0123456789!abcdefghijklmnopqrstuvwxyz!/*  1800 */\0"
   "0123456789!abcdefghijklmnopqrstuvwxyz!/*  1850 */\0"
   "0123456789!abcdefghijklmnopqrstuvwxyz!/*  1900 */\0"
   "0123456789!abcdefghijklmnopqrstuvwxyz!/*  1950 */\0"
   "0123456789!abcdefghijklmnopqrstuvwxyz!/*  2000 */\0"
   "0123456789!abcdefghijklmnopqrstuvwxyz!/*  2050 */\0"
   "0123456789!abcdefghijklmnopqrstuvwxyz!/*  2100 */\0"
   "0123456789!abcdefghijklmnopqrstuvwxyz!/*  2150 */\0"
   "0123456789!abcdefghijklmnopqrstuvwxyz!/*  2200 */\0"
   "0123456789!abcdefghijklmnopqrstuvwxyz!/*  2250 */\0"
   "0123456789!abcdefghijklmnopqrstuvwxyz!/*  2300 */\0"
   "0123456789!abcdefghijklmnopqrstuvwxyz!/*  2350 */\0"
   "0123456789!abcdefghijklmnopqrstuvwxyz!/*  2400 */\0"
   "0123456789!abcdefghijklmnopqrstuvwxyz!/*  2450 */\0"
   "0123456789!abcdefghijklmnopqrstuvwxyz!/*  2500 */\0"
   "0123456789!abcdefghijklmnopqrstuvwxyz!/*  2550 */\0"
   "0123456789!abcdefghijklmnopqrstuvwxyz!/*  2600 */\0"
   "0123456789!abcdefghijklmnopqrstuvwxyz!/*  2650 */\0"
   "0123456789!abcdefghijklmnopqrstuvwxyz!/*  2700 */\0"
   "0123456789!abcdefghijklmnopqrstuvwxyz!/*  2750 */\0"
   "0123456789!abcdefghijklmnopqrstuvwxyz!/*  2800 */\0"
   "0123456789!abcdefghijklmnopqrstuvwxyz!/*  2850 */\0"
   "0123456789!abcdefghijklmnopqrstuvwxyz!/*  2900 */\0"
   "0123456789!abcdefghijklmnopqrstuvwxyz!/*  2950 */\0"
   "0123456789!abcdefghijklmnopqrstuvwxyz!/*  3000 */\0"
   "0123456789!abcdefghijklmnopqrstuvwxyz!/*  3050 */\0"
   "0123456789!abcdefghijklmnopqrstuvwxyz!/*  3100 */\0"
   "0123456789!abcdefghijklmnopqrstuvwxyz!/*  3150 */\0"
   "0123456789!abcdefghijklmnopqrstuvwxyz!/*  3200 */\0"
   "0123456789!abcdefghijklmnopqrstuvwxyz!/*  3250 */\0"
   "0123456789!abcdefghijklmnopqrstuvwxyz!/*  3300 */\0"
   "0123456789!abcdefghijklmnopqrstuvwxyz!/*  3350 */\0"
   "0123456789!abcdefghijklmnopqrstuvwxyz!/*  3400 */\0"
   "0123456789!abcdefghijklmnopqrstuvwxyz!/*  3450 */\0"
   "0123456789!abcdefghijklmnopqrstuvwxyz!/*  3500 */\0"
   "0123456789!abcdefghijklmnopqrstuvwxyz!/*  3550 */\0"
   "0123456789!abcdefghijklmnopqrstuvwxyz!/*  3600 */\0"
   "0123456789!abcdefghijklmnopqrstuvwxyz!/*  3650 */\0"
   "0123456789!abcdefghijklmnopqrstuvwxyz!/*  3700 */\0"
   "0123456789!abcdefghijklmnopqrstuvwxyz!/*  3750 */\0"
   "0123456789!abcdefghijklmnopqrstuvwxyz!/*  3800 */\0"
   "0123456789!abcdefghijklmnopqrstuvwxyz!/*  3850 */\0"
   "0123456789!abcdefghijklmnopqrstuvwxyz!/*  3900 */\0"
   "0123456789!abcdefghijklmnopqrstuvwxyz!/*  3950 */\0" ;
  int  i=0,judge=0 ;
  if (char_08[49]    == 0x00) judge++ ;
  if (char_08[99]    == 0x00) judge++ ;
  if (char_08[1999]  == 0x00) judge++ ;
  if (char_08[2999]  == 0x00) judge++ ;
  if (char_08[3949]  == 0x00) judge++ ;
  ichck("TKC05.08",5,judge,"string letelal extend \\0") ;
#endif
  }
  {
  char char_09[20] =
#if defined(msp)
 "\242\243\231\211\225\207 \
\243\205\242\243" ;
#else
 "\163\164\162\151\156\147 \
\164\145\163\164" ;
#endif

  schck("TKC05.09","string test",char_09,"string letelal oct") ;
  }
  {
#if defined(msp)
  char char_10[100] = "\242\243\231\211\225\207" 
                      "string"                   
                      "\242\243\231\211\225\207" 
                      "\242\243\231\211\225\207" 
                      "\242\243\231\211\225\207" 
                      "\242\243\231\211\225\207" 
                      "\242\243\231\211\225\207" 
                      "string"                   
                      "\242\243\231\211\225\207" 
                      "\242\243\231\211\225\207" 
                      "\242\243\231\211\225\207" 
                      "\242\243r\211\225\207"    
                      "\242\243\231\211\225\207" 
                      "\242\243\231\211\225\207" 
                      "\242\243\231\211\225\207" 
                      "\242\243\231\211\225g";   
#else
  char char_10[100] = "\163\164\162\151\156\147" 
                      "string"                   
                      "\163\164\162\151\156\147" 
                      "\163\164\162\151\156\147" 
                      "\163\164\162\151\156\147" 
                      "\163\164\162\151\156\147" 
                      "\163\164\162\151\156\147" 
                      "string"                   
                      "\163\164\162\151\156\147" 
                      "\163\164\162\151\156\147" 
                      "\163\164\162\151\156\147" 
                      "\163\164r\151\156\147"    
                      "\163\164\162\151\156\147" 
                      "\163\164\162\151\156\147" 
                      "\163\164\162\151\156\147" 
                      "\163\164\162\151\156g";   
#endif

  schck("TKC05.10","stringstringstringstringstringstring"
                           "stringstringstringstringstringstring"
                           "stringstringstringstring",
             char_10,"string letelal oct") ;
  }
  {
#if defined(msp)
  char char_11[10] = "\xa2\xa3"   "\x99\x89\x95\x87" ; 
#else
  char char_11[10] = "\x73\x74"   "\x72\x69\x6e\x67" ; 
#endif

  schck("TKC05.11","string",char_11,"string letelal hex") ;
  }
  {
#if defined(msp)
  char char_12[151] = "\xa2\xa3\x99\x89\x95\x87\xf0\xf1\xf3\xf4\
\xa2\xa3\x99\x89\x95\x87\xf0\xf1\xf3\xf4\
\xa2\xa3\x99\x89\x95\x87\xf0\xf1\xf3\xf4\
\xa2\xa3\x99\x89\x95\x87\xf0\xf1\xf3\xf4\
\xa2\xa3\x99\x89\x95\x87\xf0\xf1\xf3\xf4\
\xa2\xa3\x99\x89\x95\x87\xf0\xf1\xf3\xf4\
\xa2\xa3\x99\x89\x95\x87\xf0\xf1\xf3\xf4\
\xa2\xa3\x99\x89\x95\x87\xf0\xf1\xf3\xf4\
\xa2\xa3\x99\x89\x95\x87\xf0\xf1\xf3\xf4\
\xa2\xa3\x99\x89\x95\x87\xf0\xf1\xf3\xf4\
\xa2\xa3\x99\x89\x95\x87\xf0\xf1\xf3\xf4\
\xa2\xa3\x99\x89\x95\x87\xf0\xf1\xf3\xf4\
\xa2\xa3\x99\x89\x95\x87\xf0\xf1\xf3\xf4\
\xa2\xa3\x99\x89\x95\x87\xf0\xf1\xf3\xf4\
\xa2\xa3\x99\x89\x95\x87\xf0\xf1\xf3\xf4" ;
#else
  char char_12[151] = "\x73\x74\x72\x69\x6e\x67\x30\x31\x33\x34\
\x73\x74\x72\x69\x6e\x67\x30\x31\x33\x34\
\x73\x74\x72\x69\x6e\x67\x30\x31\x33\x34\
\x73\x74\x72\x69\x6e\x67\x30\x31\x33\x34\
\x73\x74\x72\x69\x6e\x67\x30\x31\x33\x34\
\x73\x74\x72\x69\x6e\x67\x30\x31\x33\x34\
\x73\x74\x72\x69\x6e\x67\x30\x31\x33\x34\
\x73\x74\x72\x69\x6e\x67\x30\x31\x33\x34\
\x73\x74\x72\x69\x6e\x67\x30\x31\x33\x34\
\x73\x74\x72\x69\x6e\x67\x30\x31\x33\x34\
\x73\x74\x72\x69\x6e\x67\x30\x31\x33\x34\
\x73\x74\x72\x69\x6e\x67\x30\x31\x33\x34\
\x73\x74\x72\x69\x6e\x67\x30\x31\x33\x34\
\x73\x74\x72\x69\x6e\x67\x30\x31\x33\x34\
\x73\x74\x72\x69\x6e\x67\x30\x31\x33\x34" ;
#endif
  int  i_cnt=0,judge=0 ;
  while(char_12[i_cnt]) {
     switch (char_12[i_cnt]) {
       case 's' : judge++ ;break ;
       case 't' : judge++ ;break ;
       case 'r' : judge++ ;break ;
       case 'i' : judge++ ;break ;
       case 'n' : judge++ ;break ;
       case 'g' : judge++ ;break ;
       case '0' : judge++ ;break ;
       case '1' : judge++ ;break ;
       case '2' : judge++ ;break ;
       case '3' : judge++ ;break ;
       case '4' : judge++ ;break ;
       default  : judge-- ;
       }
  i_cnt++ ;
  }
  ichck("TKC05.12",150,judge,"string letelal hex") ;
  }

  header("","STRING LETELAL TEST") ;
  }
