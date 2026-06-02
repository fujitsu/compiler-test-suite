#include <stdlib.h>
extern unsigned int v1 (void);
extern unsigned int (*v2) (void);
extern unsigned char v3 (unsigned int, signed int);
extern unsigned char (*v4) (unsigned int, signed int);
extern void v5 (unsigned char, signed short, signed int);
extern void (*v6) (unsigned char, signed short, signed int);
unsigned char v7 (unsigned char, signed short);
unsigned char (*v8) (unsigned char, signed short) = v7;
extern void v9 (unsigned short);
extern void (*v10) (unsigned short);
extern signed short v11 (signed int, signed char, unsigned short);
extern signed short (*v12) (signed int, signed char, unsigned short);
extern void v13 (unsigned int, unsigned char);
extern void (*v14) (unsigned int, unsigned char);
unsigned short v15 (void);
unsigned short (*v16) (void) = v15;
extern unsigned int v17 (signed int);
extern unsigned int (*v18) (signed int);
extern void v19 (unsigned int, unsigned char, signed char, unsigned int);
extern void (*v20) (unsigned int, unsigned char, signed char, unsigned int);
unsigned int v21 (unsigned int, signed int, signed int, unsigned int);
unsigned int (*v22) (unsigned int, signed int, signed int, unsigned int) = v21;
extern unsigned short v23 (signed int, unsigned int);
extern unsigned short (*v24) (signed int, unsigned int);
extern unsigned short v25 (unsigned short);
extern unsigned short (*v26) (unsigned short);
extern signed char v27 (unsigned char, unsigned int);
extern signed char (*v28) (unsigned char, unsigned int);
extern signed short v29 (signed char);
extern signed short (*v30) (signed char);
extern int history[];
extern int history_index;
extern int trace;
signed short v71 = 2;
signed int v70 = -4;
unsigned char v69 = 4;

unsigned int v21 (unsigned int v72, signed int v73, signed int v74, unsigned int v75)
{
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
{
for (;;) {
unsigned int v78 = 3U;
signed char v77 = 2;
signed char v76 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v15 (void)
{
{
for (;;) {
signed char v81 = -3;
signed char v80 = -2;
signed char v79 = 0;
trace++;
switch (trace)
{
case 3: 
{
signed char v82;
signed short v83;
v82 = 3 + -2;
v83 = v29 (v82);
history[history_index++] = (int)v83;
}
break;
case 7: 
return 1;
case 9: 
{
signed char v84;
signed short v85;
v84 = v80 - v79;
v85 = v29 (v84);
history[history_index++] = (int)v85;
}
break;
case 13: 
return 0;
default: abort ();
}
}
}
}

unsigned char v7 (unsigned char v86, signed short v87)
{
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
{
for (;;) {
unsigned char v90 = 7;
signed char v89 = 1;
unsigned short v88 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
