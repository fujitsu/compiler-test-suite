#include <stdlib.h>
extern signed short v1 (signed char, unsigned char, signed int, unsigned short);
extern signed short (*v2) (signed char, unsigned char, signed int, unsigned short);
unsigned short v3 (unsigned char, signed short);
unsigned short (*v4) (unsigned char, signed short) = v3;
extern signed short v5 (unsigned int, signed short, unsigned int);
extern signed short (*v6) (unsigned int, signed short, unsigned int);
extern void v7 (signed short, unsigned char);
extern void (*v8) (signed short, unsigned char);
extern unsigned short v9 (signed char, signed char, unsigned int);
extern unsigned short (*v10) (signed char, signed char, unsigned int);
extern void v11 (void);
extern void (*v12) (void);
extern unsigned short v13 (void);
extern unsigned short (*v14) (void);
extern unsigned int v15 (signed char);
extern unsigned int (*v16) (signed char);
extern signed char v17 (void);
extern signed char (*v18) (void);
extern signed short v21 (void);
extern signed short (*v22) (void);
extern unsigned int v23 (unsigned char, unsigned int);
extern unsigned int (*v24) (unsigned char, unsigned int);
signed int v25 (signed int, signed char, signed char, unsigned int);
signed int (*v26) (signed int, signed char, signed char, unsigned int) = v25;
extern signed int v27 (void);
extern signed int (*v28) (void);
extern signed short v29 (signed char, signed int, signed short, signed int);
extern signed short (*v30) (signed char, signed int, signed short, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v65 = 0;
unsigned char v64 = 0;
unsigned int v63 = 3U;

signed int v25 (signed int v66, signed char v67, signed char v68, unsigned int v69)
{
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
{
for (;;) {
signed char v72 = -2;
unsigned short v71 = 5;
signed char v70 = -3;
trace++;
switch (trace)
{
case 4: 
{
signed int v73;
v73 = v27 ();
history[history_index++] = (int)v73;
}
break;
case 14: 
return 2;
default: abort ();
}
}
}
}

unsigned short v3 (unsigned char v74, signed short v75)
{
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
{
for (;;) {
signed short v78 = -4;
unsigned char v77 = 0;
unsigned short v76 = 1;
trace++;
switch (trace)
{
case 6: 
return 4;
default: abort ();
}
}
}
}
