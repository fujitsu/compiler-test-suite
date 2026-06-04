#include <stdlib.h>
signed short v1 (signed char, unsigned char, signed int, unsigned short);
signed short (*v2) (signed char, unsigned char, signed int, unsigned short) = v1;
extern unsigned short v3 (unsigned char, signed short);
extern unsigned short (*v4) (unsigned char, signed short);
signed short v5 (unsigned int, signed short, unsigned int);
signed short (*v6) (unsigned int, signed short, unsigned int) = v5;
extern void v7 (signed short, unsigned char);
extern void (*v8) (signed short, unsigned char);
extern unsigned short v9 (signed char, signed char, unsigned int);
extern unsigned short (*v10) (signed char, signed char, unsigned int);
extern void v11 (void);
extern void (*v12) (void);
extern unsigned short v13 (void);
extern unsigned short (*v14) (void);
extern unsigned int v15 (signed char);
extern unsigned int (*v16) (signed char);
extern signed char v17 (void);
extern signed char (*v18) (void);
extern signed short v21 (void);
extern signed short (*v22) (void);
extern unsigned int v23 (unsigned char, unsigned int);
extern unsigned int (*v24) (unsigned char, unsigned int);
extern signed int v25 (signed int, signed char, signed char, unsigned int);
extern signed int (*v26) (signed int, signed char, signed char, unsigned int);
extern signed int v27 (void);
extern signed int (*v28) (void);
extern signed short v29 (signed char, signed int, signed short, signed int);
extern signed short (*v30) (signed char, signed int, signed short, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed char v110 = -2;
unsigned char v109 = 2;
signed char v108 = 3;

signed short v5 (unsigned int v111, signed short v112, unsigned int v113)
{
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
{
for (;;) {
unsigned int v116 = 0U;
unsigned char v115 = 3;
unsigned char v114 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v1 (signed char v117, unsigned char v118, signed int v119, unsigned short v120)
{
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
{
for (;;) {
signed char v123 = -3;
unsigned int v122 = 7U;
signed char v121 = 3;
trace++;
switch (trace)
{
case 0: 
{
signed char v124;
v124 = v17 ();
history[history_index++] = (int)v124;
}
break;
case 2: 
{
v11 ();
}
break;
case 16: 
return -3;
default: abort ();
}
}
}
}
