#include <stdlib.h>
extern void v1 (unsigned int);
extern void (*v2) (unsigned int);
signed int v3 (unsigned int, signed int, unsigned char);
signed int (*v4) (unsigned int, signed int, unsigned char) = v3;
signed char v5 (signed int, unsigned int);
signed char (*v6) (signed int, unsigned int) = v5;
extern void v7 (unsigned short);
extern void (*v8) (unsigned short);
extern unsigned char v9 (signed int);
extern unsigned char (*v10) (signed int);
extern void v11 (unsigned int, unsigned short, unsigned short);
extern void (*v12) (unsigned int, unsigned short, unsigned short);
extern void v13 (signed short, unsigned int, signed short);
extern void (*v14) (signed short, unsigned int, signed short);
extern signed int v15 (unsigned short, unsigned char);
extern signed int (*v16) (unsigned short, unsigned char);
extern void v17 (signed char, unsigned char);
extern void (*v18) (signed char, unsigned char);
extern unsigned short v19 (void);
extern unsigned short (*v20) (void);
extern unsigned short v21 (void);
extern unsigned short (*v22) (void);
extern signed int v23 (void);
extern signed int (*v24) (void);
extern signed short v25 (void);
extern signed short (*v26) (void);
extern unsigned int v27 (signed short, unsigned char, signed short);
extern unsigned int (*v28) (signed short, unsigned char, signed short);
unsigned int v29 (signed int);
unsigned int (*v30) (signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v113 = 0;
unsigned int v112 = 0U;
signed int v111 = 2;

unsigned int v29 (signed int v114)
{
history[history_index++] = (int)v114;
{
for (;;) {
signed char v117 = 2;
signed char v116 = 2;
signed char v115 = -4;
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

signed char v5 (signed int v118, unsigned int v119)
{
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
{
for (;;) {
unsigned short v122 = 5;
unsigned int v121 = 1U;
unsigned int v120 = 3U;
trace++;
switch (trace)
{
case 1: 
return 1;
default: abort ();
}
}
}
}

signed int v3 (unsigned int v123, signed int v124, unsigned char v125)
{
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
{
for (;;) {
signed short v128 = 2;
signed short v127 = -1;
signed short v126 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
