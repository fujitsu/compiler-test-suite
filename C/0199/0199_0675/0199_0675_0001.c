#include <stdlib.h>
signed short v1 (unsigned short, unsigned short);
signed short (*v2) (unsigned short, unsigned short) = v1;
extern unsigned int v3 (unsigned char);
extern unsigned int (*v4) (unsigned char);
extern unsigned char v5 (void);
extern unsigned char (*v6) (void);
extern unsigned short v7 (unsigned short, signed short);
extern unsigned short (*v8) (unsigned short, signed short);
extern void v9 (unsigned short, signed short, signed int);
extern void (*v10) (unsigned short, signed short, signed int);
extern void v11 (unsigned short, signed short, unsigned int);
extern void (*v12) (unsigned short, signed short, unsigned int);
unsigned char v13 (void);
unsigned char (*v14) (void) = v13;
extern unsigned char v15 (unsigned short);
extern unsigned char (*v16) (unsigned short);
extern void v17 (signed char, unsigned short, unsigned short, unsigned int);
extern void (*v18) (signed char, unsigned short, unsigned short, unsigned int);
unsigned short v19 (signed short);
unsigned short (*v20) (signed short) = v19;
extern unsigned short v21 (signed char, unsigned short);
extern unsigned short (*v22) (signed char, unsigned short);
extern void v23 (signed char, unsigned char);
extern void (*v24) (signed char, unsigned char);
extern signed short v25 (signed int, unsigned int, signed short);
extern signed short (*v26) (signed int, unsigned int, signed short);
extern void v27 (unsigned int, signed char, unsigned short, unsigned short);
extern void (*v28) (unsigned int, signed char, unsigned short, unsigned short);
extern unsigned int v29 (void);
extern unsigned int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v71 = 6;
unsigned short v70 = 5;
signed short v69 = -3;

unsigned short v19 (signed short v72)
{
history[history_index++] = (int)v72;
{
for (;;) {
signed short v75 = -3;
signed short v74 = -1;
signed char v73 = -3;
trace++;
switch (trace)
{
case 4: 
return 2;
case 6: 
return 2;
default: abort ();
}
}
}
}

unsigned char v13 (void)
{
{
for (;;) {
unsigned int v78 = 2U;
unsigned int v77 = 5U;
unsigned short v76 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v1 (unsigned short v79, unsigned short v80)
{
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
{
for (;;) {
unsigned int v83 = 3U;
signed char v82 = -2;
unsigned char v81 = 2;
trace++;
switch (trace)
{
case 0: 
{
signed char v84;
unsigned char v85;
v84 = v82 - v82;
v85 = 0 + v81;
v23 (v84, v85);
}
break;
case 2: 
{
unsigned short v86;
unsigned char v87;
v86 = v80 + v80;
v87 = v15 (v86);
history[history_index++] = (int)v87;
}
break;
case 8: 
{
unsigned short v88;
signed short v89;
unsigned int v90;
v88 = v80 + v79;
v89 = 3 - -4;
v90 = v83 - v83;
v11 (v88, v89, v90);
}
break;
case 12: 
return 2;
default: abort ();
}
}
}
}
