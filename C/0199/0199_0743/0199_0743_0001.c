#include <stdlib.h>
extern unsigned short v1 (signed int, signed char);
extern unsigned short (*v2) (signed int, signed char);
extern void v3 (void);
extern void (*v4) (void);
signed int v5 (unsigned char, unsigned int, unsigned char);
signed int (*v6) (unsigned char, unsigned int, unsigned char) = v5;
extern void v7 (unsigned short, signed char, signed int);
extern void (*v8) (unsigned short, signed char, signed int);
extern unsigned char v9 (signed char);
extern unsigned char (*v10) (signed char);
extern signed char v11 (signed short, unsigned char, unsigned short);
extern signed char (*v12) (signed short, unsigned char, unsigned short);
signed char v13 (signed char, unsigned short);
signed char (*v14) (signed char, unsigned short) = v13;
extern unsigned char v15 (signed short, signed int, signed int);
extern unsigned char (*v16) (signed short, signed int, signed int);
unsigned short v19 (signed int, signed short, unsigned char, signed int);
unsigned short (*v20) (signed int, signed short, unsigned char, signed int) = v19;
extern signed short v21 (signed short, signed char, signed short);
extern signed short (*v22) (signed short, signed char, signed short);
extern signed int v23 (signed short, unsigned short, signed char);
extern signed int (*v24) (signed short, unsigned short, signed char);
extern signed char v25 (signed char, signed short, signed int, signed int);
extern signed char (*v26) (signed char, signed short, signed int, signed int);
unsigned short v27 (unsigned char, unsigned short, signed int, unsigned char);
unsigned short (*v28) (unsigned char, unsigned short, signed int, unsigned char) = v27;
extern void v29 (signed short, unsigned short, unsigned char, unsigned int);
extern void (*v30) (signed short, unsigned short, unsigned char, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed short v53 = -4;
signed int v52 = 1;
signed char v51 = 0;

unsigned short v27 (unsigned char v54, unsigned short v55, signed int v56, unsigned char v57)
{
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
{
for (;;) {
signed int v60 = -1;
unsigned short v59 = 5;
signed short v58 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v19 (signed int v61, signed short v62, unsigned char v63, signed int v64)
{
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
{
for (;;) {
unsigned int v67 = 0U;
signed short v66 = 0;
unsigned int v65 = 3U;
trace++;
switch (trace)
{
case 3: 
return 6;
default: abort ();
}
}
}
}

signed char v13 (signed char v68, unsigned short v69)
{
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
{
for (;;) {
unsigned char v72 = 5;
unsigned char v71 = 0;
signed int v70 = -4;
trace++;
switch (trace)
{
case 1: 
return 3;
default: abort ();
}
}
}
}

signed int v5 (unsigned char v73, unsigned int v74, unsigned char v75)
{
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
{
for (;;) {
unsigned short v78 = 2;
signed char v77 = 1;
signed int v76 = 3;
trace++;
switch (trace)
{
case 8: 
{
signed short v79;
signed int v80;
signed int v81;
unsigned char v82;
v79 = -4 - -4;
v80 = v76 + v76;
v81 = v76 - v76;
v82 = v15 (v79, v80, v81);
history[history_index++] = (int)v82;
}
break;
case 10: 
{
signed char v83;
unsigned char v84;
v83 = v77 - v77;
v84 = v9 (v83);
history[history_index++] = (int)v84;
}
break;
case 12: 
return v76;
default: abort ();
}
}
}
}
