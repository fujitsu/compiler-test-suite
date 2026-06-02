#include <stdlib.h>
signed int v1 (signed short, unsigned int, signed int);
signed int (*v2) (signed short, unsigned int, signed int) = v1;
extern signed short v3 (signed short);
extern signed short (*v4) (signed short);
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
extern unsigned short v7 (signed char, unsigned short, signed int, unsigned int);
extern unsigned short (*v8) (signed char, unsigned short, signed int, unsigned int);
extern signed int v9 (unsigned char, unsigned int);
extern signed int (*v10) (unsigned char, unsigned int);
signed char v11 (unsigned short, unsigned char, unsigned char, unsigned int);
signed char (*v12) (unsigned short, unsigned char, unsigned char, unsigned int) = v11;
unsigned char v13 (signed char, unsigned int, unsigned char);
unsigned char (*v14) (signed char, unsigned int, unsigned char) = v13;
signed int v15 (signed char, signed short, signed short);
signed int (*v16) (signed char, signed short, signed short) = v15;
extern signed short v17 (unsigned int, signed int, signed int);
extern signed short (*v18) (unsigned int, signed int, signed int);
extern void v19 (signed int, signed char, signed short);
extern void (*v20) (signed int, signed char, signed short);
extern signed char v21 (void);
extern signed char (*v22) (void);
extern signed short v23 (unsigned char, signed char);
extern signed short (*v24) (unsigned char, signed char);
extern unsigned char v25 (unsigned char, unsigned char, signed short);
extern unsigned char (*v26) (unsigned char, unsigned char, signed short);
extern unsigned char v27 (unsigned int, signed short);
extern unsigned char (*v28) (unsigned int, signed short);
extern signed short v29 (signed short, unsigned char);
extern signed short (*v30) (signed short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v60 = 7U;
signed short v59 = 3;
signed short v58 = -1;

signed int v15 (signed char v61, signed short v62, signed short v63)
{
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
{
for (;;) {
signed short v66 = -1;
signed short v65 = -4;
signed char v64 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v13 (signed char v67, unsigned int v68, unsigned char v69)
{
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
{
for (;;) {
signed int v72 = -4;
unsigned char v71 = 1;
unsigned int v70 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v11 (unsigned short v73, unsigned char v74, unsigned char v75, unsigned int v76)
{
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
{
for (;;) {
signed short v79 = 3;
signed int v78 = 2;
unsigned int v77 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v1 (signed short v80, unsigned int v81, signed int v82)
{
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
{
for (;;) {
unsigned short v85 = 3;
unsigned int v84 = 0U;
unsigned short v83 = 7;
trace++;
switch (trace)
{
case 0: 
{
signed int v86;
signed char v87;
signed short v88;
v86 = v82 + 0;
v87 = 2 + -3;
v88 = v80 + -3;
v19 (v86, v87, v88);
}
break;
case 6: 
{
signed int v89;
signed char v90;
signed short v91;
v89 = 1 + -1;
v90 = 1 - -3;
v91 = v80 + 1;
v19 (v89, v90, v91);
}
break;
case 12: 
return -2;
default: abort ();
}
}
}
}
