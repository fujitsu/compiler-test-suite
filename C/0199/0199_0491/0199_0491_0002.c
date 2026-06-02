#include <stdlib.h>
extern unsigned int v1 (unsigned short, signed int, unsigned int);
extern unsigned int (*v2) (unsigned short, signed int, unsigned int);
extern void v3 (unsigned short, unsigned char, signed short, unsigned int);
extern void (*v4) (unsigned short, unsigned char, signed short, unsigned int);
extern unsigned short v5 (signed char, unsigned char);
extern unsigned short (*v6) (signed char, unsigned char);
extern signed short v7 (unsigned short, signed int, signed int, unsigned char);
extern signed short (*v8) (unsigned short, signed int, signed int, unsigned char);
extern signed int v9 (void);
extern signed int (*v10) (void);
extern void v11 (void);
extern void (*v12) (void);
extern signed char v13 (void);
extern signed char (*v14) (void);
extern signed short v15 (unsigned int, signed short);
extern signed short (*v16) (unsigned int, signed short);
void v17 (signed char);
void (*v18) (signed char) = v17;
extern void v19 (signed short, unsigned char, unsigned char, signed int);
extern void (*v20) (signed short, unsigned char, unsigned char, signed int);
extern unsigned char v23 (void);
extern unsigned char (*v24) (void);
extern unsigned int v25 (signed char, unsigned char, unsigned short, unsigned char);
extern unsigned int (*v26) (signed char, unsigned char, unsigned short, unsigned char);
extern signed short v27 (unsigned int, signed char, unsigned short);
extern signed short (*v28) (unsigned int, signed char, unsigned short);
unsigned short v29 (signed short);
unsigned short (*v30) (signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v110 = 2;
unsigned char v109 = 4;
unsigned int v108 = 4U;

unsigned short v29 (signed short v111)
{
history[history_index++] = (int)v111;
{
for (;;) {
unsigned short v114 = 4;
signed int v113 = 1;
signed short v112 = -1;
trace++;
switch (trace)
{
case 7: 
return v114;
default: abort ();
}
}
}
}

void v17 (signed char v115)
{
history[history_index++] = (int)v115;
{
for (;;) {
signed short v118 = 0;
signed short v117 = 3;
unsigned char v116 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
