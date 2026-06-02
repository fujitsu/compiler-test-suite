#include <stdlib.h>
extern signed char v1 (signed char, unsigned int, unsigned int);
extern signed char (*v2) (signed char, unsigned int, unsigned int);
extern signed char v3 (signed char);
extern signed char (*v4) (signed char);
extern unsigned char v5 (signed int, unsigned int, unsigned int, signed int);
extern unsigned char (*v6) (signed int, unsigned int, unsigned int, signed int);
extern signed char v7 (void);
extern signed char (*v8) (void);
extern unsigned int v9 (unsigned short, unsigned char);
extern unsigned int (*v10) (unsigned short, unsigned char);
extern signed int v11 (signed char);
extern signed int (*v12) (signed char);
extern signed int v17 (unsigned int, signed char, unsigned short);
extern signed int (*v18) (unsigned int, signed char, unsigned short);
unsigned char v19 (signed short, unsigned int, signed short);
unsigned char (*v20) (signed short, unsigned int, signed short) = v19;
void v21 (signed char);
void (*v22) (signed char) = v21;
extern signed short v23 (void);
extern signed short (*v24) (void);
extern unsigned int v25 (void);
extern unsigned int (*v26) (void);
extern unsigned char v27 (unsigned char);
extern unsigned char (*v28) (unsigned char);
extern signed short v29 (unsigned short, signed short);
extern signed short (*v30) (unsigned short, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed char v112 = 2;
unsigned char v111 = 3;
unsigned short v110 = 6;

void v21 (signed char v113)
{
history[history_index++] = (int)v113;
{
for (;;) {
signed int v116 = 3;
signed short v115 = -3;
signed int v114 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v19 (signed short v117, unsigned int v118, signed short v119)
{
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
{
for (;;) {
signed short v122 = 1;
signed char v121 = 2;
signed int v120 = 2;
trace++;
switch (trace)
{
case 5: 
return 7;
default: abort ();
}
}
}
}
