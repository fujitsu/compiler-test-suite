#include <stdlib.h>
signed int v3 (signed char);
signed int (*v4) (signed char) = v3;
extern unsigned char v5 (signed short);
extern unsigned char (*v6) (signed short);
extern signed int v7 (signed char, signed int);
extern signed int (*v8) (signed char, signed int);
extern unsigned char v9 (unsigned int, signed int, signed int);
extern unsigned char (*v10) (unsigned int, signed int, signed int);
signed short v11 (unsigned char, signed short, signed char);
signed short (*v12) (unsigned char, signed short, signed char) = v11;
extern signed short v13 (signed short, unsigned short, signed char);
extern signed short (*v14) (signed short, unsigned short, signed char);
extern signed int v15 (void);
extern signed int (*v16) (void);
extern void v17 (unsigned int, unsigned short, unsigned int);
extern void (*v18) (unsigned int, unsigned short, unsigned int);
extern signed char v19 (signed int, signed short, signed short, signed int);
extern signed char (*v20) (signed int, signed short, signed short, signed int);
extern signed char v21 (void);
extern signed char (*v22) (void);
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
extern unsigned int v25 (void);
extern unsigned int (*v26) (void);
extern signed char v27 (signed short);
extern signed char (*v28) (signed short);
extern void v29 (void);
extern void (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed short v117 = 1;
signed int v116 = 0;
signed short v115 = -2;

signed short v11 (unsigned char v118, signed short v119, signed char v120)
{
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
{
for (;;) {
unsigned char v123 = 2;
unsigned char v122 = 6;
unsigned int v121 = 7U;
trace++;
switch (trace)
{
case 4: 
{
v29 ();
}
break;
case 6: 
{
v29 ();
}
break;
case 8: 
{
v29 ();
}
break;
case 10: 
{
v29 ();
}
break;
case 12: 
return -4;
default: abort ();
}
}
}
}

signed int v3 (signed char v124)
{
history[history_index++] = (int)v124;
{
for (;;) {
signed int v127 = -2;
signed int v126 = 0;
signed int v125 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
