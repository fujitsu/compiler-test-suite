#include <stdlib.h>
extern signed short v1 (signed char, signed short, unsigned short, signed char);
extern signed short (*v2) (signed char, signed short, unsigned short, signed char);
extern signed int v3 (signed int);
extern signed int (*v4) (signed int);
extern unsigned char v5 (signed int, signed char);
extern unsigned char (*v6) (signed int, signed char);
extern void v7 (signed int, unsigned int, unsigned int);
extern void (*v8) (signed int, unsigned int, unsigned int);
signed int v9 (void);
signed int (*v10) (void) = v9;
extern unsigned int v11 (unsigned int, signed short, signed int, unsigned char);
extern unsigned int (*v12) (unsigned int, signed short, signed int, unsigned char);
signed char v13 (void);
signed char (*v14) (void) = v13;
extern signed short v15 (unsigned char, unsigned short, unsigned int);
extern signed short (*v16) (unsigned char, unsigned short, unsigned int);
extern unsigned int v17 (unsigned char, signed int, signed int);
extern unsigned int (*v18) (unsigned char, signed int, signed int);
void v19 (unsigned char, signed char, signed char, unsigned int);
void (*v20) (unsigned char, signed char, signed char, unsigned int) = v19;
extern signed int v21 (void);
extern signed int (*v22) (void);
extern unsigned int v23 (signed char, unsigned short, signed int, signed short);
extern unsigned int (*v24) (signed char, unsigned short, signed int, signed short);
signed short v25 (unsigned int, unsigned short);
signed short (*v26) (unsigned int, unsigned short) = v25;
extern void v27 (signed char);
extern void (*v28) (signed char);
extern unsigned char v29 (void);
extern unsigned char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v87 = -3;
signed int v86 = 3;
unsigned short v85 = 1;

signed short v25 (unsigned int v88, unsigned short v89)
{
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
{
for (;;) {
unsigned int v92 = 5U;
unsigned short v91 = 0;
signed int v90 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v19 (unsigned char v93, signed char v94, signed char v95, unsigned int v96)
{
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
{
for (;;) {
signed char v99 = 0;
signed char v98 = -4;
signed int v97 = 3;
trace++;
switch (trace)
{
case 7: 
return;
default: abort ();
}
}
}
}

signed char v13 (void)
{
{
for (;;) {
signed char v102 = -1;
signed char v101 = 1;
unsigned char v100 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v9 (void)
{
{
for (;;) {
signed short v105 = 3;
signed short v104 = 1;
unsigned short v103 = 0;
trace++;
switch (trace)
{
case 9: 
{
unsigned char v106;
v106 = v29 ();
history[history_index++] = (int)v106;
}
break;
case 11: 
return -4;
default: abort ();
}
}
}
}
