#include <stdlib.h>
void v1 (unsigned char, unsigned char);
void (*v2) (unsigned char, unsigned char) = v1;
extern signed short v3 (unsigned short);
extern signed short (*v4) (unsigned short);
extern signed short v5 (signed char, signed int);
extern signed short (*v6) (signed char, signed int);
extern signed int v7 (unsigned short, unsigned int);
extern signed int (*v8) (unsigned short, unsigned int);
extern signed char v9 (signed int, unsigned int);
extern signed char (*v10) (signed int, unsigned int);
extern signed short v11 (unsigned short, unsigned int);
extern signed short (*v12) (unsigned short, unsigned int);
extern signed int v13 (signed short, signed int, unsigned short);
extern signed int (*v14) (signed short, signed int, unsigned short);
extern unsigned short v15 (void);
extern unsigned short (*v16) (void);
extern unsigned short v17 (signed char, signed short, unsigned char, unsigned int);
extern unsigned short (*v18) (signed char, signed short, unsigned char, unsigned int);
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
extern signed short v21 (signed short, unsigned int, unsigned int, unsigned int);
extern signed short (*v22) (signed short, unsigned int, unsigned int, unsigned int);
extern unsigned int v23 (signed short, unsigned int, unsigned short);
extern unsigned int (*v24) (signed short, unsigned int, unsigned short);
extern signed char v25 (signed char);
extern signed char (*v26) (signed char);
unsigned int v27 (signed short, unsigned char, unsigned short, unsigned short);
unsigned int (*v28) (signed short, unsigned char, unsigned short, unsigned short) = v27;
extern unsigned short v29 (void);
extern unsigned short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v86 = 1;
unsigned short v85 = 4;
unsigned char v84 = 6;

unsigned int v27 (signed short v87, unsigned char v88, unsigned short v89, unsigned short v90)
{
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
{
for (;;) {
unsigned char v93 = 3;
unsigned short v92 = 0;
signed short v91 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v1 (unsigned char v94, unsigned char v95)
{
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
{
for (;;) {
unsigned char v98 = 5;
signed char v97 = 0;
unsigned int v96 = 5U;
trace++;
switch (trace)
{
case 0: 
{
signed char v99;
signed short v100;
unsigned char v101;
unsigned int v102;
unsigned short v103;
v99 = 3 - 3;
v100 = -3 + -4;
v101 = 1 - 1;
v102 = v96 + 7U;
v103 = v17 (v99, v100, v101, v102);
history[history_index++] = (int)v103;
}
break;
case 12: 
return;
default: abort ();
}
}
}
}
