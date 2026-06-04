#include <stdlib.h>
extern signed char v1 (unsigned char, signed short, signed char, signed char);
extern signed char (*v2) (unsigned char, signed short, signed char, signed char);
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
extern void v7 (void);
extern void (*v8) (void);
extern unsigned short v9 (signed char, unsigned char, signed char);
extern unsigned short (*v10) (signed char, unsigned char, signed char);
void v11 (unsigned short, signed short);
void (*v12) (unsigned short, signed short) = v11;
extern void v13 (unsigned int, signed int);
extern void (*v14) (unsigned int, signed int);
extern unsigned int v15 (signed short, signed int);
extern unsigned int (*v16) (signed short, signed int);
extern unsigned short v17 (signed int);
extern unsigned short (*v18) (signed int);
unsigned int v19 (void);
unsigned int (*v20) (void) = v19;
void v21 (signed int);
void (*v22) (signed int) = v21;
extern unsigned short v23 (unsigned short, signed short);
extern unsigned short (*v24) (unsigned short, signed short);
extern signed char v25 (unsigned char);
extern signed char (*v26) (unsigned char);
extern signed int v27 (unsigned short, signed int, signed short);
extern signed int (*v28) (unsigned short, signed int, signed short);
unsigned int v29 (unsigned short, signed char, signed int);
unsigned int (*v30) (unsigned short, signed char, signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v87 = 2;
signed short v86 = 3;
signed int v85 = 1;

unsigned int v29 (unsigned short v88, signed char v89, signed int v90)
{
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
{
for (;;) {
unsigned short v93 = 1;
unsigned short v92 = 3;
signed short v91 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v21 (signed int v94)
{
history[history_index++] = (int)v94;
{
for (;;) {
signed short v97 = 1;
signed char v96 = -4;
unsigned int v95 = 6U;
trace++;
switch (trace)
{
case 2: 
return;
case 4: 
{
unsigned int v98;
signed int v99;
v98 = v95 + 0U;
v99 = -2 - 0;
v13 (v98, v99);
}
break;
case 6: 
return;
case 8: 
{
unsigned int v100;
signed int v101;
v100 = v95 + v95;
v101 = v94 + v94;
v13 (v100, v101);
}
break;
case 10: 
{
unsigned int v102;
signed int v103;
v102 = 5U + 5U;
v103 = -2 - v94;
v13 (v102, v103);
}
break;
case 12: 
return;
case 14: 
return;
case 16: 
return;
default: abort ();
}
}
}
}

unsigned int v19 (void)
{
{
for (;;) {
signed int v106 = -4;
unsigned char v105 = 2;
unsigned int v104 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v11 (unsigned short v107, signed short v108)
{
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
{
for (;;) {
signed char v111 = -1;
signed char v110 = 3;
signed char v109 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
