#include <stdlib.h>
extern unsigned short v1 (unsigned short, signed char);
extern unsigned short (*v2) (unsigned short, signed char);
signed char v3 (signed int, unsigned int);
signed char (*v4) (signed int, unsigned int) = v3;
extern unsigned char v5 (void);
extern unsigned char (*v6) (void);
extern unsigned char v7 (void);
extern unsigned char (*v8) (void);
signed int v9 (unsigned int, unsigned short);
signed int (*v10) (unsigned int, unsigned short) = v9;
extern void v11 (signed char, unsigned int);
extern void (*v12) (signed char, unsigned int);
extern signed short v13 (unsigned short, unsigned int);
extern signed short (*v14) (unsigned short, unsigned int);
extern unsigned short v15 (unsigned short, unsigned int, signed int);
extern unsigned short (*v16) (unsigned short, unsigned int, signed int);
unsigned short v17 (signed char);
unsigned short (*v18) (signed char) = v17;
extern void v19 (unsigned short, unsigned short);
extern void (*v20) (unsigned short, unsigned short);
extern void v21 (signed int);
extern void (*v22) (signed int);
extern unsigned char v23 (unsigned char, signed char, signed char, unsigned int);
extern unsigned char (*v24) (unsigned char, signed char, signed char, unsigned int);
extern unsigned int v25 (void);
extern unsigned int (*v26) (void);
extern unsigned char v29 (signed short);
extern unsigned char (*v30) (signed short);
extern int history[];
extern int history_index;
extern int trace;
signed int v121 = 2;
signed char v120 = -3;
signed short v119 = 3;

unsigned short v17 (signed char v122)
{
history[history_index++] = (int)v122;
{
for (;;) {
signed int v125 = -3;
signed int v124 = -3;
signed int v123 = 0;
trace++;
switch (trace)
{
case 4: 
return 7;
default: abort ();
}
}
}
}

signed int v9 (unsigned int v126, unsigned short v127)
{
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
{
for (;;) {
signed short v130 = 2;
unsigned char v129 = 2;
signed short v128 = -1;
trace++;
switch (trace)
{
case 7: 
return 2;
default: abort ();
}
}
}
}

signed char v3 (signed int v131, unsigned int v132)
{
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
{
for (;;) {
unsigned short v135 = 0;
unsigned short v134 = 0;
signed char v133 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
