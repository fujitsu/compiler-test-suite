#include <stdlib.h>
extern void v1 (unsigned short);
extern void (*v2) (unsigned short);
extern unsigned short v3 (unsigned short, unsigned short, unsigned char);
extern unsigned short (*v4) (unsigned short, unsigned short, unsigned char);
extern unsigned char v5 (unsigned char, unsigned int, unsigned char);
extern unsigned char (*v6) (unsigned char, unsigned int, unsigned char);
extern unsigned int v7 (unsigned char, unsigned char, signed short, signed int);
extern unsigned int (*v8) (unsigned char, unsigned char, signed short, signed int);
signed int v9 (unsigned char, signed short);
signed int (*v10) (unsigned char, signed short) = v9;
extern unsigned char v13 (unsigned char, signed short, signed short, signed int);
extern unsigned char (*v14) (unsigned char, signed short, signed short, signed int);
extern signed short v15 (signed int, signed char, signed int, signed short);
extern signed short (*v16) (signed int, signed char, signed int, signed short);
extern signed int v17 (unsigned int, signed char);
extern signed int (*v18) (unsigned int, signed char);
void v19 (signed int, signed int);
void (*v20) (signed int, signed int) = v19;
extern unsigned char v21 (void);
extern unsigned char (*v22) (void);
extern unsigned char v23 (void);
extern unsigned char (*v24) (void);
extern unsigned char v25 (signed int, unsigned int, unsigned short);
extern unsigned char (*v26) (signed int, unsigned int, unsigned short);
extern unsigned short v27 (signed short);
extern unsigned short (*v28) (signed short);
extern unsigned int v29 (signed int);
extern unsigned int (*v30) (signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v71 = 2U;
signed int v70 = -2;
signed short v69 = 0;

void v19 (signed int v72, signed int v73)
{
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
{
for (;;) {
signed char v76 = -4;
signed char v75 = 3;
unsigned short v74 = 4;
trace++;
switch (trace)
{
case 2: 
{
signed int v77;
unsigned int v78;
v77 = v72 + v73;
v78 = v29 (v77);
history[history_index++] = (int)v78;
}
break;
case 4: 
{
signed short v79;
unsigned short v80;
v79 = -4 - -2;
v80 = v27 (v79);
history[history_index++] = (int)v80;
}
break;
case 6: 
return;
case 8: 
{
signed int v81;
unsigned int v82;
v81 = v72 - v73;
v82 = v29 (v81);
history[history_index++] = (int)v82;
}
break;
case 10: 
{
signed int v83;
unsigned int v84;
v83 = 0 + v73;
v84 = v29 (v83);
history[history_index++] = (int)v84;
}
break;
case 12: 
return;
default: abort ();
}
}
}
}

signed int v9 (unsigned char v85, signed short v86)
{
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
{
for (;;) {
signed int v89 = 0;
signed char v88 = 1;
unsigned int v87 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
