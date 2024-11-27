#include <string.h>
#include <stdio.h>
const char x1[]="123456789a123456789b123456789c123456789d123456789e123456789f12345";
const char x2[]="123456789a123456789b123456789c123456789d123456789e123456789f123456";
const char x3[]="123456789a123456789b123456789c123456789d123456789e123456789f1234567";
const char x4[]="123456789a123456789b123456789c123456789d123456789e123456789f12345678";
const char x11[]="1";
const char x12[]="12";
const char x13[]="123";
const char x14[]="1234";
const char x21[]="123456789a1";
const char x22[]="123456789a12";
const char x23[]="123456789a123";
const char x24[]="123456789a1234";
int main()
{
const char i1[]="123456789a123456789b123456789c123456789d123456789e123456789f12345";
const char i2[]="123456789a123456789b123456789c123456789d123456789e123456789f123456";
const char i3[]="123456789a123456789b123456789c123456789d123456789e123456789f1234567";
const char i4[]="123456789a123456789b123456789c123456789d123456789e123456789f12345678";

const char i11[]="1";
const char i12[]="12";
const char i13[]="123";
const char i14[]="1234";
const char i21[]="123456789a1";
const char i22[]="123456789a12";
const char i23[]="123456789a123";
const char i24[]="123456789a1234";
 char x[512];
 puts("start");
#define MEM(X) memcmp(strcpy(x,X),X,sizeof(X))
#define STR(X) strcmp(memcpy(x,X,sizeof(X)),X)
 if (MEM(i1)) puts("1:ng"); else puts("1:ok");
 if (MEM(i2)) puts("2:ng"); else puts("2:ok");
 if (MEM(i3)) puts("3:ng"); else puts("3:ok");
 if (MEM(i4)) puts("4:ng"); else puts("4:ok");

 if (STR(i1)) puts("5:ng"); else puts("5:ok");
 if (STR(i2)) puts("6:ng"); else puts("6:ok");
 if (STR(i3)) puts("7:ng"); else puts("7:ok");
 if (STR(i4)) puts("8:ng"); else puts("8:ok");

 if (MEM(x1)) puts("1:ng"); else puts("1:ok");
 if (MEM(x2)) puts("2:ng"); else puts("2:ok");
 if (MEM(x3)) puts("3:ng"); else puts("3:ok");
 if (MEM(x4)) puts("4:ng"); else puts("4:ok");

 if (STR(x1)) puts("5:ng"); else puts("5:ok");
 if (STR(x2)) puts("6:ng"); else puts("6:ok");
 if (STR(x3)) puts("7:ng"); else puts("7:ok");
 if (STR(x4)) puts("8:ng"); else puts("8:ok");

 if (MEM(i11)) puts("11:ng"); else puts("11:ok");
 if (MEM(i12)) puts("12:ng"); else puts("12:ok");
 if (MEM(i13)) puts("13:ng"); else puts("13:ok");
 if (MEM(i14)) puts("14:ng"); else puts("14:ok");

 if (STR(i11)) puts("15:ng"); else puts("15:ok");
 if (STR(i12)) puts("16:ng"); else puts("16:ok");
 if (STR(i13)) puts("17:ng"); else puts("17:ok");
 if (STR(i14)) puts("18:ng"); else puts("18:ok");

 if (MEM(x11)) puts("11:ng"); else puts("11:ok");
 if (MEM(x12)) puts("12:ng"); else puts("12:ok");
 if (MEM(x13)) puts("13:ng"); else puts("13:ok");
 if (MEM(x14)) puts("14:ng"); else puts("14:ok");

 if (STR(x11)) puts("15:ng"); else puts("15:ok");
 if (STR(x12)) puts("16:ng"); else puts("16:ok");
 if (STR(x13)) puts("17:ng"); else puts("17:ok");
 if (STR(x14)) puts("18:ng"); else puts("18:ok");

 if (MEM(i21)) puts("21:ng"); else puts("21:ok");
 if (MEM(i22)) puts("22:ng"); else puts("22:ok");
 if (MEM(i23)) puts("23:ng"); else puts("23:ok");
 if (MEM(i24)) puts("24:ng"); else puts("24:ok");

 if (STR(i21)) puts("25:ng"); else puts("25:ok");
 if (STR(i22)) puts("26:ng"); else puts("26:ok");
 if (STR(i23)) puts("27:ng"); else puts("27:ok");
 if (STR(i24)) puts("28:ng"); else puts("28:ok");

 if (MEM(x21)) puts("21:ng"); else puts("21:ok");
 if (MEM(x22)) puts("22:ng"); else puts("22:ok");
 if (MEM(x23)) puts("23:ng"); else puts("23:ok");
 if (MEM(x24)) puts("24:ng"); else puts("24:ok");

 if (STR(x21)) puts("25:ng"); else puts("25:ok");
 if (STR(x22)) puts("26:ng"); else puts("26:ok");
 if (STR(x23)) puts("27:ng"); else puts("27:ok");
 if (STR(x24)) puts("28:ng"); else puts("28:ok");

 puts("end");
}
