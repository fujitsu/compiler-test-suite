#include <stdlib.h>
extern signed short v1 (signed char, signed char);
extern signed short (*v2) (signed char, signed char);
signed char v3 (unsigned char, signed int);
signed char (*v4) (unsigned char, signed int) = v3;
extern signed int v5 (unsigned int, unsigned short);
extern signed int (*v6) (unsigned int, unsigned short);
extern unsigned char v7 (void);
extern unsigned char (*v8) (void);
extern unsigned int v9 (unsigned short);
extern unsigned int (*v10) (unsigned short);
extern unsigned short v11 (void);
extern unsigned short (*v12) (void);
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
extern void v15 (signed short);
extern void (*v16) (signed short);
extern unsigned short v17 (unsigned short, unsigned int, signed int, signed char);
extern unsigned short (*v18) (unsigned short, unsigned int, signed int, signed char);
extern void v19 (signed short);
extern void (*v20) (signed short);
extern signed short v21 (unsigned char);
extern signed short (*v22) (unsigned char);
unsigned char v23 (void);
unsigned char (*v24) (void) = v23;
extern signed int v25 (unsigned int, unsigned short, unsigned char);
extern signed int (*v26) (unsigned int, unsigned short, unsigned char);
extern signed int v27 (unsigned short, unsigned short, signed int);
extern signed int (*v28) (unsigned short, unsigned short, signed int);
extern unsigned short v29 (signed char, signed short);
extern unsigned short (*v30) (signed char, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed int v109 = -4;
unsigned short v108 = 6;
unsigned int v107 = 6U;

unsigned char v23 (void)
{
{
for (;;) {
unsigned int v112 = 3U;
signed char v111 = -3;
signed short v110 = -1;
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

signed char v3 (unsigned char v113, signed int v114)
{
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
{
for (;;) {
signed int v117 = 2;
signed int v116 = 2;
unsigned short v115 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
