#include <stdlib.h>
unsigned int v1 (void);
unsigned int (*v2) (void) = v1;
void v3 (signed short, unsigned int, unsigned char, signed short);
void (*v4) (signed short, unsigned int, unsigned char, signed short) = v3;
extern void v5 (unsigned short, signed short, signed int);
extern void (*v6) (unsigned short, signed short, signed int);
extern signed char v7 (unsigned char);
extern signed char (*v8) (unsigned char);
extern signed char v9 (signed char, signed char, unsigned short, signed char);
extern signed char (*v10) (signed char, signed char, unsigned short, signed char);
signed char v11 (unsigned short, signed short, unsigned char);
signed char (*v12) (unsigned short, signed short, unsigned char) = v11;
unsigned short v13 (unsigned short, signed int);
unsigned short (*v14) (unsigned short, signed int) = v13;
extern unsigned int v15 (signed int, signed int, unsigned char);
extern unsigned int (*v16) (signed int, signed int, unsigned char);
extern signed short v17 (signed short);
extern signed short (*v18) (signed short);
extern unsigned short v19 (unsigned int, unsigned short, signed char);
extern unsigned short (*v20) (unsigned int, unsigned short, signed char);
extern unsigned char v21 (unsigned int);
extern unsigned char (*v22) (unsigned int);
extern signed int v23 (void);
extern signed int (*v24) (void);
extern void v25 (void);
extern void (*v26) (void);
extern signed int v29 (void);
extern signed int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v82 = 4U;
unsigned char v81 = 0;
unsigned short v80 = 6;

unsigned short v13 (unsigned short v83, signed int v84)
{
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
{
for (;;) {
signed char v87 = -1;
unsigned short v86 = 5;
signed char v85 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v11 (unsigned short v88, signed short v89, unsigned char v90)
{
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
{
for (;;) {
unsigned short v93 = 4;
unsigned char v92 = 2;
signed char v91 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v3 (signed short v94, unsigned int v95, unsigned char v96, signed short v97)
{
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
{
for (;;) {
signed char v100 = -3;
signed short v99 = -2;
unsigned short v98 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v1 (void)
{
{
for (;;) {
signed char v103 = -3;
unsigned char v102 = 1;
unsigned int v101 = 6U;
trace++;
switch (trace)
{
case 0: 
{
signed short v104;
signed short v105;
v104 = 1 - 1;
v105 = v17 (v104);
history[history_index++] = (int)v105;
}
break;
case 6: 
{
unsigned int v106;
unsigned short v107;
signed char v108;
unsigned short v109;
v106 = 2U - v101;
v107 = 6 + 1;
v108 = v103 + -1;
v109 = v19 (v106, v107, v108);
history[history_index++] = (int)v109;
}
break;
case 12: 
return 4U;
default: abort ();
}
}
}
}
