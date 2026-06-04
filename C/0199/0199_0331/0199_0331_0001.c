#include <stdlib.h>
signed int v1 (signed short);
signed int (*v2) (signed short) = v1;
extern unsigned int v3 (signed short, unsigned int);
extern unsigned int (*v4) (signed short, unsigned int);
extern signed short v5 (signed int, signed short);
extern signed short (*v6) (signed int, signed short);
unsigned char v7 (signed char, signed char);
unsigned char (*v8) (signed char, signed char) = v7;
unsigned int v9 (signed short, unsigned char, signed char, signed char);
unsigned int (*v10) (signed short, unsigned char, signed char, signed char) = v9;
extern signed int v11 (signed char, signed short, unsigned char, unsigned int);
extern signed int (*v12) (signed char, signed short, unsigned char, unsigned int);
extern unsigned int v13 (unsigned short, signed int);
extern unsigned int (*v14) (unsigned short, signed int);
extern unsigned char v15 (signed char, unsigned char, signed short);
extern unsigned char (*v16) (signed char, unsigned char, signed short);
extern void v17 (unsigned char);
extern void (*v18) (unsigned char);
extern signed char v19 (signed int);
extern signed char (*v20) (signed int);
extern signed short v21 (void);
extern signed short (*v22) (void);
extern unsigned char v23 (unsigned int);
extern unsigned char (*v24) (unsigned int);
extern unsigned char v25 (signed short, unsigned char);
extern unsigned char (*v26) (signed short, unsigned char);
extern unsigned char v27 (unsigned char, signed char, signed int, unsigned int);
extern unsigned char (*v28) (unsigned char, signed char, signed int, unsigned int);
extern unsigned char v29 (unsigned int, unsigned char, unsigned char);
extern unsigned char (*v30) (unsigned int, unsigned char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v51 = 1U;
unsigned char v50 = 6;
unsigned char v49 = 0;

unsigned int v9 (signed short v52, unsigned char v53, signed char v54, signed char v55)
{
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
{
for (;;) {
unsigned short v58 = 1;
signed int v57 = 1;
unsigned short v56 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v7 (signed char v59, signed char v60)
{
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
{
for (;;) {
unsigned int v63 = 7U;
unsigned short v62 = 4;
signed int v61 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v1 (signed short v64)
{
history[history_index++] = (int)v64;
{
for (;;) {
unsigned int v67 = 0U;
signed char v66 = 0;
unsigned int v65 = 3U;
trace++;
switch (trace)
{
case 0: 
return 2;
case 1: 
{
signed short v68;
unsigned int v69;
unsigned int v70;
v68 = -1 + 2;
v69 = v67 - 2U;
v70 = v3 (v68, v69);
history[history_index++] = (int)v70;
}
break;
case 15: 
return 2;
default: abort ();
}
}
}
}
