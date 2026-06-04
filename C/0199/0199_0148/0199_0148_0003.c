#include <stdlib.h>
extern signed short v1 (signed int, signed short, signed short);
extern signed short (*v2) (signed int, signed short, signed short);
unsigned char v3 (unsigned int, signed int);
unsigned char (*v4) (unsigned int, signed int) = v3;
unsigned char v5 (signed char, unsigned short, unsigned char);
unsigned char (*v6) (signed char, unsigned short, unsigned char) = v5;
extern unsigned int v7 (void);
extern unsigned int (*v8) (void);
extern unsigned short v9 (signed int);
extern unsigned short (*v10) (signed int);
extern void v11 (signed short, unsigned short, unsigned char, unsigned char);
extern void (*v12) (signed short, unsigned short, unsigned char, unsigned char);
extern unsigned short v13 (unsigned short, unsigned char, signed char);
extern unsigned short (*v14) (unsigned short, unsigned char, signed char);
extern signed int v15 (void);
extern signed int (*v16) (void);
extern signed short v17 (signed short, unsigned short, signed short);
extern signed short (*v18) (signed short, unsigned short, signed short);
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
extern unsigned short v21 (unsigned short, unsigned int, signed int);
extern unsigned short (*v22) (unsigned short, unsigned int, signed int);
extern unsigned char v23 (unsigned int, unsigned int);
extern unsigned char (*v24) (unsigned int, unsigned int);
extern signed char v25 (unsigned int, unsigned short, signed int, signed short);
extern signed char (*v26) (unsigned int, unsigned short, signed int, signed short);
signed char v27 (unsigned short, signed short, unsigned char);
signed char (*v28) (unsigned short, signed short, unsigned char) = v27;
extern unsigned short v29 (unsigned short);
extern unsigned short (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v107 = 3U;
signed int v106 = 1;
unsigned int v105 = 2U;

signed char v27 (unsigned short v108, signed short v109, unsigned char v110)
{
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
{
for (;;) {
unsigned short v113 = 5;
unsigned int v112 = 7U;
signed short v111 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v5 (signed char v114, unsigned short v115, unsigned char v116)
{
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
{
for (;;) {
signed int v119 = 3;
signed short v118 = 3;
unsigned int v117 = 1U;
trace++;
switch (trace)
{
case 9: 
{
signed int v120;
unsigned short v121;
v120 = v119 + v119;
v121 = v9 (v120);
history[history_index++] = (int)v121;
}
break;
case 13: 
return 3;
default: abort ();
}
}
}
}

unsigned char v3 (unsigned int v122, signed int v123)
{
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
{
for (;;) {
unsigned char v126 = 1;
signed int v125 = 2;
signed int v124 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
