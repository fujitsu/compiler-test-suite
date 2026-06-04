#include <stdlib.h>
extern signed int v1 (unsigned int, unsigned int);
extern signed int (*v2) (unsigned int, unsigned int);
extern signed int v3 (signed int);
extern signed int (*v4) (signed int);
signed int v5 (unsigned int, unsigned short, signed int);
signed int (*v6) (unsigned int, unsigned short, signed int) = v5;
extern signed char v7 (unsigned int, unsigned char, signed int, signed short);
extern signed char (*v8) (unsigned int, unsigned char, signed int, signed short);
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
extern void v13 (unsigned short, unsigned short);
extern void (*v14) (unsigned short, unsigned short);
extern signed int v15 (signed short, unsigned short, signed short);
extern signed int (*v16) (signed short, unsigned short, signed short);
extern signed short v19 (signed short, signed char, unsigned int);
extern signed short (*v20) (signed short, signed char, unsigned int);
extern signed int v21 (unsigned char, signed char, unsigned short, unsigned short);
extern signed int (*v22) (unsigned char, signed char, unsigned short, unsigned short);
extern unsigned int v23 (signed short);
extern unsigned int (*v24) (signed short);
extern unsigned short v25 (void);
extern unsigned short (*v26) (void);
signed char v27 (void);
signed char (*v28) (void) = v27;
void v29 (void);
void (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v110 = 4;
unsigned int v109 = 3U;
unsigned short v108 = 6;

void v29 (void)
{
{
for (;;) {
signed int v113 = -2;
signed int v112 = -3;
signed short v111 = 1;
trace++;
switch (trace)
{
case 7: 
return;
case 11: 
return;
default: abort ();
}
}
}
}

signed char v27 (void)
{
{
for (;;) {
signed short v116 = 2;
signed short v115 = -3;
signed short v114 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v5 (unsigned int v117, unsigned short v118, signed int v119)
{
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
{
for (;;) {
unsigned short v122 = 1;
unsigned int v121 = 5U;
signed short v120 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
