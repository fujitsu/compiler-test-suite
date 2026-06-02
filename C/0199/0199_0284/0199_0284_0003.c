#include <stdlib.h>
extern unsigned char v1 (signed int);
extern unsigned char (*v2) (signed int);
extern void v3 (void);
extern void (*v4) (void);
extern void v5 (void);
extern void (*v6) (void);
extern void v7 (unsigned short, unsigned char, signed char);
extern void (*v8) (unsigned short, unsigned char, signed char);
extern void v9 (void);
extern void (*v10) (void);
unsigned char v13 (void);
unsigned char (*v14) (void) = v13;
void v17 (unsigned int, unsigned int, unsigned int);
void (*v18) (unsigned int, unsigned int, unsigned int) = v17;
extern unsigned int v19 (unsigned int, signed int);
extern unsigned int (*v20) (unsigned int, signed int);
extern signed int v21 (unsigned int);
extern signed int (*v22) (unsigned int);
extern void v23 (signed short, signed int, signed int, unsigned int);
extern void (*v24) (signed short, signed int, signed int, unsigned int);
unsigned char v25 (unsigned int, signed int);
unsigned char (*v26) (unsigned int, signed int) = v25;
extern signed char v27 (void);
extern signed char (*v28) (void);
extern unsigned int v29 (unsigned int, signed int);
extern unsigned int (*v30) (unsigned int, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed int v87 = 1;
unsigned int v86 = 0U;
unsigned char v85 = 5;

unsigned char v25 (unsigned int v88, signed int v89)
{
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
{
for (;;) {
signed int v92 = 3;
signed int v91 = -3;
signed short v90 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v17 (unsigned int v93, unsigned int v94, unsigned int v95)
{
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
{
for (;;) {
signed short v98 = 1;
signed char v97 = -2;
signed short v96 = -1;
trace++;
switch (trace)
{
case 5: 
{
unsigned int v99;
signed int v100;
unsigned int v101;
v99 = 7U + v94;
v100 = 0 - 0;
v101 = v29 (v99, v100);
history[history_index++] = (int)v101;
}
break;
case 7: 
{
unsigned int v102;
signed int v103;
unsigned int v104;
v102 = v94 - 6U;
v103 = 0 - 2;
v104 = v29 (v102, v103);
history[history_index++] = (int)v104;
}
break;
case 9: 
{
unsigned int v105;
signed int v106;
unsigned int v107;
v105 = v95 - v95;
v106 = -2 - 1;
v107 = v19 (v105, v106);
history[history_index++] = (int)v107;
}
break;
case 13: 
return;
default: abort ();
}
}
}
}

unsigned char v13 (void)
{
{
for (;;) {
signed int v110 = -1;
signed short v109 = -1;
unsigned int v108 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
