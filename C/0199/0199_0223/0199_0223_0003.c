#include <stdlib.h>
extern signed char v1 (signed int);
extern signed char (*v2) (signed int);
extern void v3 (unsigned char, unsigned short);
extern void (*v4) (unsigned char, unsigned short);
extern unsigned short v5 (signed char, signed int, unsigned short, signed int);
extern unsigned short (*v6) (signed char, signed int, unsigned short, signed int);
extern void v7 (unsigned int);
extern void (*v8) (unsigned int);
extern unsigned int v9 (signed short, signed int);
extern unsigned int (*v10) (signed short, signed int);
extern signed char v11 (unsigned char, unsigned int);
extern signed char (*v12) (unsigned char, unsigned int);
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
unsigned short v15 (unsigned short, signed short);
unsigned short (*v16) (unsigned short, signed short) = v15;
signed short v17 (unsigned char, unsigned int, signed char, unsigned int);
signed short (*v18) (unsigned char, unsigned int, signed char, unsigned int) = v17;
extern signed char v19 (signed char, unsigned short);
extern signed char (*v20) (signed char, unsigned short);
extern unsigned short v21 (unsigned short);
extern unsigned short (*v22) (unsigned short);
extern signed char v23 (void);
extern signed char (*v24) (void);
extern signed int v25 (unsigned char, signed char, signed char);
extern signed int (*v26) (unsigned char, signed char, signed char);
extern signed int v27 (void);
extern signed int (*v28) (void);
extern signed char v29 (unsigned short);
extern signed char (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed int v112 = -2;
signed char v111 = 1;
unsigned int v110 = 2U;

signed short v17 (unsigned char v113, unsigned int v114, signed char v115, unsigned int v116)
{
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
{
for (;;) {
signed short v119 = -3;
signed char v118 = -2;
signed char v117 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v15 (unsigned short v120, signed short v121)
{
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
{
for (;;) {
signed char v124 = -3;
unsigned char v123 = 5;
signed char v122 = -2;
trace++;
switch (trace)
{
case 6: 
return v120;
default: abort ();
}
}
}
}
