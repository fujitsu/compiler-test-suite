#include <stdlib.h>
extern void v1 (signed short, unsigned char, unsigned char, signed int);
extern void (*v2) (signed short, unsigned char, unsigned char, signed int);
extern signed char v3 (void);
extern signed char (*v4) (void);
void v5 (signed short);
void (*v6) (signed short) = v5;
extern unsigned char v7 (unsigned int, unsigned short, signed int);
extern unsigned char (*v8) (unsigned int, unsigned short, signed int);
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
extern signed char v11 (signed short, signed int, signed char);
extern signed char (*v12) (signed short, signed int, signed char);
extern signed char v13 (unsigned short, signed char, unsigned short, unsigned int);
extern signed char (*v14) (unsigned short, signed char, unsigned short, unsigned int);
extern void v15 (unsigned char);
extern void (*v16) (unsigned char);
extern signed char v17 (void);
extern signed char (*v18) (void);
extern unsigned int v19 (void);
extern unsigned int (*v20) (void);
extern void v21 (unsigned int, unsigned int, signed char, unsigned char);
extern void (*v22) (unsigned int, unsigned int, signed char, unsigned char);
extern signed short v23 (signed short, signed short, signed int);
extern signed short (*v24) (signed short, signed short, signed int);
unsigned int v25 (void);
unsigned int (*v26) (void) = v25;
extern unsigned char v27 (void);
extern unsigned char (*v28) (void);
void v29 (signed char, unsigned int, signed char);
void (*v30) (signed char, unsigned int, signed char) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v92 = 2;
signed int v91 = 2;
unsigned char v90 = 6;

void v29 (signed char v93, unsigned int v94, signed char v95)
{
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
{
for (;;) {
unsigned char v98 = 5;
signed int v97 = -3;
signed char v96 = -2;
trace++;
switch (trace)
{
case 1: 
return;
default: abort ();
}
}
}
}

unsigned int v25 (void)
{
{
for (;;) {
signed char v101 = -4;
unsigned short v100 = 0;
unsigned short v99 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v5 (signed short v102)
{
history[history_index++] = (int)v102;
{
for (;;) {
unsigned char v105 = 5;
signed int v104 = 1;
signed char v103 = -2;
trace++;
switch (trace)
{
case 3: 
{
unsigned char v106;
v106 = v27 ();
history[history_index++] = (int)v106;
}
break;
case 5: 
{
unsigned char v107;
v107 = v27 ();
history[history_index++] = (int)v107;
}
break;
case 7: 
{
unsigned char v108;
v108 = v27 ();
history[history_index++] = (int)v108;
}
break;
case 9: 
{
unsigned char v109;
v109 = v27 ();
history[history_index++] = (int)v109;
}
break;
case 11: 
return;
default: abort ();
}
}
}
}
