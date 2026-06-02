#include <stdlib.h>
extern void v1 (void);
extern void (*v2) (void);
unsigned int v3 (unsigned int);
unsigned int (*v4) (unsigned int) = v3;
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
extern signed short v9 (signed short);
extern signed short (*v10) (signed short);
unsigned int v11 (signed char, unsigned int, signed int, signed char);
unsigned int (*v12) (signed char, unsigned int, signed int, signed char) = v11;
unsigned int v13 (unsigned int, signed int, unsigned char);
unsigned int (*v14) (unsigned int, signed int, unsigned char) = v13;
extern unsigned int v15 (void);
extern unsigned int (*v16) (void);
extern unsigned char v17 (signed char, unsigned char, unsigned int);
extern unsigned char (*v18) (signed char, unsigned char, unsigned int);
extern void v19 (void);
extern void (*v20) (void);
extern unsigned int v21 (void);
extern unsigned int (*v22) (void);
extern unsigned char v23 (unsigned char, unsigned short, signed int, unsigned char);
extern unsigned char (*v24) (unsigned char, unsigned short, signed int, unsigned char);
extern signed char v27 (signed char, unsigned short);
extern signed char (*v28) (signed char, unsigned short);
extern signed short v29 (signed char, signed short, signed char, signed short);
extern signed short (*v30) (signed char, signed short, signed char, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed int v113 = -1;
signed int v112 = -4;
unsigned char v111 = 1;

unsigned int v13 (unsigned int v114, signed int v115, unsigned char v116)
{
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
{
for (;;) {
signed char v119 = -1;
signed short v118 = 0;
signed char v117 = 2;
trace++;
switch (trace)
{
case 8: 
return v114;
default: abort ();
}
}
}
}

unsigned int v11 (signed char v120, unsigned int v121, signed int v122, signed char v123)
{
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
{
for (;;) {
signed char v126 = 2;
unsigned short v125 = 6;
signed int v124 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v3 (unsigned int v127)
{
history[history_index++] = (int)v127;
{
for (;;) {
signed short v130 = 3;
unsigned short v129 = 0;
signed int v128 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
