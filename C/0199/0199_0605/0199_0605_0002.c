#include <stdlib.h>
unsigned short v1 (unsigned short, unsigned short, unsigned char, signed int);
unsigned short (*v2) (unsigned short, unsigned short, unsigned char, signed int) = v1;
extern void v3 (unsigned int);
extern void (*v4) (unsigned int);
extern unsigned int v5 (signed int, signed int, unsigned char, signed char);
extern unsigned int (*v6) (signed int, signed int, unsigned char, signed char);
extern signed int v7 (signed char, signed int);
extern signed int (*v8) (signed char, signed int);
extern unsigned short v9 (signed int, signed int);
extern unsigned short (*v10) (signed int, signed int);
extern signed char v11 (unsigned char, signed char, signed int);
extern signed char (*v12) (unsigned char, signed char, signed int);
extern signed int v13 (void);
extern signed int (*v14) (void);
extern unsigned char v15 (signed int, unsigned char, unsigned int, unsigned int);
extern unsigned char (*v16) (signed int, unsigned char, unsigned int, unsigned int);
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
extern signed char v19 (signed short);
extern signed char (*v20) (signed short);
extern unsigned int v21 (signed char, signed char);
extern unsigned int (*v22) (signed char, signed char);
extern void v23 (void);
extern void (*v24) (void);
extern unsigned short v25 (unsigned int, signed short);
extern unsigned short (*v26) (unsigned int, signed short);
signed int v27 (void);
signed int (*v28) (void) = v27;
extern unsigned char v29 (unsigned int, unsigned short, signed char, unsigned int);
extern unsigned char (*v30) (unsigned int, unsigned short, signed char, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v76 = 3;
signed short v75 = -1;
unsigned char v74 = 6;

signed int v27 (void)
{
{
for (;;) {
unsigned char v79 = 3;
signed char v78 = -1;
signed int v77 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v1 (unsigned short v80, unsigned short v81, unsigned char v82, signed int v83)
{
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
{
for (;;) {
signed short v86 = 0;
unsigned int v85 = 5U;
unsigned char v84 = 5;
trace++;
switch (trace)
{
case 0: 
{
signed char v87;
signed int v88;
signed int v89;
v87 = -4 - -1;
v88 = v83 + v83;
v89 = v7 (v87, v88);
history[history_index++] = (int)v89;
}
break;
case 2: 
{
signed int v90;
unsigned char v91;
unsigned int v92;
unsigned int v93;
unsigned char v94;
v90 = -2 + v83;
v91 = v84 - v82;
v92 = v85 - v85;
v93 = 3U - v85;
v94 = v15 (v90, v91, v92, v93);
history[history_index++] = (int)v94;
}
break;
case 12: 
return v81;
default: abort ();
}
}
}
}
