#include <stdlib.h>
extern unsigned char v1 (signed int);
extern unsigned char (*v2) (signed int);
extern unsigned short v3 (unsigned char, signed char, signed char);
extern unsigned short (*v4) (unsigned char, signed char, signed char);
extern void v5 (unsigned int, signed short);
extern void (*v6) (unsigned int, signed short);
signed char v7 (signed short, signed short, unsigned short);
signed char (*v8) (signed short, signed short, unsigned short) = v7;
extern void v11 (signed short, unsigned short);
extern void (*v12) (signed short, unsigned short);
extern unsigned char v13 (signed int, unsigned short, signed short, signed int);
extern unsigned char (*v14) (signed int, unsigned short, signed short, signed int);
extern void v15 (unsigned int, unsigned short, unsigned int, signed int);
extern void (*v16) (unsigned int, unsigned short, unsigned int, signed int);
unsigned short v17 (unsigned char, unsigned int, unsigned short, unsigned int);
unsigned short (*v18) (unsigned char, unsigned int, unsigned short, unsigned int) = v17;
extern void v19 (unsigned short, signed short);
extern void (*v20) (unsigned short, signed short);
extern void v21 (void);
extern void (*v22) (void);
unsigned int v23 (void);
unsigned int (*v24) (void) = v23;
extern signed short v25 (signed short, signed int, unsigned short);
extern signed short (*v26) (signed short, signed int, unsigned short);
extern unsigned int v27 (unsigned char, signed int, unsigned int, signed int);
extern unsigned int (*v28) (unsigned char, signed int, unsigned int, signed int);
extern signed short v29 (unsigned int);
extern signed short (*v30) (unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed int v57 = 0;
unsigned char v56 = 0;
unsigned char v55 = 6;

unsigned int v23 (void)
{
{
for (;;) {
unsigned int v60 = 5U;
unsigned char v59 = 7;
signed int v58 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v17 (unsigned char v61, unsigned int v62, unsigned short v63, unsigned int v64)
{
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
{
for (;;) {
unsigned short v67 = 1;
signed short v66 = 2;
signed int v65 = 2;
trace++;
switch (trace)
{
case 5: 
{
unsigned char v68;
signed int v69;
unsigned int v70;
signed int v71;
unsigned int v72;
v68 = 7 - 2;
v69 = v65 + 3;
v70 = v62 - v64;
v71 = v65 - 3;
v72 = v27 (v68, v69, v70, v71);
history[history_index++] = (int)v72;
}
break;
case 7: 
return 4;
default: abort ();
}
}
}
}

signed char v7 (signed short v73, signed short v74, unsigned short v75)
{
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
{
for (;;) {
unsigned short v78 = 5;
unsigned int v77 = 3U;
signed short v76 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
