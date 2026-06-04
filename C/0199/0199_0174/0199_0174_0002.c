#include <stdlib.h>
signed short v1 (signed int, signed char);
signed short (*v2) (signed int, signed char) = v1;
extern void v3 (signed char, unsigned int);
extern void (*v4) (signed char, unsigned int);
extern unsigned int v5 (unsigned short, unsigned char);
extern unsigned int (*v6) (unsigned short, unsigned char);
void v7 (unsigned short);
void (*v8) (unsigned short) = v7;
extern unsigned char v9 (unsigned int);
extern unsigned char (*v10) (unsigned int);
extern void v11 (signed int, unsigned int, signed int);
extern void (*v12) (signed int, unsigned int, signed int);
extern signed char v13 (signed char, unsigned char);
extern signed char (*v14) (signed char, unsigned char);
extern signed char v15 (void);
extern signed char (*v16) (void);
void v17 (signed char, signed int, unsigned int);
void (*v18) (signed char, signed int, unsigned int) = v17;
signed char v19 (unsigned char, unsigned int);
signed char (*v20) (unsigned char, unsigned int) = v19;
extern signed char v21 (signed char, unsigned char);
extern signed char (*v22) (signed char, unsigned char);
extern unsigned char v23 (void);
extern unsigned char (*v24) (void);
extern unsigned short v25 (signed char, unsigned char, signed short);
extern unsigned short (*v26) (signed char, unsigned char, signed short);
extern unsigned int v27 (signed int);
extern unsigned int (*v28) (signed int);
extern void v29 (signed char);
extern void (*v30) (signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v87 = 4;
unsigned short v86 = 5;
signed short v85 = 2;

signed char v19 (unsigned char v88, unsigned int v89)
{
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
{
for (;;) {
unsigned short v92 = 4;
signed int v91 = 0;
unsigned char v90 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v17 (signed char v93, signed int v94, unsigned int v95)
{
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
{
for (;;) {
unsigned int v98 = 3U;
unsigned char v97 = 7;
signed short v96 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v7 (unsigned short v99)
{
history[history_index++] = (int)v99;
{
for (;;) {
unsigned short v102 = 4;
unsigned int v101 = 3U;
signed short v100 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v1 (signed int v103, signed char v104)
{
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
{
for (;;) {
signed short v107 = -4;
signed int v106 = -3;
signed short v105 = -1;
trace++;
switch (trace)
{
case 0: 
{
signed char v108;
unsigned int v109;
v108 = v104 - v104;
v109 = 6U + 4U;
v3 (v108, v109);
}
break;
case 12: 
return v105;
default: abort ();
}
}
}
}
