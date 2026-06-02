#include <stdlib.h>
extern unsigned char v1 (void);
extern unsigned char (*v2) (void);
extern signed int v3 (unsigned int, signed char, unsigned char, unsigned char);
extern signed int (*v4) (unsigned int, signed char, unsigned char, unsigned char);
unsigned short v5 (signed short, signed char, unsigned short, unsigned char);
unsigned short (*v6) (signed short, signed char, unsigned short, unsigned char) = v5;
extern unsigned short v7 (unsigned char, unsigned int, signed int, unsigned int);
extern unsigned short (*v8) (unsigned char, unsigned int, signed int, unsigned int);
extern unsigned int v9 (signed char, unsigned char, unsigned char);
extern unsigned int (*v10) (signed char, unsigned char, unsigned char);
extern unsigned int v11 (unsigned char);
extern unsigned int (*v12) (unsigned char);
extern void v13 (unsigned int);
extern void (*v14) (unsigned int);
extern signed short v15 (unsigned char, unsigned char, unsigned int, unsigned int);
extern signed short (*v16) (unsigned char, unsigned char, unsigned int, unsigned int);
extern signed int v17 (unsigned int);
extern signed int (*v18) (unsigned int);
extern unsigned char v19 (unsigned char, signed short, unsigned char);
extern unsigned char (*v20) (unsigned char, signed short, unsigned char);
extern unsigned short v21 (unsigned short, signed char, unsigned short, signed char);
extern unsigned short (*v22) (unsigned short, signed char, unsigned short, signed char);
extern unsigned int v23 (unsigned short, unsigned char, signed short, signed char);
extern unsigned int (*v24) (unsigned short, unsigned char, signed short, signed char);
extern unsigned int v25 (unsigned int, unsigned int);
extern unsigned int (*v26) (unsigned int, unsigned int);
unsigned int v27 (unsigned int);
unsigned int (*v28) (unsigned int) = v27;
extern signed char v29 (unsigned char, signed int, unsigned short, signed short);
extern signed char (*v30) (unsigned char, signed int, unsigned short, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed char v109 = 0;
signed int v108 = 0;
unsigned short v107 = 2;

unsigned int v27 (unsigned int v110)
{
history[history_index++] = (int)v110;
{
for (;;) {
unsigned char v113 = 1;
signed short v112 = -3;
signed short v111 = -1;
trace++;
switch (trace)
{
case 2: 
return 4U;
default: abort ();
}
}
}
}

unsigned short v5 (signed short v114, signed char v115, unsigned short v116, unsigned char v117)
{
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
{
for (;;) {
signed char v120 = -2;
unsigned short v119 = 7;
signed short v118 = -3;
trace++;
switch (trace)
{
case 9: 
return v119;
default: abort ();
}
}
}
}
