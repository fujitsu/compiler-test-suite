#include <stdlib.h>
extern unsigned short v1 (unsigned int, signed int, signed int, unsigned char);
extern unsigned short (*v2) (unsigned int, signed int, signed int, unsigned char);
extern unsigned char v3 (signed short, unsigned int, signed char);
extern unsigned char (*v4) (signed short, unsigned int, signed char);
signed int v5 (signed short, unsigned short, unsigned int);
signed int (*v6) (signed short, unsigned short, unsigned int) = v5;
extern void v9 (signed char);
extern void (*v10) (signed char);
extern signed char v11 (unsigned int);
extern signed char (*v12) (unsigned int);
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
extern signed short v15 (void);
extern signed short (*v16) (void);
extern unsigned int v17 (unsigned short, signed char);
extern unsigned int (*v18) (unsigned short, signed char);
extern unsigned short v19 (unsigned char, signed int);
extern unsigned short (*v20) (unsigned char, signed int);
unsigned short v23 (signed short);
unsigned short (*v24) (signed short) = v23;
extern void v25 (signed short);
extern void (*v26) (signed short);
extern unsigned short v27 (unsigned int, signed char, signed int);
extern unsigned short (*v28) (unsigned int, signed char, signed int);
extern unsigned short v29 (signed int);
extern unsigned short (*v30) (signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v125 = 3;
unsigned int v124 = 1U;
signed short v123 = 0;

unsigned short v23 (signed short v126)
{
history[history_index++] = (int)v126;
{
for (;;) {
unsigned short v129 = 3;
unsigned char v128 = 7;
unsigned char v127 = 2;
trace++;
switch (trace)
{
case 3: 
return 3;
case 5: 
return v129;
default: abort ();
}
}
}
}

signed int v5 (signed short v130, unsigned short v131, unsigned int v132)
{
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
{
for (;;) {
unsigned short v135 = 6;
unsigned short v134 = 7;
unsigned int v133 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
