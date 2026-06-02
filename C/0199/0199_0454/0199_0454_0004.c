#include <stdlib.h>
extern unsigned char v1 (void);
extern unsigned char (*v2) (void);
unsigned char v3 (unsigned char, signed short);
unsigned char (*v4) (unsigned char, signed short) = v3;
extern signed short v5 (signed int, signed short, signed char, signed short);
extern signed short (*v6) (signed int, signed short, signed char, signed short);
extern signed short v7 (void);
extern signed short (*v8) (void);
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
extern unsigned char v11 (signed int);
extern unsigned char (*v12) (signed int);
extern signed short v13 (void);
extern signed short (*v14) (void);
extern unsigned short v15 (unsigned short, signed int);
extern unsigned short (*v16) (unsigned short, signed int);
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
extern void v19 (unsigned short, signed int, signed char, signed char);
extern void (*v20) (unsigned short, signed int, signed char, signed char);
extern signed short v21 (signed char, unsigned int, signed short, unsigned short);
extern signed short (*v22) (signed char, unsigned int, signed short, unsigned short);
extern signed short v23 (signed short, signed short);
extern signed short (*v24) (signed short, signed short);
extern signed char v25 (void);
extern signed char (*v26) (void);
void v27 (unsigned char, unsigned int);
void (*v28) (unsigned char, unsigned int) = v27;
extern void v29 (void);
extern void (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed int v115 = -1;
unsigned int v114 = 0U;
unsigned int v113 = 7U;

void v27 (unsigned char v116, unsigned int v117)
{
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
{
for (;;) {
unsigned int v120 = 4U;
signed int v119 = -1;
signed int v118 = -3;
trace++;
switch (trace)
{
case 2: 
return;
case 4: 
return;
case 6: 
return;
case 8: 
return;
case 10: 
return;
default: abort ();
}
}
}
}

unsigned char v3 (unsigned char v121, signed short v122)
{
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
{
for (;;) {
signed int v125 = -4;
unsigned short v124 = 0;
unsigned char v123 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
