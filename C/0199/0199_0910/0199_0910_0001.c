#include <stdlib.h>
extern signed char v3 (unsigned int);
extern signed char (*v4) (unsigned int);
void v5 (signed short);
void (*v6) (signed short) = v5;
extern unsigned char v7 (signed char, unsigned char);
extern unsigned char (*v8) (signed char, unsigned char);
extern unsigned short v9 (signed int, signed char, unsigned int);
extern unsigned short (*v10) (signed int, signed char, unsigned int);
extern unsigned char v11 (void);
extern unsigned char (*v12) (void);
signed short v13 (signed int, unsigned int);
signed short (*v14) (signed int, unsigned int) = v13;
extern signed char v15 (signed short);
extern signed char (*v16) (signed short);
extern unsigned int v17 (void);
extern unsigned int (*v18) (void);
extern unsigned int v21 (signed short, signed short);
extern unsigned int (*v22) (signed short, signed short);
extern unsigned short v23 (signed short);
extern unsigned short (*v24) (signed short);
extern unsigned char v25 (void);
extern unsigned char (*v26) (void);
extern unsigned char v27 (signed short, signed int, unsigned short, unsigned char);
extern unsigned char (*v28) (signed short, signed int, unsigned short, unsigned char);
extern unsigned char v29 (void);
extern unsigned char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v76 = 5;
unsigned int v75 = 5U;
unsigned short v74 = 0;

signed short v13 (signed int v77, unsigned int v78)
{
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
{
for (;;) {
signed short v81 = -1;
unsigned int v80 = 3U;
unsigned short v79 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v5 (signed short v82)
{
history[history_index++] = (int)v82;
{
for (;;) {
unsigned int v85 = 6U;
signed int v84 = -3;
signed char v83 = 1;
trace++;
switch (trace)
{
case 3: 
{
signed short v86;
signed int v87;
unsigned short v88;
unsigned char v89;
unsigned char v90;
v86 = -4 - v82;
v87 = v84 + 0;
v88 = 6 + 1;
v89 = 7 - 3;
v90 = v27 (v86, v87, v88, v89);
history[history_index++] = (int)v90;
}
break;
case 15: 
return;
default: abort ();
}
}
}
}
