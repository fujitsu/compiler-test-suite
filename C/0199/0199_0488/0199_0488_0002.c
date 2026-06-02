#include <stdlib.h>
void v1 (signed short, signed char);
void (*v2) (signed short, signed char) = v1;
extern unsigned short v3 (unsigned short);
extern unsigned short (*v4) (unsigned short);
extern void v5 (signed int);
extern void (*v6) (signed int);
extern void v7 (void);
extern void (*v8) (void);
extern unsigned int v9 (signed char, unsigned short, unsigned char, signed char);
extern unsigned int (*v10) (signed char, unsigned short, unsigned char, signed char);
extern unsigned int v11 (void);
extern unsigned int (*v12) (void);
void v13 (unsigned char, signed short);
void (*v14) (unsigned char, signed short) = v13;
extern signed short v15 (signed int, signed short, unsigned short);
extern signed short (*v16) (signed int, signed short, unsigned short);
extern unsigned char v17 (signed char, signed int);
extern unsigned char (*v18) (signed char, signed int);
unsigned char v19 (signed char, signed char, signed int);
unsigned char (*v20) (signed char, signed char, signed int) = v19;
extern unsigned short v21 (unsigned short, signed int);
extern unsigned short (*v22) (unsigned short, signed int);
extern unsigned char v23 (void);
extern unsigned char (*v24) (void);
extern void v25 (signed char, unsigned short);
extern void (*v26) (signed char, unsigned short);
extern signed short v27 (signed int);
extern signed short (*v28) (signed int);
extern signed int v29 (signed char, signed char, unsigned int);
extern signed int (*v30) (signed char, signed char, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed int v94 = 3;
signed int v93 = 0;
signed short v92 = 0;

unsigned char v19 (signed char v95, signed char v96, signed int v97)
{
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
{
for (;;) {
unsigned short v100 = 2;
signed int v99 = -2;
signed char v98 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v13 (unsigned char v101, signed short v102)
{
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
{
for (;;) {
signed char v105 = 2;
unsigned int v104 = 1U;
unsigned int v103 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v1 (signed short v106, signed char v107)
{
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
{
for (;;) {
unsigned short v110 = 5;
unsigned int v109 = 7U;
unsigned short v108 = 5;
trace++;
switch (trace)
{
case 0: 
{
v7 ();
}
break;
case 14: 
return;
default: abort ();
}
}
}
}
