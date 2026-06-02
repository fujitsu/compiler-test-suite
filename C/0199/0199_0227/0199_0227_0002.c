#include <stdlib.h>
extern unsigned char v1 (unsigned char, signed int, unsigned short);
extern unsigned char (*v2) (unsigned char, signed int, unsigned short);
extern signed char v3 (void);
extern signed char (*v4) (void);
extern void v5 (signed short, signed short);
extern void (*v6) (signed short, signed short);
void v7 (signed int, unsigned char, signed char);
void (*v8) (signed int, unsigned char, signed char) = v7;
static signed short v9 (void);
static signed short (*v10) (void) = v9;
extern unsigned short v11 (unsigned short);
extern unsigned short (*v12) (unsigned short);
unsigned char v13 (unsigned short, signed char);
unsigned char (*v14) (unsigned short, signed char) = v13;
extern signed short v15 (void);
extern signed short (*v16) (void);
extern unsigned short v17 (void);
extern unsigned short (*v18) (void);
extern signed char v19 (signed short, unsigned char, signed int);
extern signed char (*v20) (signed short, unsigned char, signed int);
extern void v23 (signed short, unsigned char, unsigned int);
extern void (*v24) (signed short, unsigned char, unsigned int);
extern unsigned char v25 (void);
extern unsigned char (*v26) (void);
extern signed int v27 (signed short, signed char, signed char, signed int);
extern signed int (*v28) (signed short, signed char, signed char, signed int);
extern unsigned short v29 (signed int, signed short);
extern unsigned short (*v30) (signed int, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v65 = 6;
signed short v64 = -4;
signed char v63 = 0;

unsigned char v13 (unsigned short v66, signed char v67)
{
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
{
for (;;) {
signed int v70 = -4;
signed short v69 = -4;
unsigned char v68 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed short v9 (void)
{
{
for (;;) {
unsigned int v73 = 3U;
unsigned char v72 = 7;
signed int v71 = -1;
trace++;
switch (trace)
{
case 9: 
return -4;
default: abort ();
}
}
}
}

void v7 (signed int v74, unsigned char v75, signed char v76)
{
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
{
for (;;) {
unsigned short v79 = 1;
signed int v78 = -4;
unsigned char v77 = 3;
trace++;
switch (trace)
{
case 6: 
{
signed short v80;
unsigned char v81;
signed int v82;
signed char v83;
v80 = -4 - -3;
v81 = v77 - v77;
v82 = v78 + 3;
v83 = v19 (v80, v81, v82);
history[history_index++] = (int)v83;
}
break;
case 8: 
{
signed short v84;
v84 = v9 ();
history[history_index++] = (int)v84;
}
break;
case 10: 
{
signed short v85;
unsigned char v86;
signed int v87;
signed char v88;
v85 = -2 - 1;
v86 = 3 + v75;
v87 = v78 - v74;
v88 = v19 (v85, v86, v87);
history[history_index++] = (int)v88;
}
break;
case 12: 
return;
default: abort ();
}
}
}
}
