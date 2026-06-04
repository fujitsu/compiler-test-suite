#include <stdlib.h>
extern void v1 (signed char, unsigned char);
extern void (*v2) (signed char, unsigned char);
unsigned int v3 (unsigned short);
unsigned int (*v4) (unsigned short) = v3;
extern signed short v5 (signed int, signed char, signed int);
extern signed short (*v6) (signed int, signed char, signed int);
signed int v7 (void);
signed int (*v8) (void) = v7;
extern unsigned int v9 (unsigned short, unsigned int);
extern unsigned int (*v10) (unsigned short, unsigned int);
void v11 (unsigned char, signed char, signed int, unsigned short);
void (*v12) (unsigned char, signed char, signed int, unsigned short) = v11;
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
unsigned char v15 (signed char);
unsigned char (*v16) (signed char) = v15;
extern unsigned short v17 (signed char, signed char);
extern unsigned short (*v18) (signed char, signed char);
extern signed int v19 (void);
extern signed int (*v20) (void);
extern unsigned int v21 (unsigned short, signed char, signed int);
extern unsigned int (*v22) (unsigned short, signed char, signed int);
extern signed char v23 (signed short, unsigned char, unsigned short);
extern signed char (*v24) (signed short, unsigned char, unsigned short);
extern unsigned short v25 (unsigned char, unsigned int, unsigned int);
extern unsigned short (*v26) (unsigned char, unsigned int, unsigned int);
extern void v27 (unsigned short, signed short, unsigned char, signed short);
extern void (*v28) (unsigned short, signed short, unsigned char, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed int v87 = -3;
signed int v86 = 2;
signed int v85 = 0;

unsigned char v15 (signed char v88)
{
history[history_index++] = (int)v88;
{
for (;;) {
unsigned char v91 = 5;
unsigned char v90 = 4;
unsigned char v89 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v11 (unsigned char v92, signed char v93, signed int v94, unsigned short v95)
{
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
{
for (;;) {
signed int v98 = -2;
unsigned char v97 = 4;
signed char v96 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v7 (void)
{
{
for (;;) {
signed short v101 = -2;
signed char v100 = -3;
unsigned char v99 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v3 (unsigned short v102)
{
history[history_index++] = (int)v102;
{
for (;;) {
signed short v105 = 2;
signed char v104 = 3;
unsigned char v103 = 2;
trace++;
switch (trace)
{
case 6: 
{
signed int v106;
v106 = v19 ();
history[history_index++] = (int)v106;
}
break;
case 8: 
{
signed int v107;
signed char v108;
signed int v109;
signed short v110;
v107 = 0 - -1;
v108 = v104 + 2;
v109 = 2 + -4;
v110 = v5 (v107, v108, v109);
history[history_index++] = (int)v110;
}
break;
case 10: 
{
signed int v111;
v111 = v19 ();
history[history_index++] = (int)v111;
}
break;
case 12: 
return 6U;
default: abort ();
}
}
}
}
