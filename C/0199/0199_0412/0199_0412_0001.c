#include <stdlib.h>
void v1 (unsigned short, unsigned int, unsigned int, signed short);
void (*v2) (unsigned short, unsigned int, unsigned int, signed short) = v1;
extern void v3 (signed short, signed short, unsigned char);
extern void (*v4) (signed short, signed short, unsigned char);
extern unsigned char v5 (unsigned int, signed short);
extern unsigned char (*v6) (unsigned int, signed short);
extern signed int v7 (signed char, signed char, unsigned short, signed char);
extern signed int (*v8) (signed char, signed char, unsigned short, signed char);
extern void v9 (signed short, unsigned int, unsigned int, unsigned int);
extern void (*v10) (signed short, unsigned int, unsigned int, unsigned int);
extern signed short v11 (unsigned int, signed short);
extern signed short (*v12) (unsigned int, signed short);
extern unsigned int v13 (signed int, unsigned short, unsigned int);
extern unsigned int (*v14) (signed int, unsigned short, unsigned int);
extern unsigned char v15 (signed int, unsigned char, unsigned int, unsigned short);
extern unsigned char (*v16) (signed int, unsigned char, unsigned int, unsigned short);
extern unsigned short v17 (void);
extern unsigned short (*v18) (void);
extern unsigned char v19 (signed char, signed char, unsigned int);
extern unsigned char (*v20) (signed char, signed char, unsigned int);
signed short v21 (signed short, unsigned int, unsigned short);
signed short (*v22) (signed short, unsigned int, unsigned short) = v21;
extern void v23 (void);
extern void (*v24) (void);
extern unsigned short v25 (signed char, unsigned char);
extern unsigned short (*v26) (signed char, unsigned char);
extern unsigned int v27 (unsigned short, signed short);
extern unsigned int (*v28) (unsigned short, signed short);
unsigned char v29 (unsigned char, unsigned char, unsigned int, signed short);
unsigned char (*v30) (unsigned char, unsigned char, unsigned int, signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v75 = 0;
signed int v74 = -3;
unsigned int v73 = 3U;

unsigned char v29 (unsigned char v76, unsigned char v77, unsigned int v78, signed short v79)
{
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
{
for (;;) {
unsigned int v82 = 5U;
signed char v81 = 1;
signed short v80 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v21 (signed short v83, unsigned int v84, unsigned short v85)
{
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
{
for (;;) {
signed short v88 = -3;
unsigned short v87 = 3;
unsigned int v86 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v1 (unsigned short v89, unsigned int v90, unsigned int v91, signed short v92)
{
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
{
for (;;) {
signed int v95 = -4;
unsigned short v94 = 4;
signed short v93 = 3;
trace++;
switch (trace)
{
case 0: 
{
v23 ();
}
break;
case 14: 
return;
default: abort ();
}
}
}
}
