#include <string.h>
#include  <stdio.h>
#include <stdlib.h>
int out(char *c);
int factor();
int term();
void nextch();
int expression();
typedef int logical;
#define false   0
#define true    1
char buf[100];
int main()
{
      nextch();
      expression();
      puts(" OK ");
}
char ch;
void nextch()
{
      static char  indata[]="A+B+(C+D*E)/2";
      static int   ich=0;
      ch=indata[ich];
      if( ch == 0 ) {
        ch=' ';
        return;
      }
      ich=ich+1;
      if( ich == 100 ) ich = 100;
}
int expression()
{
      char        c;
      term();
      while( ch == '+' || ch == '-' || ch == '|' ) {
        c = ch;
        nextch();
        out(  "  PUSH   DO"  );
        term();
        switch ( c ) {
        case '+':
          out(  "  ADD    (SP++),D0" );
          break;
        case '-':
          out(  "  POP    D1"  );
          out(  "  EXG    D1,D0" );
          out(  "  SUB    D1,D0" );
          break;
        case '|':
          out(  "  OR     (SP++),DO " );
        }
      };
      return 0;
}

int term()
{
      char c;
      factor();
      while( ch == '*' || ch == '/' || ch == '&' ) {
        c = ch;
        nextch();
        out(       "  PUSH   DO" );
        factor();
        switch ( c ) {
        case  '*':
          out(       "  MUL    (SP++),D0" );
          break;
        case  '/':
          out(       "  POP    D1" );
          out(       "  EXG    D1,D0" );
          out(       "  DIV    (SP++),D0");
          break;
        case  '&':
          out(       "  AND    (SP++),DO" );
        }
      };
      return 0;
}
int factor()
{
      if( 'a'<=ch && ch<='z' ||
          'A'<=ch && ch<='Z' ) {
	memset(buf,0,sizeof(buf));
	strcpy(buf,"  MOVE   ");
	buf[strlen(buf)]=ch;
	strcpy(buf+strlen(buf)," , D0");
	out(buf);
      }
      else if( '0'<=ch && ch<='9' ) {
	memset(buf,0,sizeof(buf));
	strcpy(buf,"  MOVE  #");
	buf[strlen(buf)]=ch;
	strcpy(buf+strlen(buf)," , D0");
	out(buf);
      }
      else if( ch == '(' ) {
        nextch();
        expression();
        if( ch != ')' ) {
          out(" not found ) ");
        }
      }
      else {
        out("  ERROR ");
      }
      nextch();
  return 0;
}
char *data[] = {
"  MOVE   A , D0" ,
"  PUSH   DO" ,
"  MOVE   B , D0" ,
"  ADD    (SP++),D0" ,
"  PUSH   DO" ,
"  MOVE   C , D0" ,
"  PUSH   DO" ,
"  MOVE   D , D0" ,
"  PUSH   DO" ,
"  MOVE   E , D0" ,
"  MUL    (SP++),D0" ,
"  ADD    (SP++),D0" ,
"  PUSH   DO" ,
"  MOVE  #2 , D0" ,
"  POP    D1" ,
"  EXG    D1,D0" ,
"  DIV    (SP++),D0" ,
"  ADD    (SP++),D0"
};
int out(char *c)
{
      static int i=0;
      if( strcmp(c,data[i++]) != 0 ) {
        puts(" NG ");
        printf("%s<<<\n",c);
        printf("%s<<<\n",data[i-1]);
        exit(1);
      }
      return 0;
}
