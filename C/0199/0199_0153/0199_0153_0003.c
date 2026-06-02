#include <stdlib.h>
extern signed char v1 (void);
extern signed char (*v2) (void);
extern void v3 (void);
extern void (*v4) (void);
unsigned short v5 (void);
unsigned short (*v6) (void) = v5;
void v7 (signed short, signed int);
void (*v8) (signed short, signed int) = v7;
extern signed int v9 (unsigned char, unsigned int, unsigned char);
extern signed int (*v10) (unsigned char, unsigned int, unsigned char);
extern signed short v11 (unsigned short, unsigned char, unsigned char);
extern signed short (*v12) (unsigned short, unsigned char, unsigned char);
extern signed short v13 (signed int, unsigned char, signed short, unsigned char);
extern signed short (*v14) (signed int, unsigned char, signed short, unsigned char);
extern signed short v15 (signed short);
extern signed short (*v16) (signed short);
unsigned int v17 (void);
unsigned int (*v18) (void) = v17;
extern signed int v19 (signed int, unsigned char);
extern signed int (*v20) (signed int, unsigned char);
extern void v21 (unsigned int, unsigned short, signed short);
extern void (*v22) (unsigned int, unsigned short, signed short);
extern signed short v23 (signed char, signed short, unsigned short, unsigned char);
extern signed short (*v24) (signed char, signed short, unsigned short, unsigned char);
unsigned char v25 (void);
unsigned char (*v26) (void) = v25;
extern signed short v27 (void);
extern signed short (*v28) (void);
extern unsigned char v29 (signed short, unsigned short, unsigned short, unsigned int);
extern unsigned char (*v30) (signed short, unsigned short, unsigned short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v99 = 0;
signed int v98 = -1;
signed int v97 = 3;

unsigned char v25 (void)
{
{
for (;;) {
signed char v102 = -1;
signed int v101 = 1;
signed int v100 = 2;
trace++;
switch (trace)
{
case 1: 
return 1;
case 9: 
{
signed short v103;
unsigned short v104;
unsigned short v105;
unsigned int v106;
unsigned char v107;
v103 = 3 + 3;
v104 = 4 + 0;
v105 = 0 - 7;
v106 = 2U + 1U;
v107 = v29 (v103, v104, v105, v106);
history[history_index++] = (int)v107;
}
break;
case 11: 
return 4;
default: abort ();
}
}
}
}

unsigned int v17 (void)
{
{
for (;;) {
signed int v110 = -1;
signed int v109 = 3;
signed char v108 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v7 (signed short v111, signed int v112)
{
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
{
for (;;) {
signed char v115 = 1;
unsigned short v114 = 5;
signed short v113 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v5 (void)
{
{
for (;;) {
signed int v118 = -2;
signed short v117 = 3;
signed char v116 = -3;
trace++;
switch (trace)
{
case 5: 
return 6;
default: abort ();
}
}
}
}
