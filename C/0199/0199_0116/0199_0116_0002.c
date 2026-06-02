#include <stdlib.h>
signed char v1 (signed char, signed int, unsigned short);
signed char (*v2) (signed char, signed int, unsigned short) = v1;
extern signed int v3 (signed char, unsigned char, unsigned int, unsigned short);
extern signed int (*v4) (signed char, unsigned char, unsigned int, unsigned short);
extern signed int v5 (void);
extern signed int (*v6) (void);
extern unsigned int v7 (unsigned short, signed short);
extern unsigned int (*v8) (unsigned short, signed short);
unsigned char v9 (unsigned char);
unsigned char (*v10) (unsigned char) = v9;
extern unsigned int v11 (unsigned int);
extern unsigned int (*v12) (unsigned int);
extern unsigned short v13 (signed char, unsigned char, unsigned char);
extern unsigned short (*v14) (signed char, unsigned char, unsigned char);
extern void v15 (signed short);
extern void (*v16) (signed short);
extern signed short v17 (unsigned short, signed short);
extern signed short (*v18) (unsigned short, signed short);
extern void v19 (unsigned int);
extern void (*v20) (unsigned int);
extern void v21 (unsigned int);
extern void (*v22) (unsigned int);
extern signed short v23 (unsigned char, signed int, signed int);
extern signed short (*v24) (unsigned char, signed int, signed int);
extern void v25 (void);
extern void (*v26) (void);
signed int v27 (signed int);
signed int (*v28) (signed int) = v27;
extern signed short v29 (signed char, signed short);
extern signed short (*v30) (signed char, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed short v67 = -3;
signed char v66 = -2;
signed int v65 = 1;

signed int v27 (signed int v68)
{
history[history_index++] = (int)v68;
{
for (;;) {
unsigned char v71 = 5;
unsigned int v70 = 6U;
unsigned char v69 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v9 (unsigned char v72)
{
history[history_index++] = (int)v72;
{
for (;;) {
unsigned char v75 = 0;
signed int v74 = -3;
unsigned char v73 = 0;
trace++;
switch (trace)
{
case 8: 
{
unsigned char v76;
signed int v77;
signed int v78;
signed short v79;
v76 = v73 - v73;
v77 = v74 + v74;
v78 = v74 - 1;
v79 = v23 (v76, v77, v78);
history[history_index++] = (int)v79;
}
break;
case 12: 
return 3;
default: abort ();
}
}
}
}

signed char v1 (signed char v80, signed int v81, unsigned short v82)
{
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
{
for (;;) {
unsigned short v85 = 7;
unsigned short v84 = 1;
unsigned int v83 = 7U;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v86;
signed short v87;
signed short v88;
v86 = v82 - v85;
v87 = 2 + -2;
v88 = v17 (v86, v87);
history[history_index++] = (int)v88;
}
break;
case 2: 
{
unsigned int v89;
v89 = v83 - v83;
v21 (v89);
}
break;
case 4: 
{
signed int v90;
v90 = v5 ();
history[history_index++] = (int)v90;
}
break;
case 14: 
return v80;
default: abort ();
}
}
}
}
