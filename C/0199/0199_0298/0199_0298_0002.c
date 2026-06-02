#include <stdlib.h>
extern unsigned char v1 (void);
extern unsigned char (*v2) (void);
signed int v3 (unsigned short, unsigned char, signed int, unsigned int);
signed int (*v4) (unsigned short, unsigned char, signed int, unsigned int) = v3;
extern signed int v5 (unsigned short, unsigned int, unsigned int);
extern signed int (*v6) (unsigned short, unsigned int, unsigned int);
extern signed char v7 (signed int);
extern signed char (*v8) (signed int);
extern void v9 (signed short, unsigned short);
extern void (*v10) (signed short, unsigned short);
extern unsigned short v11 (void);
extern unsigned short (*v12) (void);
extern unsigned short v13 (signed int, unsigned char);
extern unsigned short (*v14) (signed int, unsigned char);
extern unsigned int v15 (unsigned short, unsigned char);
extern unsigned int (*v16) (unsigned short, unsigned char);
extern signed char v17 (unsigned int);
extern signed char (*v18) (unsigned int);
extern signed char v19 (unsigned short, unsigned char);
extern signed char (*v20) (unsigned short, unsigned char);
extern signed short v21 (signed short, unsigned int, unsigned char, signed short);
extern signed short (*v22) (signed short, unsigned int, unsigned char, signed short);
extern unsigned char v23 (signed short, unsigned int, signed int);
extern unsigned char (*v24) (signed short, unsigned int, signed int);
void v25 (unsigned int, signed char);
void (*v26) (unsigned int, signed char) = v25;
signed char v27 (signed char, unsigned char, signed short);
signed char (*v28) (signed char, unsigned char, signed short) = v27;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v66 = 0;
signed short v65 = 0;
signed int v64 = 1;

signed char v27 (signed char v67, unsigned char v68, signed short v69)
{
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
{
for (;;) {
unsigned int v72 = 4U;
signed char v71 = -3;
unsigned int v70 = 1U;
trace++;
switch (trace)
{
case 9: 
return -3;
default: abort ();
}
}
}
}

void v25 (unsigned int v73, signed char v74)
{
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
{
for (;;) {
unsigned char v77 = 1;
unsigned short v76 = 7;
signed short v75 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v3 (unsigned short v78, unsigned char v79, signed int v80, unsigned int v81)
{
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
{
for (;;) {
signed int v84 = 0;
unsigned char v83 = 2;
unsigned char v82 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
