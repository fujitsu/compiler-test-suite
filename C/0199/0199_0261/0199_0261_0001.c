#include <stdlib.h>
extern void v3 (void);
extern void (*v4) (void);
extern signed short v5 (unsigned short);
extern signed short (*v6) (unsigned short);
extern unsigned int v7 (void);
extern unsigned int (*v8) (void);
signed char v9 (unsigned int, unsigned short, signed int);
signed char (*v10) (unsigned int, unsigned short, signed int) = v9;
extern unsigned int v11 (signed int, signed int, signed short, unsigned short);
extern unsigned int (*v12) (signed int, signed int, signed short, unsigned short);
extern unsigned char v13 (signed int, unsigned char, signed short);
extern unsigned char (*v14) (signed int, unsigned char, signed short);
static signed int v15 (unsigned short, signed char, signed int, unsigned short);
static signed int (*v16) (unsigned short, signed char, signed int, unsigned short) = v15;
extern signed short v17 (signed char, signed char, unsigned short);
extern signed short (*v18) (signed char, signed char, unsigned short);
extern void v19 (void);
extern void (*v20) (void);
extern unsigned char v21 (void);
extern unsigned char (*v22) (void);
extern unsigned int v23 (unsigned char, unsigned short);
extern unsigned int (*v24) (unsigned char, unsigned short);
extern void v25 (signed short, signed short, signed int, signed int);
extern void (*v26) (signed short, signed short, signed int, signed int);
extern unsigned char v27 (unsigned int, unsigned short, unsigned int);
extern unsigned char (*v28) (unsigned int, unsigned short, unsigned int);
extern signed char v29 (unsigned char, unsigned char, unsigned char, unsigned char);
extern signed char (*v30) (unsigned char, unsigned char, unsigned char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed char v70 = -1;
unsigned char v69 = 7;
unsigned int v68 = 7U;

static signed int v15 (unsigned short v71, signed char v72, signed int v73, unsigned short v74)
{
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
{
for (;;) {
signed int v77 = 3;
signed char v76 = -1;
signed int v75 = 0;
trace++;
switch (trace)
{
case 7: 
return v77;
default: abort ();
}
}
}
}

signed char v9 (unsigned int v78, unsigned short v79, signed int v80)
{
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
{
for (;;) {
unsigned int v83 = 1U;
unsigned short v82 = 1;
unsigned int v81 = 6U;
trace++;
switch (trace)
{
case 6: 
{
unsigned short v84;
signed char v85;
signed int v86;
unsigned short v87;
signed int v88;
v84 = v82 - v82;
v85 = 3 - 3;
v86 = v80 - v80;
v87 = v82 + 6;
v88 = v15 (v84, v85, v86, v87);
history[history_index++] = (int)v88;
}
break;
case 8: 
return -4;
default: abort ();
}
}
}
}
