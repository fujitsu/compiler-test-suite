#include <stdlib.h>
extern signed short v1 (void);
extern signed short (*v2) (void);
extern unsigned int v3 (unsigned int);
extern unsigned int (*v4) (unsigned int);
extern unsigned short v5 (unsigned short, signed int, unsigned int);
extern unsigned short (*v6) (unsigned short, signed int, unsigned int);
extern signed int v7 (void);
extern signed int (*v8) (void);
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
extern unsigned char v11 (signed int, signed char);
extern unsigned char (*v12) (signed int, signed char);
void v13 (void);
void (*v14) (void) = v13;
extern unsigned short v15 (signed int, unsigned char);
extern unsigned short (*v16) (signed int, unsigned char);
signed char v17 (signed char, unsigned char);
signed char (*v18) (signed char, unsigned char) = v17;
unsigned int v19 (signed char, signed int, signed char);
unsigned int (*v20) (signed char, signed int, signed char) = v19;
extern signed char v21 (void);
extern signed char (*v22) (void);
extern signed short v23 (unsigned int, signed int, signed int, unsigned int);
extern signed short (*v24) (unsigned int, signed int, signed int, unsigned int);
extern signed int v25 (signed short);
extern signed int (*v26) (signed short);
extern unsigned char v27 (signed short, unsigned short);
extern unsigned char (*v28) (signed short, unsigned short);
extern void v29 (void);
extern void (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed short v109 = 0;
unsigned int v108 = 4U;
signed char v107 = 3;

unsigned int v19 (signed char v110, signed int v111, signed char v112)
{
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
{
for (;;) {
unsigned int v115 = 5U;
signed char v114 = 3;
signed char v113 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v17 (signed char v116, unsigned char v117)
{
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
{
for (;;) {
unsigned int v120 = 2U;
unsigned int v119 = 4U;
signed char v118 = -3;
trace++;
switch (trace)
{
case 5: 
{
signed char v121;
v121 = v21 ();
history[history_index++] = (int)v121;
}
break;
case 7: 
{
signed char v122;
v122 = v21 ();
history[history_index++] = (int)v122;
}
break;
case 9: 
return 1;
default: abort ();
}
}
}
}

void v13 (void)
{
{
for (;;) {
signed char v125 = -2;
unsigned char v124 = 7;
unsigned char v123 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
