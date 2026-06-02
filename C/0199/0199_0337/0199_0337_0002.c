#include <stdlib.h>
extern void v3 (unsigned int, signed char, signed short);
extern void (*v4) (unsigned int, signed char, signed short);
extern signed char v5 (signed char, unsigned short, signed short);
extern signed char (*v6) (signed char, unsigned short, signed short);
extern void v7 (unsigned char);
extern void (*v8) (unsigned char);
extern signed int v9 (unsigned int, signed short, signed int);
extern signed int (*v10) (unsigned int, signed short, signed int);
signed short v11 (signed char, unsigned char, signed short, signed char);
signed short (*v12) (signed char, unsigned char, signed short, signed char) = v11;
extern signed char v13 (unsigned int);
extern signed char (*v14) (unsigned int);
unsigned char v15 (unsigned short, signed char, unsigned short);
unsigned char (*v16) (unsigned short, signed char, unsigned short) = v15;
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
extern signed char v19 (unsigned short, signed int, unsigned char, unsigned char);
extern signed char (*v20) (unsigned short, signed int, unsigned char, unsigned char);
extern void v21 (unsigned int, signed int);
extern void (*v22) (unsigned int, signed int);
extern unsigned char v23 (unsigned char, signed char, unsigned char, signed int);
extern unsigned char (*v24) (unsigned char, signed char, unsigned char, signed int);
extern unsigned short v25 (signed int, signed short);
extern unsigned short (*v26) (signed int, signed short);
extern unsigned int v27 (signed int, unsigned int);
extern unsigned int (*v28) (signed int, unsigned int);
extern signed char v29 (signed int, signed int, signed int, unsigned int);
extern signed char (*v30) (signed int, signed int, signed int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed int v111 = -4;
signed short v110 = 0;
signed short v109 = 0;

unsigned char v15 (unsigned short v112, signed char v113, unsigned short v114)
{
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
{
for (;;) {
signed char v117 = 0;
unsigned char v116 = 6;
unsigned short v115 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v11 (signed char v118, unsigned char v119, signed short v120, signed char v121)
{
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
{
for (;;) {
signed char v124 = -1;
signed int v123 = 0;
signed char v122 = -3;
trace++;
switch (trace)
{
case 1: 
{
unsigned char v125;
v125 = v17 ();
history[history_index++] = (int)v125;
}
break;
case 7: 
{
unsigned char v126;
v126 = v17 ();
history[history_index++] = (int)v126;
}
break;
case 13: 
return 3;
default: abort ();
}
}
}
}
