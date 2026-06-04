#include <stdlib.h>
signed short v1 (void);
signed short (*v2) (void) = v1;
extern unsigned char v3 (unsigned char);
extern unsigned char (*v4) (unsigned char);
unsigned short v5 (unsigned short, signed char, signed char);
unsigned short (*v6) (unsigned short, signed char, signed char) = v5;
extern signed char v7 (unsigned char, signed int, unsigned char);
extern signed char (*v8) (unsigned char, signed int, unsigned char);
extern void v9 (unsigned int, signed int, signed char, signed short);
extern void (*v10) (unsigned int, signed int, signed char, signed short);
extern unsigned char v11 (signed char, unsigned int, signed char, unsigned char);
extern unsigned char (*v12) (signed char, unsigned int, signed char, unsigned char);
extern signed short v13 (signed int);
extern signed short (*v14) (signed int);
signed char v15 (unsigned int, unsigned short, signed int, signed int);
signed char (*v16) (unsigned int, unsigned short, signed int, signed int) = v15;
extern signed short v17 (signed short, signed int, signed char);
extern signed short (*v18) (signed short, signed int, signed char);
extern unsigned int v19 (signed char, unsigned short, unsigned int, signed short);
extern unsigned int (*v20) (signed char, unsigned short, unsigned int, signed short);
extern unsigned int v21 (signed short, signed char, unsigned int, signed char);
extern unsigned int (*v22) (signed short, signed char, unsigned int, signed char);
extern signed short v23 (unsigned short, signed char, unsigned short);
extern signed short (*v24) (unsigned short, signed char, unsigned short);
extern unsigned char v25 (void);
extern unsigned char (*v26) (void);
extern signed char v27 (void);
extern signed char (*v28) (void);
extern void v29 (unsigned short, signed char);
extern void (*v30) (unsigned short, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed int v65 = 3;
signed short v64 = 0;
unsigned char v63 = 7;

signed char v15 (unsigned int v66, unsigned short v67, signed int v68, signed int v69)
{
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
{
for (;;) {
unsigned char v72 = 2;
unsigned int v71 = 5U;
unsigned short v70 = 7;
trace++;
switch (trace)
{
case 8: 
{
unsigned int v73;
signed int v74;
signed char v75;
signed short v76;
v73 = v71 + 0U;
v74 = v69 + v68;
v75 = 2 - -2;
v76 = -2 - 0;
v9 (v73, v74, v75, v76);
}
break;
case 10: 
{
unsigned int v77;
signed int v78;
signed char v79;
signed short v80;
v77 = v71 + v71;
v78 = v68 - v68;
v79 = -4 - -1;
v80 = -1 + 1;
v9 (v77, v78, v79, v80);
}
break;
case 12: 
return -3;
case 14: 
return 1;
default: abort ();
}
}
}
}

unsigned short v5 (unsigned short v81, signed char v82, signed char v83)
{
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
{
for (;;) {
signed char v86 = -2;
signed int v85 = 1;
unsigned short v84 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v1 (void)
{
{
for (;;) {
unsigned char v89 = 0;
unsigned char v88 = 5;
signed short v87 = -1;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v90;
signed int v91;
unsigned char v92;
signed char v93;
v90 = v89 - v88;
v91 = -1 + -4;
v92 = v88 - 7;
v93 = v7 (v90, v91, v92);
history[history_index++] = (int)v93;
}
break;
case 16: 
return v87;
default: abort ();
}
}
}
}
