#include <stdlib.h>
extern unsigned char v1 (void);
extern unsigned char (*v2) (void);
extern signed int v3 (unsigned char, signed short);
extern signed int (*v4) (unsigned char, signed short);
extern unsigned char v5 (unsigned int, unsigned int);
extern unsigned char (*v6) (unsigned int, unsigned int);
extern unsigned char v7 (signed short, unsigned short, unsigned char);
extern unsigned char (*v8) (signed short, unsigned short, unsigned char);
extern signed char v9 (unsigned int);
extern signed char (*v10) (unsigned int);
extern unsigned char v11 (signed char);
extern unsigned char (*v12) (signed char);
extern signed char v13 (unsigned char, signed char, unsigned short, unsigned int);
extern signed char (*v14) (unsigned char, signed char, unsigned short, unsigned int);
extern void v15 (void);
extern void (*v16) (void);
extern unsigned int v17 (void);
extern unsigned int (*v18) (void);
extern unsigned short v19 (signed int);
extern unsigned short (*v20) (signed int);
extern signed int v21 (unsigned short);
extern signed int (*v22) (unsigned short);
extern signed int v23 (unsigned short, signed int);
extern signed int (*v24) (unsigned short, signed int);
signed int v25 (unsigned char, unsigned char);
signed int (*v26) (unsigned char, unsigned char) = v25;
unsigned short v27 (signed char);
unsigned short (*v28) (signed char) = v27;
extern unsigned char v29 (unsigned int, signed char, unsigned short);
extern unsigned char (*v30) (unsigned int, signed char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed int v126 = -3;
unsigned int v125 = 2U;
signed int v124 = -3;

unsigned short v27 (signed char v127)
{
history[history_index++] = (int)v127;
{
for (;;) {
unsigned char v130 = 5;
unsigned char v129 = 0;
unsigned short v128 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v25 (unsigned char v131, unsigned char v132)
{
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
{
for (;;) {
unsigned short v135 = 4;
unsigned int v134 = 4U;
signed char v133 = 1;
trace++;
switch (trace)
{
case 1: 
return 1;
case 3: 
return 2;
default: abort ();
}
}
}
}
