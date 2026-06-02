#include <stdlib.h>
extern unsigned char v3 (signed int);
extern unsigned char (*v4) (signed int);
extern signed char v5 (unsigned char, unsigned int);
extern signed char (*v6) (unsigned char, unsigned int);
extern signed char v7 (unsigned char, signed int);
extern signed char (*v8) (unsigned char, signed int);
void v9 (signed short, unsigned short);
void (*v10) (signed short, unsigned short) = v9;
extern unsigned int v11 (signed short, unsigned short, unsigned char, unsigned int);
extern unsigned int (*v12) (signed short, unsigned short, unsigned char, unsigned int);
extern unsigned short v13 (signed int, signed int, unsigned short);
extern unsigned short (*v14) (signed int, signed int, unsigned short);
unsigned short v15 (signed short, signed short, unsigned short, signed char);
unsigned short (*v16) (signed short, signed short, unsigned short, signed char) = v15;
extern signed int v17 (unsigned int, signed char, unsigned int, unsigned short);
extern signed int (*v18) (unsigned int, signed char, unsigned int, unsigned short);
extern signed char v19 (unsigned short, signed char, signed int, unsigned char);
extern signed char (*v20) (unsigned short, signed char, signed int, unsigned char);
extern unsigned int v21 (unsigned short);
extern unsigned int (*v22) (unsigned short);
signed short v23 (void);
signed short (*v24) (void) = v23;
extern unsigned int v25 (signed short, unsigned int, signed char, signed char);
extern unsigned int (*v26) (signed short, unsigned int, signed char, signed char);
extern unsigned char v27 (signed int, signed int, unsigned int);
extern unsigned char (*v28) (signed int, signed int, unsigned int);
extern signed short v29 (signed char);
extern signed short (*v30) (signed char);
extern int history[];
extern int history_index;
extern int trace;
signed char v115 = 0;
unsigned short v114 = 4;
signed int v113 = 0;

signed short v23 (void)
{
{
for (;;) {
signed char v118 = -3;
signed int v117 = -3;
signed short v116 = 3;
trace++;
switch (trace)
{
case 5: 
return 0;
case 10: 
return 3;
default: abort ();
}
}
}
}

unsigned short v15 (signed short v119, signed short v120, unsigned short v121, signed char v122)
{
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
{
for (;;) {
signed char v125 = 1;
signed short v124 = -4;
signed char v123 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v9 (signed short v126, unsigned short v127)
{
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
{
for (;;) {
signed char v130 = 2;
unsigned char v129 = 0;
signed short v128 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
