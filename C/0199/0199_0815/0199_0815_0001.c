#include <stdlib.h>
extern unsigned int v1 (signed short, signed int, unsigned int);
extern unsigned int (*v2) (signed short, signed int, unsigned int);
extern signed char v3 (unsigned short, unsigned int, unsigned int);
extern signed char (*v4) (unsigned short, unsigned int, unsigned int);
signed int v5 (unsigned short, unsigned short);
signed int (*v6) (unsigned short, unsigned short) = v5;
extern unsigned short v7 (void);
extern unsigned short (*v8) (void);
extern unsigned int v9 (void);
extern unsigned int (*v10) (void);
extern unsigned char v11 (signed short, signed char);
extern unsigned char (*v12) (signed short, signed char);
extern signed int v13 (unsigned char, unsigned char, signed int, unsigned int);
extern signed int (*v14) (unsigned char, unsigned char, signed int, unsigned int);
extern signed char v15 (signed short, unsigned char);
extern signed char (*v16) (signed short, unsigned char);
extern signed short v17 (signed char, unsigned int, signed char);
extern signed short (*v18) (signed char, unsigned int, signed char);
extern unsigned int v21 (signed int, signed char, signed char);
extern unsigned int (*v22) (signed int, signed char, signed char);
void v23 (unsigned int, unsigned int, signed char, unsigned short);
void (*v24) (unsigned int, unsigned int, signed char, unsigned short) = v23;
extern void v25 (void);
extern void (*v26) (void);
extern unsigned char v27 (signed short, unsigned short, signed int);
extern unsigned char (*v28) (signed short, unsigned short, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v45 = 3;
unsigned int v44 = 1U;
signed char v43 = 2;

void v23 (unsigned int v46, unsigned int v47, signed char v48, unsigned short v49)
{
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
{
for (;;) {
signed short v52 = 2;
signed char v51 = 1;
signed int v50 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v5 (unsigned short v53, unsigned short v54)
{
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
{
for (;;) {
unsigned short v57 = 2;
unsigned short v56 = 7;
unsigned char v55 = 6;
trace++;
switch (trace)
{
case 9: 
{
signed short v58;
unsigned char v59;
signed char v60;
v58 = 1 - 2;
v59 = v55 + v55;
v60 = v15 (v58, v59);
history[history_index++] = (int)v60;
}
break;
case 13: 
return -1;
default: abort ();
}
}
}
}
