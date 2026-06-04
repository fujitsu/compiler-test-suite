#include <stdlib.h>
extern signed short v1 (void);
extern signed short (*v2) (void);
extern signed int v3 (unsigned char, unsigned char, signed char, unsigned int);
extern signed int (*v4) (unsigned char, unsigned char, signed char, unsigned int);
extern unsigned char v5 (void);
extern unsigned char (*v6) (void);
extern signed char v9 (unsigned int);
extern signed char (*v10) (unsigned int);
unsigned char v11 (unsigned short);
unsigned char (*v12) (unsigned short) = v11;
extern unsigned short v17 (unsigned short, unsigned int);
extern unsigned short (*v18) (unsigned short, unsigned int);
void v19 (unsigned short);
void (*v20) (unsigned short) = v19;
extern signed char v21 (signed char, unsigned short);
extern signed char (*v22) (signed char, unsigned short);
extern signed short v23 (unsigned char, signed char, unsigned char, unsigned short);
extern signed short (*v24) (unsigned char, signed char, unsigned char, unsigned short);
extern signed short v25 (signed char, unsigned int, signed int, signed char);
extern signed short (*v26) (signed char, unsigned int, signed int, signed char);
extern signed char v27 (unsigned int, unsigned short, signed int, unsigned short);
extern signed char (*v28) (unsigned int, unsigned short, signed int, unsigned short);
void v29 (unsigned short, unsigned char, unsigned int, unsigned char);
void (*v30) (unsigned short, unsigned char, unsigned int, unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v115 = 3;
unsigned char v114 = 7;
unsigned char v113 = 7;

void v29 (unsigned short v116, unsigned char v117, unsigned int v118, unsigned char v119)
{
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
{
for (;;) {
signed char v122 = 1;
unsigned char v121 = 5;
signed short v120 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v19 (unsigned short v123)
{
history[history_index++] = (int)v123;
{
for (;;) {
signed short v126 = 0;
signed int v125 = 0;
unsigned char v124 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v11 (unsigned short v127)
{
history[history_index++] = (int)v127;
{
for (;;) {
unsigned char v130 = 5;
unsigned int v129 = 3U;
signed char v128 = 3;
trace++;
switch (trace)
{
case 8: 
return 1;
default: abort ();
}
}
}
}
