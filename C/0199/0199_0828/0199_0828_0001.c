#include <stdlib.h>
extern void v1 (unsigned short);
extern void (*v2) (unsigned short);
extern unsigned int v3 (void);
extern unsigned int (*v4) (void);
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
unsigned short v7 (signed int, signed int, unsigned int, signed int);
unsigned short (*v8) (signed int, signed int, unsigned int, signed int) = v7;
extern signed short v11 (void);
extern signed short (*v12) (void);
extern unsigned int v13 (unsigned short, signed int, unsigned char, unsigned char);
extern unsigned int (*v14) (unsigned short, signed int, unsigned char, unsigned char);
extern unsigned short v15 (unsigned char, unsigned char);
extern unsigned short (*v16) (unsigned char, unsigned char);
extern unsigned char v17 (unsigned short, unsigned int, signed char, unsigned int);
extern unsigned char (*v18) (unsigned short, unsigned int, signed char, unsigned int);
extern signed int v19 (signed int, signed int);
extern signed int (*v20) (signed int, signed int);
signed int v21 (void);
signed int (*v22) (void) = v21;
extern unsigned char v23 (signed short);
extern unsigned char (*v24) (signed short);
extern signed int v25 (unsigned char, unsigned char, unsigned int, signed char);
extern signed int (*v26) (unsigned char, unsigned char, unsigned int, signed char);
signed char v27 (unsigned int, signed short);
signed char (*v28) (unsigned int, signed short) = v27;
extern void v29 (signed short);
extern void (*v30) (signed short);
extern int history[];
extern int history_index;
extern int trace;
signed char v72 = 2;
unsigned int v71 = 0U;
unsigned char v70 = 2;

signed char v27 (unsigned int v73, signed short v74)
{
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
{
for (;;) {
signed short v77 = -4;
signed short v76 = 1;
unsigned short v75 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v21 (void)
{
{
for (;;) {
signed char v80 = 0;
signed int v79 = -1;
unsigned int v78 = 4U;
trace++;
switch (trace)
{
case 3: 
return 1;
case 7: 
{
unsigned short v81;
v81 = 3 - 7;
v1 (v81);
}
break;
case 11: 
return v79;
default: abort ();
}
}
}
}

unsigned short v7 (signed int v82, signed int v83, unsigned int v84, signed int v85)
{
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
{
for (;;) {
signed int v88 = -2;
signed int v87 = -1;
signed short v86 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
