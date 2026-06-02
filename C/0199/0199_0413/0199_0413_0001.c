#include <stdlib.h>
extern signed short v3 (void);
extern signed short (*v4) (void);
extern unsigned char v5 (signed short, unsigned char, unsigned short);
extern unsigned char (*v6) (signed short, unsigned char, unsigned short);
signed short v7 (signed short);
signed short (*v8) (signed short) = v7;
extern signed short v9 (signed int, signed short);
extern signed short (*v10) (signed int, signed short);
extern void v11 (signed int, signed int, signed int);
extern void (*v12) (signed int, signed int, signed int);
extern unsigned int v13 (signed char, signed char, signed char);
extern unsigned int (*v14) (signed char, signed char, signed char);
unsigned short v15 (unsigned char, signed int);
unsigned short (*v16) (unsigned char, signed int) = v15;
extern unsigned char v17 (unsigned short);
extern unsigned char (*v18) (unsigned short);
extern void v19 (unsigned char, unsigned int);
extern void (*v20) (unsigned char, unsigned int);
extern unsigned short v21 (unsigned int, unsigned int, unsigned short, signed char);
extern unsigned short (*v22) (unsigned int, unsigned int, unsigned short, signed char);
unsigned int v23 (signed short, signed int, unsigned int);
unsigned int (*v24) (signed short, signed int, unsigned int) = v23;
extern signed int v25 (signed int, signed short);
extern signed int (*v26) (signed int, signed short);
extern signed int v27 (unsigned short);
extern signed int (*v28) (unsigned short);
extern signed char v29 (signed char);
extern signed char (*v30) (signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v57 = 3;
unsigned int v56 = 1U;
signed char v55 = 0;

unsigned int v23 (signed short v58, signed int v59, unsigned int v60)
{
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
{
for (;;) {
signed char v63 = 1;
unsigned short v62 = 3;
unsigned short v61 = 5;
trace++;
switch (trace)
{
case 11: 
return v60;
default: abort ();
}
}
}
}

unsigned short v15 (unsigned char v64, signed int v65)
{
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
{
for (;;) {
unsigned int v68 = 6U;
signed char v67 = -1;
unsigned short v66 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v7 (signed short v69)
{
history[history_index++] = (int)v69;
{
for (;;) {
signed char v72 = 2;
unsigned char v71 = 4;
unsigned short v70 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
