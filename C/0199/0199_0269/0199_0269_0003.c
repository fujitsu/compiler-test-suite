#include <stdlib.h>
extern signed int v1 (signed char);
extern signed int (*v2) (signed char);
extern unsigned short v3 (signed char, unsigned char);
extern unsigned short (*v4) (signed char, unsigned char);
extern unsigned char v5 (unsigned char, unsigned char, unsigned short);
extern unsigned char (*v6) (unsigned char, unsigned char, unsigned short);
extern unsigned short v7 (unsigned short, signed int, unsigned short);
extern unsigned short (*v8) (unsigned short, signed int, unsigned short);
extern unsigned char v9 (unsigned char, unsigned short, signed int);
extern unsigned char (*v10) (unsigned char, unsigned short, signed int);
extern unsigned short v11 (unsigned int);
extern unsigned short (*v12) (unsigned int);
extern signed short v13 (unsigned short, unsigned char, unsigned short);
extern signed short (*v14) (unsigned short, unsigned char, unsigned short);
extern unsigned short v15 (unsigned char, unsigned char);
extern unsigned short (*v16) (unsigned char, unsigned char);
extern unsigned char v17 (signed short, unsigned char, signed char, signed int);
extern unsigned char (*v18) (signed short, unsigned char, signed char, signed int);
extern void v19 (void);
extern void (*v20) (void);
signed int v21 (unsigned char, unsigned short, signed char, unsigned int);
signed int (*v22) (unsigned char, unsigned short, signed char, unsigned int) = v21;
extern void v23 (unsigned short, unsigned char, signed char, unsigned int);
extern void (*v24) (unsigned short, unsigned char, signed char, unsigned int);
extern signed char v25 (void);
extern signed char (*v26) (void);
signed short v27 (unsigned int, unsigned short, signed int, unsigned short);
signed short (*v28) (unsigned int, unsigned short, signed int, unsigned short) = v27;
extern unsigned short v29 (signed char, signed int, signed int);
extern unsigned short (*v30) (signed char, signed int, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v109 = 4U;
unsigned char v108 = 3;
signed int v107 = 3;

signed short v27 (unsigned int v110, unsigned short v111, signed int v112, unsigned short v113)
{
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
{
for (;;) {
unsigned short v116 = 0;
unsigned char v115 = 6;
signed short v114 = -4;
trace++;
switch (trace)
{
case 6: 
return -2;
case 11: 
return -1;
default: abort ();
}
}
}
}

signed int v21 (unsigned char v117, unsigned short v118, signed char v119, unsigned int v120)
{
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
{
for (;;) {
unsigned int v123 = 6U;
unsigned char v122 = 1;
signed int v121 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
