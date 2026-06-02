#include <stdlib.h>
extern unsigned char v3 (signed int);
extern unsigned char (*v4) (signed int);
unsigned char v5 (signed short, signed short, signed short);
unsigned char (*v6) (signed short, signed short, signed short) = v5;
extern unsigned char v7 (void);
extern unsigned char (*v8) (void);
extern void v9 (signed short, unsigned short, unsigned char);
extern void (*v10) (signed short, unsigned short, unsigned char);
extern void v11 (unsigned int, unsigned short, unsigned char);
extern void (*v12) (unsigned int, unsigned short, unsigned char);
extern signed int v13 (unsigned int);
extern signed int (*v14) (unsigned int);
unsigned char v15 (signed char);
unsigned char (*v16) (signed char) = v15;
extern signed int v17 (void);
extern signed int (*v18) (void);
extern void v19 (unsigned short, signed short);
extern void (*v20) (unsigned short, signed short);
extern signed short v21 (signed char, unsigned int, unsigned char, signed int);
extern signed short (*v22) (signed char, unsigned int, unsigned char, signed int);
extern void v23 (void);
extern void (*v24) (void);
extern signed int v25 (signed short, signed int, signed char, unsigned int);
extern signed int (*v26) (signed short, signed int, signed char, unsigned int);
extern signed short v27 (signed char, signed char);
extern signed short (*v28) (signed char, signed char);
extern signed short v29 (signed short, signed int, unsigned char, signed short);
extern signed short (*v30) (signed short, signed int, unsigned char, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v112 = 6;
signed int v111 = 3;
unsigned int v110 = 5U;

unsigned char v15 (signed char v113)
{
history[history_index++] = (int)v113;
{
for (;;) {
unsigned char v116 = 2;
signed int v115 = 0;
unsigned int v114 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v5 (signed short v117, signed short v118, signed short v119)
{
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
{
for (;;) {
unsigned short v122 = 1;
signed short v121 = 0;
unsigned int v120 = 6U;
trace++;
switch (trace)
{
case 7: 
return 6;
default: abort ();
}
}
}
}
