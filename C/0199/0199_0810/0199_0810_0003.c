#include <stdlib.h>
extern unsigned char v1 (void);
extern unsigned char (*v2) (void);
extern unsigned int v3 (void);
extern unsigned int (*v4) (void);
void v5 (unsigned int);
void (*v6) (unsigned int) = v5;
extern unsigned char v7 (void);
extern unsigned char (*v8) (void);
unsigned int v9 (unsigned short, unsigned char, signed char);
unsigned int (*v10) (unsigned short, unsigned char, signed char) = v9;
extern unsigned int v11 (signed char, unsigned char, signed char);
extern unsigned int (*v12) (signed char, unsigned char, signed char);
extern void v13 (void);
extern void (*v14) (void);
void v15 (signed int, unsigned char);
void (*v16) (signed int, unsigned char) = v15;
extern signed int v17 (unsigned int, signed int);
extern signed int (*v18) (unsigned int, signed int);
extern unsigned char v19 (signed char, signed char, unsigned char);
extern unsigned char (*v20) (signed char, signed char, unsigned char);
extern signed int v21 (unsigned short, unsigned short);
extern signed int (*v22) (unsigned short, unsigned short);
unsigned short v23 (void);
unsigned short (*v24) (void) = v23;
extern signed int v27 (signed int);
extern signed int (*v28) (signed int);
extern unsigned short v29 (unsigned char, signed short);
extern unsigned short (*v30) (unsigned char, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v89 = 6U;
unsigned short v88 = 7;
unsigned int v87 = 6U;

unsigned short v23 (void)
{
{
for (;;) {
unsigned int v92 = 3U;
unsigned short v91 = 2;
unsigned char v90 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v15 (signed int v93, unsigned char v94)
{
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
{
for (;;) {
signed char v97 = -3;
signed char v96 = 2;
unsigned char v95 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v9 (unsigned short v98, unsigned char v99, signed char v100)
{
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
{
for (;;) {
signed short v103 = 0;
unsigned char v102 = 2;
unsigned short v101 = 3;
trace++;
switch (trace)
{
case 4: 
{
unsigned int v104;
signed int v105;
signed int v106;
v104 = 4U - 3U;
v105 = 2 - 2;
v106 = v17 (v104, v105);
history[history_index++] = (int)v106;
}
break;
case 12: 
return 3U;
default: abort ();
}
}
}
}

void v5 (unsigned int v107)
{
history[history_index++] = (int)v107;
{
for (;;) {
unsigned short v110 = 4;
signed int v109 = -2;
unsigned short v108 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
