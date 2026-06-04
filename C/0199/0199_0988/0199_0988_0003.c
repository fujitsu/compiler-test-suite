#include <stdlib.h>
unsigned char v1 (signed int);
unsigned char (*v2) (signed int) = v1;
extern unsigned short v3 (unsigned char, signed char, signed char);
extern unsigned short (*v4) (unsigned char, signed char, signed char);
extern void v5 (unsigned int, signed short);
extern void (*v6) (unsigned int, signed short);
extern signed char v7 (signed short, signed short, unsigned short);
extern signed char (*v8) (signed short, signed short, unsigned short);
void v11 (signed short, unsigned short);
void (*v12) (signed short, unsigned short) = v11;
extern unsigned char v13 (signed int, unsigned short, signed short, signed int);
extern unsigned char (*v14) (signed int, unsigned short, signed short, signed int);
extern void v15 (unsigned int, unsigned short, unsigned int, signed int);
extern void (*v16) (unsigned int, unsigned short, unsigned int, signed int);
extern unsigned short v17 (unsigned char, unsigned int, unsigned short, unsigned int);
extern unsigned short (*v18) (unsigned char, unsigned int, unsigned short, unsigned int);
extern void v19 (unsigned short, signed short);
extern void (*v20) (unsigned short, signed short);
void v21 (void);
void (*v22) (void) = v21;
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
extern signed short v25 (signed short, signed int, unsigned short);
extern signed short (*v26) (signed short, signed int, unsigned short);
extern unsigned int v27 (unsigned char, signed int, unsigned int, signed int);
extern unsigned int (*v28) (unsigned char, signed int, unsigned int, signed int);
extern signed short v29 (unsigned int);
extern signed short (*v30) (unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v97 = 1;
unsigned short v96 = 5;
signed short v95 = -4;

void v21 (void)
{
{
for (;;) {
signed int v100 = -2;
signed int v99 = 0;
signed int v98 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v11 (signed short v101, unsigned short v102)
{
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
{
for (;;) {
unsigned int v105 = 4U;
signed char v104 = 0;
signed int v103 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v1 (signed int v106)
{
history[history_index++] = (int)v106;
{
for (;;) {
unsigned int v109 = 0U;
unsigned short v108 = 3;
unsigned char v107 = 1;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v110;
unsigned short v111;
unsigned int v112;
signed int v113;
v110 = v109 - v109;
v111 = v108 - v108;
v112 = v109 - 3U;
v113 = -4 - 2;
v15 (v110, v111, v112, v113);
}
break;
case 14: 
return v107;
default: abort ();
}
}
}
}
