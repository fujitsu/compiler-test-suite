#include <stdlib.h>
extern signed short v1 (unsigned char, unsigned int);
extern signed short (*v2) (unsigned char, unsigned int);
extern signed short v3 (unsigned short, signed char);
extern signed short (*v4) (unsigned short, signed char);
unsigned int v5 (unsigned int);
unsigned int (*v6) (unsigned int) = v5;
extern signed char v7 (void);
extern signed char (*v8) (void);
extern signed char v9 (signed int);
extern signed char (*v10) (signed int);
extern unsigned short v11 (unsigned int, signed short, signed int);
extern unsigned short (*v12) (unsigned int, signed short, signed int);
extern unsigned short v13 (signed char, unsigned char, unsigned short);
extern unsigned short (*v14) (signed char, unsigned char, unsigned short);
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
extern unsigned short v17 (signed short, unsigned int, signed short);
extern unsigned short (*v18) (signed short, unsigned int, signed short);
extern signed int v19 (signed char);
extern signed int (*v20) (signed char);
extern unsigned int v21 (void);
extern unsigned int (*v22) (void);
extern unsigned short v23 (signed char, unsigned int, signed int, unsigned int);
extern unsigned short (*v24) (signed char, unsigned int, signed int, unsigned int);
void v25 (signed short, signed char, unsigned char);
void (*v26) (signed short, signed char, unsigned char) = v25;
extern unsigned short v27 (signed char, signed char, unsigned char, unsigned char);
extern unsigned short (*v28) (signed char, signed char, unsigned char, unsigned char);
extern void v29 (signed short);
extern void (*v30) (signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v108 = 6U;
unsigned char v107 = 0;
unsigned int v106 = 1U;

void v25 (signed short v109, signed char v110, unsigned char v111)
{
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
{
for (;;) {
unsigned char v114 = 7;
unsigned short v113 = 1;
unsigned short v112 = 5;
trace++;
switch (trace)
{
case 9: 
return;
default: abort ();
}
}
}
}

unsigned int v5 (unsigned int v115)
{
history[history_index++] = (int)v115;
{
for (;;) {
unsigned char v118 = 5;
signed char v117 = 3;
unsigned int v116 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
