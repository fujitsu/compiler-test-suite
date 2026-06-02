#include <stdlib.h>
unsigned char v1 (unsigned short);
unsigned char (*v2) (unsigned short) = v1;
extern unsigned char v3 (void);
extern unsigned char (*v4) (void);
extern unsigned int v5 (unsigned char, signed char);
extern unsigned int (*v6) (unsigned char, signed char);
extern signed int v7 (void);
extern signed int (*v8) (void);
extern void v9 (signed int);
extern void (*v10) (signed int);
extern unsigned int v11 (signed short, signed char, signed char);
extern unsigned int (*v12) (signed short, signed char, signed char);
extern signed int v13 (signed short, signed char, unsigned char);
extern signed int (*v14) (signed short, signed char, unsigned char);
extern signed char v15 (signed short, unsigned char, signed int);
extern signed char (*v16) (signed short, unsigned char, signed int);
unsigned char v17 (unsigned int, signed short, unsigned char, signed short);
unsigned char (*v18) (unsigned int, signed short, unsigned char, signed short) = v17;
extern void v19 (signed int, unsigned char, signed short, unsigned int);
extern void (*v20) (signed int, unsigned char, signed short, unsigned int);
extern signed int v21 (signed short);
extern signed int (*v22) (signed short);
extern unsigned int v23 (signed char, unsigned char);
extern unsigned int (*v24) (signed char, unsigned char);
unsigned char v25 (unsigned int, unsigned int);
unsigned char (*v26) (unsigned int, unsigned int) = v25;
extern unsigned char v27 (unsigned short, signed int, unsigned short);
extern unsigned char (*v28) (unsigned short, signed int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed int v57 = -3;
signed int v56 = 2;
signed short v55 = 0;

unsigned char v25 (unsigned int v58, unsigned int v59)
{
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
{
for (;;) {
unsigned short v62 = 3;
signed char v61 = -3;
signed int v60 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v17 (unsigned int v63, signed short v64, unsigned char v65, signed short v66)
{
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
{
for (;;) {
unsigned int v69 = 0U;
signed short v68 = 0;
signed int v67 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v1 (unsigned short v70)
{
history[history_index++] = (int)v70;
{
for (;;) {
signed short v73 = -2;
signed int v72 = 2;
signed int v71 = 2;
trace++;
switch (trace)
{
case 0: 
{
signed int v74;
v74 = v72 - v72;
v9 (v74);
}
break;
case 14: 
return 0;
default: abort ();
}
}
}
}
