#include <stdlib.h>
extern void v1 (signed int, signed int);
extern void (*v2) (signed int, signed int);
extern signed int v3 (unsigned short);
extern signed int (*v4) (unsigned short);
extern unsigned char v5 (signed short, unsigned int, signed short, unsigned short);
extern unsigned char (*v6) (signed short, unsigned int, signed short, unsigned short);
extern unsigned short v7 (unsigned short, unsigned int, signed short, signed int);
extern unsigned short (*v8) (unsigned short, unsigned int, signed short, signed int);
unsigned int v9 (signed int, unsigned char);
unsigned int (*v10) (signed int, unsigned char) = v9;
extern unsigned int v11 (signed char, signed char, unsigned short, signed short);
extern unsigned int (*v12) (signed char, signed char, unsigned short, signed short);
extern unsigned char v13 (unsigned int, unsigned char, signed int);
extern unsigned char (*v14) (unsigned int, unsigned char, signed int);
extern unsigned char v15 (signed char, unsigned int, unsigned short);
extern unsigned char (*v16) (signed char, unsigned int, unsigned short);
extern signed int v17 (unsigned int, unsigned int, unsigned char, signed short);
extern signed int (*v18) (unsigned int, unsigned int, unsigned char, signed short);
extern unsigned int v19 (unsigned short, unsigned short, unsigned short, unsigned short);
extern unsigned int (*v20) (unsigned short, unsigned short, unsigned short, unsigned short);
unsigned short v21 (signed char);
unsigned short (*v22) (signed char) = v21;
extern signed short v23 (unsigned int, signed int);
extern signed short (*v24) (unsigned int, signed int);
extern unsigned char v25 (unsigned char, signed char, unsigned int, signed short);
extern unsigned char (*v26) (unsigned char, signed char, unsigned int, signed short);
extern unsigned int v27 (unsigned int, unsigned int);
extern unsigned int (*v28) (unsigned int, unsigned int);
extern signed char v29 (signed char);
extern signed char (*v30) (signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v64 = 6U;
signed short v63 = -4;
unsigned short v62 = 7;

unsigned short v21 (signed char v65)
{
history[history_index++] = (int)v65;
{
for (;;) {
signed char v68 = -3;
signed int v67 = 3;
unsigned short v66 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v9 (signed int v69, unsigned char v70)
{
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
{
for (;;) {
signed int v73 = 2;
unsigned int v72 = 5U;
signed int v71 = 0;
trace++;
switch (trace)
{
case 5: 
return 3U;
default: abort ();
}
}
}
}
