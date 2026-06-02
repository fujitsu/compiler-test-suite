#include <stdlib.h>
extern unsigned short v3 (signed int, unsigned char);
extern unsigned short (*v4) (signed int, unsigned char);
extern unsigned char v5 (unsigned int, unsigned char, signed char, signed char);
extern unsigned char (*v6) (unsigned int, unsigned char, signed char, signed char);
extern signed int v7 (signed int, signed int, unsigned char);
extern signed int (*v8) (signed int, signed int, unsigned char);
extern signed char v9 (unsigned int, signed short);
extern signed char (*v10) (unsigned int, signed short);
extern unsigned int v11 (unsigned char);
extern unsigned int (*v12) (unsigned char);
extern unsigned int v13 (unsigned int, unsigned short);
extern unsigned int (*v14) (unsigned int, unsigned short);
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
extern void v17 (void);
extern void (*v18) (void);
unsigned char v19 (unsigned int);
unsigned char (*v20) (unsigned int) = v19;
extern void v21 (unsigned int, unsigned int, signed short);
extern void (*v22) (unsigned int, unsigned int, signed short);
extern unsigned int v23 (unsigned short, unsigned short);
extern unsigned int (*v24) (unsigned short, unsigned short);
extern unsigned short v25 (void);
extern unsigned short (*v26) (void);
extern unsigned short v27 (unsigned char);
extern unsigned short (*v28) (unsigned char);
unsigned short v29 (unsigned int, unsigned char);
unsigned short (*v30) (unsigned int, unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v79 = -1;
unsigned int v78 = 7U;
unsigned int v77 = 1U;

unsigned short v29 (unsigned int v80, unsigned char v81)
{
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
{
for (;;) {
signed char v84 = -2;
signed short v83 = -2;
unsigned short v82 = 2;
trace++;
switch (trace)
{
case 2: 
return v82;
case 4: 
return v82;
case 8: 
return 2;
case 10: 
return 5;
default: abort ();
}
}
}
}

unsigned char v19 (unsigned int v85)
{
history[history_index++] = (int)v85;
{
for (;;) {
unsigned short v88 = 6;
signed int v87 = 2;
signed short v86 = 2;
trace++;
switch (trace)
{
case 7: 
{
unsigned int v89;
unsigned char v90;
unsigned short v91;
v89 = 6U - 3U;
v90 = 6 + 0;
v91 = v29 (v89, v90);
history[history_index++] = (int)v91;
}
break;
case 9: 
{
unsigned int v92;
unsigned char v93;
unsigned short v94;
v92 = 5U + 6U;
v93 = 3 - 2;
v94 = v29 (v92, v93);
history[history_index++] = (int)v94;
}
break;
case 11: 
return 7;
default: abort ();
}
}
}
}
