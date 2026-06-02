#include <stdlib.h>
extern signed short v1 (signed int, unsigned char);
extern signed short (*v2) (signed int, unsigned char);
extern unsigned int v3 (signed int, unsigned short, unsigned short, unsigned char);
extern unsigned int (*v4) (signed int, unsigned short, unsigned short, unsigned char);
extern signed char v5 (unsigned short, signed int);
extern signed char (*v6) (unsigned short, signed int);
extern unsigned int v7 (signed short, unsigned short, signed short);
extern unsigned int (*v8) (signed short, unsigned short, signed short);
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
extern void v11 (signed short, signed short, unsigned int);
extern void (*v12) (signed short, signed short, unsigned int);
signed char v13 (void);
signed char (*v14) (void) = v13;
extern signed char v15 (unsigned int);
extern signed char (*v16) (unsigned int);
extern unsigned short v17 (unsigned short);
extern unsigned short (*v18) (unsigned short);
extern signed int v19 (signed short, unsigned char, signed int, unsigned short);
extern signed int (*v20) (signed short, unsigned char, signed int, unsigned short);
extern signed char v21 (signed short, unsigned short, signed int, unsigned int);
extern signed char (*v22) (signed short, unsigned short, signed int, unsigned int);
unsigned short v23 (void);
unsigned short (*v24) (void) = v23;
extern unsigned char v25 (void);
extern unsigned char (*v26) (void);
signed char v27 (unsigned char, signed int);
signed char (*v28) (unsigned char, signed int) = v27;
extern unsigned int v29 (signed int, unsigned int);
extern unsigned int (*v30) (signed int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed char v74 = -3;
unsigned short v73 = 0;
unsigned int v72 = 7U;

signed char v27 (unsigned char v75, signed int v76)
{
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
{
for (;;) {
unsigned char v79 = 7;
unsigned int v78 = 3U;
unsigned int v77 = 6U;
trace++;
switch (trace)
{
case 1: 
{
signed int v80;
unsigned int v81;
unsigned int v82;
v80 = 0 - v76;
v81 = 5U + v77;
v82 = v29 (v80, v81);
history[history_index++] = (int)v82;
}
break;
case 3: 
{
unsigned short v83;
signed int v84;
signed char v85;
v83 = 3 - 6;
v84 = -1 + -2;
v85 = v5 (v83, v84);
history[history_index++] = (int)v85;
}
break;
case 13: 
return -1;
default: abort ();
}
}
}
}

unsigned short v23 (void)
{
{
for (;;) {
signed char v88 = 1;
unsigned int v87 = 0U;
signed int v86 = 3;
trace++;
switch (trace)
{
case 6: 
return 7;
case 8: 
return 7;
default: abort ();
}
}
}
}

signed char v13 (void)
{
{
for (;;) {
signed char v91 = -4;
unsigned short v90 = 1;
signed short v89 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
