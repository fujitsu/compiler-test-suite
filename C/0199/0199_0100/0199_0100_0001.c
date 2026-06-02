#include <stdlib.h>
extern signed short v1 (void);
extern signed short (*v2) (void);
extern signed short v3 (signed char);
extern signed short (*v4) (signed char);
extern signed char v5 (signed char);
extern signed char (*v6) (signed char);
extern unsigned int v7 (unsigned int, signed short, signed int);
extern unsigned int (*v8) (unsigned int, signed short, signed int);
extern signed int v9 (signed char);
extern signed int (*v10) (signed char);
extern unsigned int v11 (unsigned short);
extern unsigned int (*v12) (unsigned short);
extern unsigned short v13 (unsigned short, signed int, unsigned int, unsigned char);
extern unsigned short (*v14) (unsigned short, signed int, unsigned int, unsigned char);
extern signed int v17 (signed int);
extern signed int (*v18) (signed int);
extern signed char v19 (unsigned char);
extern signed char (*v20) (unsigned char);
signed char v21 (signed char, unsigned char);
signed char (*v22) (signed char, unsigned char) = v21;
extern unsigned int v23 (signed short, unsigned short);
extern unsigned int (*v24) (signed short, unsigned short);
unsigned int v25 (signed int, unsigned int, unsigned char);
unsigned int (*v26) (signed int, unsigned int, unsigned char) = v25;
extern unsigned short v27 (unsigned int);
extern unsigned short (*v28) (unsigned int);
extern signed char v29 (signed int, unsigned int, signed short);
extern signed char (*v30) (signed int, unsigned int, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v43 = 4U;
signed int v42 = 1;
unsigned int v41 = 0U;

unsigned int v25 (signed int v44, unsigned int v45, unsigned char v46)
{
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
{
for (;;) {
signed char v49 = 2;
signed int v48 = 2;
unsigned short v47 = 7;
trace++;
switch (trace)
{
case 1: 
{
unsigned int v50;
unsigned short v51;
v50 = v45 + v45;
v51 = v27 (v50);
history[history_index++] = (int)v51;
}
break;
case 3: 
return v45;
default: abort ();
}
}
}
}

signed char v21 (signed char v52, unsigned char v53)
{
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
{
for (;;) {
unsigned char v56 = 3;
unsigned int v55 = 4U;
unsigned int v54 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
