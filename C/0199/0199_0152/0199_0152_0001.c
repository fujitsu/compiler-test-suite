#include <stdlib.h>
extern signed short v1 (void);
extern signed short (*v2) (void);
extern void v3 (signed short);
extern void (*v4) (signed short);
extern unsigned int v5 (signed char, unsigned int);
extern unsigned int (*v6) (signed char, unsigned int);
unsigned short v7 (signed int, unsigned int, signed int, unsigned short);
unsigned short (*v8) (signed int, unsigned int, signed int, unsigned short) = v7;
extern signed int v9 (unsigned short);
extern signed int (*v10) (unsigned short);
extern signed char v11 (signed int, unsigned short, signed char);
extern signed char (*v12) (signed int, unsigned short, signed char);
extern signed short v13 (unsigned short, unsigned int, signed short);
extern signed short (*v14) (unsigned short, unsigned int, signed short);
extern unsigned short v15 (void);
extern unsigned short (*v16) (void);
void v17 (signed short, signed short);
void (*v18) (signed short, signed short) = v17;
extern unsigned int v19 (unsigned short);
extern unsigned int (*v20) (unsigned short);
extern unsigned char v23 (signed char, unsigned int, signed int);
extern unsigned char (*v24) (signed char, unsigned int, signed int);
unsigned short v25 (unsigned short, unsigned int);
unsigned short (*v26) (unsigned short, unsigned int) = v25;
extern unsigned int v27 (unsigned int, unsigned short, unsigned char, unsigned int);
extern unsigned int (*v28) (unsigned int, unsigned short, unsigned char, unsigned int);
extern unsigned char v29 (void);
extern unsigned char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v83 = 3;
unsigned int v82 = 7U;
unsigned char v81 = 2;

unsigned short v25 (unsigned short v84, unsigned int v85)
{
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
{
for (;;) {
unsigned short v88 = 1;
unsigned char v87 = 6;
unsigned short v86 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v17 (signed short v89, signed short v90)
{
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
{
for (;;) {
unsigned int v93 = 0U;
unsigned char v92 = 3;
unsigned int v91 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v7 (signed int v94, unsigned int v95, signed int v96, unsigned short v97)
{
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
{
for (;;) {
signed char v100 = -4;
signed char v99 = 0;
signed int v98 = 3;
trace++;
switch (trace)
{
case 6: 
{
signed int v101;
unsigned short v102;
signed char v103;
signed char v104;
v101 = v98 + -1;
v102 = v97 - v97;
v103 = v100 + v99;
v104 = v11 (v101, v102, v103);
history[history_index++] = (int)v104;
}
break;
case 8: 
return v97;
default: abort ();
}
}
}
}
