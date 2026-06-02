#include <stdlib.h>
extern signed short v1 (signed char, signed int);
extern signed short (*v2) (signed char, signed int);
extern unsigned char v3 (unsigned char, unsigned int);
extern unsigned char (*v4) (unsigned char, unsigned int);
extern unsigned char v5 (void);
extern unsigned char (*v6) (void);
extern unsigned short v7 (signed short, unsigned char, signed short);
extern unsigned short (*v8) (signed short, unsigned char, signed short);
extern unsigned int v9 (signed short, unsigned int);
extern unsigned int (*v10) (signed short, unsigned int);
extern unsigned char v11 (unsigned int);
extern unsigned char (*v12) (unsigned int);
extern unsigned int v13 (signed char, signed short, signed short);
extern unsigned int (*v14) (signed char, signed short, signed short);
extern void v15 (void);
extern void (*v16) (void);
extern unsigned int v17 (signed int, unsigned int);
extern unsigned int (*v18) (signed int, unsigned int);
unsigned char v19 (unsigned int);
unsigned char (*v20) (unsigned int) = v19;
extern signed char v21 (signed char, unsigned short, signed short, unsigned short);
extern signed char (*v22) (signed char, unsigned short, signed short, unsigned short);
extern signed short v23 (signed char, signed int, signed char);
extern signed short (*v24) (signed char, signed int, signed char);
extern signed short v25 (unsigned int, signed int);
extern signed short (*v26) (unsigned int, signed int);
signed char v27 (signed int, unsigned short, signed short, unsigned char);
signed char (*v28) (signed int, unsigned short, signed short, unsigned char) = v27;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v52 = 2;
unsigned char v51 = 6;
unsigned short v50 = 7;

signed char v27 (signed int v53, unsigned short v54, signed short v55, unsigned char v56)
{
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
history[history_index++] = (int)v56;
{
for (;;) {
signed int v59 = -4;
unsigned int v58 = 0U;
signed int v57 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v19 (unsigned int v60)
{
history[history_index++] = (int)v60;
{
for (;;) {
signed char v63 = -1;
signed short v62 = -2;
unsigned char v61 = 4;
trace++;
switch (trace)
{
case 7: 
{
unsigned int v64;
signed int v65;
signed short v66;
v64 = 7U - v60;
v65 = -2 - 1;
v66 = v25 (v64, v65);
history[history_index++] = (int)v66;
}
break;
case 13: 
return 1;
default: abort ();
}
}
}
}
