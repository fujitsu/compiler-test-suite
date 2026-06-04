#include <stdlib.h>
extern signed short v1 (unsigned short, unsigned short);
extern signed short (*v2) (unsigned short, unsigned short);
extern signed char v3 (signed int, unsigned int, signed short);
extern signed char (*v4) (signed int, unsigned int, signed short);
unsigned int v5 (void);
unsigned int (*v6) (void) = v5;
extern void v7 (signed char, signed short, unsigned short, unsigned short);
extern void (*v8) (signed char, signed short, unsigned short, unsigned short);
extern signed int v9 (signed short);
extern signed int (*v10) (signed short);
extern unsigned char v11 (signed short);
extern unsigned char (*v12) (signed short);
unsigned int v13 (signed int);
unsigned int (*v14) (signed int) = v13;
extern signed short v15 (signed char);
extern signed short (*v16) (signed char);
extern unsigned short v17 (unsigned char);
extern unsigned short (*v18) (unsigned char);
signed int v19 (unsigned int);
signed int (*v20) (unsigned int) = v19;
extern signed int v23 (void);
extern signed int (*v24) (void);
extern signed short v25 (void);
extern signed short (*v26) (void);
extern signed short v27 (void);
extern signed short (*v28) (void);
extern unsigned char v29 (unsigned char, signed short, signed char);
extern unsigned char (*v30) (unsigned char, signed short, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v72 = 2U;
signed char v71 = 0;
unsigned char v70 = 1;

signed int v19 (unsigned int v73)
{
history[history_index++] = (int)v73;
{
for (;;) {
unsigned short v76 = 6;
unsigned int v75 = 3U;
signed short v74 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v13 (signed int v77)
{
history[history_index++] = (int)v77;
{
for (;;) {
signed short v80 = 1;
unsigned char v79 = 5;
unsigned int v78 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v5 (void)
{
{
for (;;) {
unsigned char v83 = 1;
signed int v82 = -3;
unsigned char v81 = 2;
trace++;
switch (trace)
{
case 7: 
{
signed short v84;
v84 = v27 ();
history[history_index++] = (int)v84;
}
break;
case 9: 
{
signed char v85;
signed short v86;
unsigned short v87;
unsigned short v88;
v85 = -4 - -2;
v86 = -3 + -3;
v87 = 6 + 1;
v88 = 2 - 5;
v7 (v85, v86, v87, v88);
}
break;
case 11: 
return 1U;
default: abort ();
}
}
}
}
