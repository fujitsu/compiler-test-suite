#include <stdlib.h>
extern signed int v1 (signed short, unsigned int, unsigned char);
extern signed int (*v2) (signed short, unsigned int, unsigned char);
extern void v3 (signed short, unsigned int, signed char);
extern void (*v4) (signed short, unsigned int, signed char);
unsigned char v7 (signed char, signed short, unsigned int, signed char);
unsigned char (*v8) (signed char, signed short, unsigned int, signed char) = v7;
extern unsigned short v9 (signed short, unsigned int, unsigned int);
extern unsigned short (*v10) (signed short, unsigned int, unsigned int);
extern unsigned char v11 (unsigned int, signed int);
extern unsigned char (*v12) (unsigned int, signed int);
extern unsigned int v13 (signed int, signed char);
extern unsigned int (*v14) (signed int, signed char);
extern signed short v15 (void);
extern signed short (*v16) (void);
signed short v17 (void);
signed short (*v18) (void) = v17;
extern signed int v19 (signed short, signed int, signed int, unsigned short);
extern signed int (*v20) (signed short, signed int, signed int, unsigned short);
unsigned int v21 (signed short, signed short);
unsigned int (*v22) (signed short, signed short) = v21;
extern unsigned char v23 (void);
extern unsigned char (*v24) (void);
extern unsigned char v25 (unsigned int);
extern unsigned char (*v26) (unsigned int);
extern unsigned int v27 (unsigned int, unsigned char);
extern unsigned int (*v28) (unsigned int, unsigned char);
extern unsigned int v29 (unsigned char, unsigned char, signed int);
extern unsigned int (*v30) (unsigned char, unsigned char, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed int v65 = 1;
unsigned short v64 = 4;
signed char v63 = -4;

unsigned int v21 (signed short v66, signed short v67)
{
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
{
for (;;) {
signed int v70 = 2;
signed char v69 = -2;
unsigned char v68 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v17 (void)
{
{
for (;;) {
signed int v73 = -4;
signed short v72 = 0;
signed int v71 = 2;
trace++;
switch (trace)
{
case 9: 
{
unsigned int v74;
unsigned char v75;
unsigned int v76;
v74 = 3U + 0U;
v75 = 7 + 6;
v76 = v27 (v74, v75);
history[history_index++] = (int)v76;
}
break;
case 13: 
return v72;
default: abort ();
}
}
}
}

unsigned char v7 (signed char v77, signed short v78, unsigned int v79, signed char v80)
{
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
{
for (;;) {
unsigned short v83 = 0;
signed char v82 = 0;
unsigned char v81 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
