#include <stdlib.h>
extern unsigned int v3 (unsigned char, signed char);
extern unsigned int (*v4) (unsigned char, signed char);
extern unsigned short v5 (unsigned int, signed int, signed short);
extern unsigned short (*v6) (unsigned int, signed int, signed short);
extern unsigned short v7 (unsigned int, signed char, signed char, signed short);
extern unsigned short (*v8) (unsigned int, signed char, signed char, signed short);
extern signed char v9 (signed char);
extern signed char (*v10) (signed char);
unsigned short v11 (signed short, signed char);
unsigned short (*v12) (signed short, signed char) = v11;
signed int v13 (signed int, unsigned short, signed int, unsigned char);
signed int (*v14) (signed int, unsigned short, signed int, unsigned char) = v13;
extern unsigned int v15 (unsigned int, signed short);
extern unsigned int (*v16) (unsigned int, signed short);
extern unsigned char v17 (signed char);
extern unsigned char (*v18) (signed char);
extern signed char v19 (signed char, signed int);
extern signed char (*v20) (signed char, signed int);
extern signed char v21 (signed char, unsigned char);
extern signed char (*v22) (signed char, unsigned char);
extern signed short v23 (unsigned int, unsigned int, signed short, signed char);
extern signed short (*v24) (unsigned int, unsigned int, signed short, signed char);
extern signed char v25 (signed short, unsigned int, unsigned int, unsigned int);
extern signed char (*v26) (signed short, unsigned int, unsigned int, unsigned int);
void v27 (unsigned char, signed char, unsigned int, unsigned short);
void (*v28) (unsigned char, signed char, unsigned int, unsigned short) = v27;
extern unsigned int v29 (void);
extern unsigned int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed short v65 = 1;
unsigned char v64 = 2;
signed short v63 = -1;

void v27 (unsigned char v66, signed char v67, unsigned int v68, unsigned short v69)
{
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
{
for (;;) {
unsigned short v72 = 6;
signed short v71 = -3;
signed short v70 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v13 (signed int v73, unsigned short v74, signed int v75, unsigned char v76)
{
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
{
for (;;) {
unsigned int v79 = 6U;
signed char v78 = -4;
signed char v77 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v11 (signed short v80, signed char v81)
{
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
{
for (;;) {
unsigned char v84 = 0;
unsigned int v83 = 2U;
signed char v82 = 1;
trace++;
switch (trace)
{
case 5: 
return 5;
default: abort ();
}
}
}
}
