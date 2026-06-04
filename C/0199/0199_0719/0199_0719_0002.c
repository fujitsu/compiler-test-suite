#include <stdlib.h>
extern signed char v1 (unsigned char, unsigned short);
extern signed char (*v2) (unsigned char, unsigned short);
extern unsigned short v3 (signed char, signed char, signed int, signed int);
extern unsigned short (*v4) (signed char, signed char, signed int, signed int);
signed char v5 (signed char, signed int, unsigned int);
signed char (*v6) (signed char, signed int, unsigned int) = v5;
extern void v7 (signed char, signed char);
extern void (*v8) (signed char, signed char);
extern void v9 (void);
extern void (*v10) (void);
extern signed short v11 (unsigned char, unsigned short, unsigned int, unsigned int);
extern signed short (*v12) (unsigned char, unsigned short, unsigned int, unsigned int);
extern unsigned short v13 (unsigned int);
extern unsigned short (*v14) (unsigned int);
extern void v15 (signed char, unsigned char);
extern void (*v16) (signed char, unsigned char);
extern signed char v17 (signed short, signed int);
extern signed char (*v18) (signed short, signed int);
extern unsigned short v19 (signed char, signed int, signed char);
extern unsigned short (*v20) (signed char, signed int, signed char);
extern unsigned short v21 (signed char, unsigned int, signed char);
extern unsigned short (*v22) (signed char, unsigned int, signed char);
extern unsigned int v23 (unsigned short, unsigned int);
extern unsigned int (*v24) (unsigned short, unsigned int);
signed char v25 (signed int, signed int, signed char, signed short);
signed char (*v26) (signed int, signed int, signed char, signed short) = v25;
unsigned short v27 (unsigned char, signed short, unsigned char, unsigned short);
unsigned short (*v28) (unsigned char, signed short, unsigned char, unsigned short) = v27;
extern void v29 (void);
extern void (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v79 = 1U;
signed short v78 = 3;
signed int v77 = 0;

unsigned short v27 (unsigned char v80, signed short v81, unsigned char v82, unsigned short v83)
{
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
{
for (;;) {
unsigned int v86 = 0U;
unsigned char v85 = 5;
unsigned char v84 = 2;
trace++;
switch (trace)
{
case 7: 
return 0;
case 9: 
return v83;
case 11: 
return v83;
default: abort ();
}
}
}
}

signed char v25 (signed int v87, signed int v88, signed char v89, signed short v90)
{
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
{
for (;;) {
signed int v93 = 0;
unsigned char v92 = 1;
signed int v91 = 2;
trace++;
switch (trace)
{
case 2: 
return v89;
default: abort ();
}
}
}
}

signed char v5 (signed char v94, signed int v95, unsigned int v96)
{
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
{
for (;;) {
unsigned short v99 = 1;
signed char v98 = 0;
unsigned short v97 = 5;
trace++;
switch (trace)
{
case 4: 
{
unsigned char v100;
unsigned short v101;
signed char v102;
v100 = 1 - 4;
v101 = v99 - v99;
v102 = v1 (v100, v101);
history[history_index++] = (int)v102;
}
break;
case 14: 
return v98;
default: abort ();
}
}
}
}
