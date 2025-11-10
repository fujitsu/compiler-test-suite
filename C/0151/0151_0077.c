
















  #include "001.h"



  char char_001 = 'A' ;
  char char_002 = 'B' ;
  char char_003 = 'C' ;
  char char_004 = 'D' ;
  char char_005 = 'E' ;
  char char_006 = 'F' ;
  char char_007 = 'G' ;
  char char_008 = 'H' ;
  char char_009 = 'I' ;
  char char_010 = 'J' ;
  char char_011 = 'K' ;
  char char_012 = 'L' ;
  char char_013 = 'M' ;
  char char_014 = 'N' ;
  char char_015 = 'O' ;
  char char_016 = 'P' ;
  char char_017 = 'Q' ;
  char char_018 = 'R' ;
  char char_019 = 'S' ;
  char char_020 = 'T' ;
  char char_021 = 'U' ;
  char char_022 = 'V' ;
  char char_023 = 'W' ;
  char char_024 = 'X' ;
  char char_025 = 'Y' ;
  char char_026 = 'Z' ;
  char char_027 = 'a' ;
  char char_028 = 'b' ;
  char char_029 = 'c' ;
  char char_030 = 'd' ;
  char char_031 = 'e' ;
  char char_032 = 'f' ;
  char char_033 = 'g' ;
  char char_034 = 'h' ;
  char char_035 = 'i' ;
  char char_036 = 'j' ;
  char char_037 = 'k' ;
  char char_038 = 'l' ;
  char char_039 = 'm' ;
  char char_040 = 'n' ;
  char char_041 = 'o' ;
  char char_042 = 'p' ;
  char char_043 = 'q' ;
  char char_044 = 'r' ;
  char char_045 = 's' ;
  char char_046 = 't' ;
  char char_047 = 'u' ;
  char char_048 = 'v' ;
  char char_049 = 'w' ;
  char char_050 = 'x' ;
  char char_051 = 'y' ;
  char char_052 = 'z' ;
  char char_053 = '0' ;
  char char_054 = '1' ;
  char char_055 = '2' ;
  char char_056 = '3' ;
  char char_057 = '4' ;
  char char_058 = '5' ;
  char char_059 = '6' ;
  char char_060 = '7' ;
  char char_061 = '8' ;
  char char_062 = '9' ;
  char char_063 = '!' ;
  char char_064 = '"' ;
  char char_065 = '#' ;
  char char_066 = '%' ;
  char char_067 = '&' ;
  char char_068 = '\'';
  char char_069 = '(' ;
  char char_070 = ')' ;
  char char_071 = '*' ;
  char char_072 = '+' ;
  char char_073 = ',' ;
  char char_074 = '-' ;
  char char_075 = '.' ;
  char char_076 = '/' ;
  char char_077 = ':' ;
  char char_078 = ';' ;
  char char_079 = '<' ;
  char char_080 = '=' ;
  char char_081 = '>' ;
  char char_082 = '?' ;
  char char_083 = '[' ;
  char char_084 = '\\';
  char char_085 = ']' ;
  char char_086 = '^' ;
  char char_087 = '_' ;
  char char_088 = '{' ;
  char char_089 = '|' ;
  char char_090 = '}' ;
  char char_091 = ' ' ;





int main()
  {

  header("","CHAR CONSTANT TEST") ;




  {
  int  judge = 0 ;
  char char_w_quote ;
  char_w_quote = '"' ;
  switch (char_w_quote) {
     case 'a' : break ;
     case 'b' : break ;
     case 'c' : break ;
     case 'd' : break ;
     case 'e' : break ;
     case '"' : judge++ ;break ;
     default  : ;
     }
  ichck("TKC04.01",1,judge,"char constant w quote test") ;
  }



  {
  int  judge = 0 ;
  char char_question ;
  char_question = '?' ;
  if (char_question=='a') judge-- ;
  else if (char_question=='a') judge-- ;
   else if (char_question=='b') judge-- ;
    else if (char_question=='c') judge-- ;
     else if (char_question=='d') judge-- ;
      else if (char_question=='e') judge-- ;
       else if (char_question=='f') judge-- ;
        else if (char_question=='g') judge-- ;
         else if (char_question=='h') judge-- ;
          else if (char_question=='i') judge-- ;
           else if (char_question=='j') judge-- ;
            else if (char_question=='k') judge-- ;
             else if (char_question=='?') judge++ ;
              else judge=-2147483648 ;
  ichck("TKC04.02",1,judge,"char constant question test") ;
  }



  {
  int  judge = 0 ;
  char char_s_quote ;
  char char_table[2] = "'" ;
  char_s_quote = '\'' ;
  if (char_s_quote == char_table[0]) judge++ ;
  ichck("TKC04.03",1,judge,"char constant single quote test") ;
  }



  {
  int  judge = 0 ;
  char char_w_quote ;
  char_w_quote = '\"' ;
  if (char_w_quote == '"') judge++ ;
  ichck("TKC04.04",1,judge,"char constant w-quote test") ;
  }



  {
  int  judge = 0 ;
  char char_question ;
  char_question = '\?' ;
  if (char_question == '?') judge++ ;
  ichck("TKC04.05",1,judge,"char constant question test") ;
  }



  {
  int  judge = 0 ;
  char char_backs ;
  char_backs = '\\' ;
#if defined(msp)
  if (char_backs == 0xE0) judge++ ; 
#else
  if (char_backs == 0x5c) judge++ ; 
#endif
  ichck("TKC04.06",1,judge,"char constant back srash test") ;
  }



  {
  char char_backs_a = '\a' ;
  char char_backs_b = '\b' ;
  char char_backs_f = '\f' ;
  char char_backs_n = '\n' ;
  char char_backs_r = '\r' ;
  char char_backs_t = '\t' ;
  char char_backs_0 = '\0' ;

  int  judge = 0 ;
  char char_backs_v ;
  char_backs_v = '\v' ;
  if (char_backs_v == 0x0B) judge++ ; 
  ichck("TKC04.07",1,judge,"char constant back srash v test") ;
  }



  {
  int  judge = 0;
  char char_oct ;
#if defined(msp)
  char_oct = '\5' ;               
  if (char_oct == '\t') judge++ ;
#else
  char_oct = '\5' ;               
  if (char_oct == 0x05) judge++ ;
#endif
  ichck("TKC04.08",1,judge,"char constant oct extend test") ;
  }



  {
  int  judge = 0 ;
  char char_oct ;
#if defined(msp)
  char_oct = '\05' ;              
  if (char_oct == '\t') judge++ ;
#else
  char_oct = '\10' ;              
  if (char_oct == '\b') judge++ ;
#endif
  ichck("TKC04.09",1,judge,"char constant oct extend test") ;
  }



  {
  int  judge = 0 ;
  char char_hex ;
  char_hex = '\xb' ;             
  if (char_hex == '\v') judge++ ;
  ichck("TKC04.10",1,judge,"char constant hex extend test") ;
  }



  {
  int  judge = 0 ;
  char char_hex ;
  char_hex = '\x0b' ;             
  if (char_hex == '\v') judge++ ;
  ichck("TKC04.11",1,judge,"char constant hex extend test") ;
  }



  {
#if !defined(os2)
  int  judge = 0 ;
  char char_2byte_1 ;
  char char_2byte_2 ;
  char char_2byte_3 ;
#if defined(msp)
  char_2byte_1 = 'ab' ;            
  char_2byte_2 = '\2011' ;         
  char_2byte_3 = '\x81z' ;         
#else
#if defined(__GNUC__)
  char_2byte_1 = 'ba' ;            
  char_2byte_2 = 'a' ;
  char_2byte_3 = 'a' ;
#else
  
  char_2byte_1 = 'ab' ;            
  char_2byte_2 = '\1411' ;         
  char_2byte_3 = '\x61z' ;         
#endif
#endif
  if (char_2byte_1=='a') judge++ ;
  if (char_2byte_2=='a') judge++ ;
  if (char_2byte_3=='a') judge++ ;
  ichck("TKC04.12",3,judge,"char constant 2 byte test") ;
#endif
  }



  {
  int  judge = 0 ;
  char char_other ;
  char_other = '\Z' ;                      
  if (char_other == 'Z') judge++ ;
  ichck("TKC04.13",1,judge,"char constant other extend test") ;
  }

  header("","CHAR CONSTANT TEST") ;
  }
