#include <stdlib.h>
extern signed char v1 (unsigned int);
extern signed char (*v2) (unsigned int);
extern unsigned int v3 (signed int, unsigned char, signed short);
extern unsigned int (*v4) (signed int, unsigned char, signed short);
extern void v5 (unsigned int, signed char, unsigned short);
extern void (*v6) (unsigned int, signed char, unsigned short);
extern unsigned int v7 (unsigned char, unsigned int, unsigned char, unsigned char);
extern unsigned int (*v8) (unsigned char, unsigned int, unsigned char, unsigned char);
extern signed int v9 (signed int, signed short, unsigned int, unsigned int);
extern signed int (*v10) (signed int, signed short, unsigned int, unsigned int);
extern void v11 (signed char);
extern void (*v12) (signed char);
extern unsigned short v13 (signed char);
extern unsigned short (*v14) (signed char);
extern void v15 (unsigned char);
extern void (*v16) (unsigned char);
signed int v17 (signed int, unsigned short, signed char, signed short);
signed int (*v18) (signed int, unsigned short, signed char, signed short) = v17;
extern signed int v19 (unsigned short, unsigned short);
extern signed int (*v20) (unsigned short, unsigned short);
signed short v21 (signed char, signed short, signed short, unsigned char);
signed short (*v22) (signed char, signed short, signed short, unsigned char) = v21;
extern signed int v23 (signed short, unsigned int, unsigned short);
extern signed int (*v24) (signed short, unsigned int, unsigned short);
extern void v25 (signed char);
extern void (*v26) (signed char);
signed int v27 (signed char, unsigned int, unsigned int, signed int);
signed int (*v28) (signed char, unsigned int, unsigned int, signed int) = v27;
extern void v29 (void);
extern void (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v65 = 7U;
signed char v64 = 0;
unsigned char v63 = 2;

signed int v27 (signed char v66, unsigned int v67, unsigned int v68, signed int v69)
{
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
{
for (;;) {
unsigned char v72 = 2;
unsigned short v71 = 6;
unsigned int v70 = 5U;
trace++;
switch (trace)
{
case 5: 
return -2;
default: abort ();
}
}
}
}

signed short v21 (signed char v73, signed short v74, signed short v75, unsigned char v76)
{
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
{
for (;;) {
unsigned char v79 = 2;
unsigned char v78 = 7;
unsigned short v77 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v17 (signed int v80, unsigned short v81, signed char v82, signed short v83)
{
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
{
for (;;) {
signed int v86 = 0;
unsigned short v85 = 5;
signed char v84 = -2;
trace++;
switch (trace)
{
case 3: 
{
signed short v87;
unsigned int v88;
unsigned short v89;
signed int v90;
v87 = 0 - 1;
v88 = 7U + 7U;
v89 = v81 - v85;
v90 = v23 (v87, v88, v89);
history[history_index++] = (int)v90;
}
break;
case 7: 
{
v29 ();
}
break;
case 9: 
{
v29 ();
}
break;
case 11: 
return v86;
default: abort ();
}
}
}
}
