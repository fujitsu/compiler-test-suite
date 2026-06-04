#include <stdlib.h>
extern unsigned char v1 (unsigned int, signed char, signed int, signed int);
extern unsigned char (*v2) (unsigned int, signed char, signed int, signed int);
signed short v3 (signed char);
signed short (*v4) (signed char) = v3;
void v5 (unsigned int, unsigned char, unsigned int);
void (*v6) (unsigned int, unsigned char, unsigned int) = v5;
unsigned short v7 (signed short, signed short, unsigned char);
unsigned short (*v8) (signed short, signed short, unsigned char) = v7;
extern void v9 (signed short, unsigned int, signed char, unsigned char);
extern void (*v10) (signed short, unsigned int, signed char, unsigned char);
extern signed short v11 (void);
extern signed short (*v12) (void);
extern signed short v13 (signed char);
extern signed short (*v14) (signed char);
extern void v15 (unsigned short, unsigned char, signed char, unsigned char);
extern void (*v16) (unsigned short, unsigned char, signed char, unsigned char);
extern unsigned int v17 (unsigned short, unsigned int);
extern unsigned int (*v18) (unsigned short, unsigned int);
extern unsigned short v19 (unsigned int);
extern unsigned short (*v20) (unsigned int);
extern signed int v21 (signed int, unsigned int);
extern signed int (*v22) (signed int, unsigned int);
extern signed char v23 (unsigned char, unsigned int, unsigned int, unsigned int);
extern signed char (*v24) (unsigned char, unsigned int, unsigned int, unsigned int);
extern void v27 (unsigned int, signed char, unsigned int);
extern void (*v28) (unsigned int, signed char, unsigned int);
unsigned short v29 (unsigned char, unsigned short, unsigned short, signed char);
unsigned short (*v30) (unsigned char, unsigned short, unsigned short, signed char) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v89 = 4U;
unsigned short v88 = 4;
signed int v87 = 1;

unsigned short v29 (unsigned char v90, unsigned short v91, unsigned short v92, signed char v93)
{
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
{
for (;;) {
unsigned short v96 = 3;
unsigned char v95 = 2;
unsigned short v94 = 5;
trace++;
switch (trace)
{
case 6: 
return v94;
case 11: 
return v92;
default: abort ();
}
}
}
}

unsigned short v7 (signed short v97, signed short v98, unsigned char v99)
{
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
{
for (;;) {
signed short v102 = -3;
signed int v101 = 0;
unsigned char v100 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v5 (unsigned int v103, unsigned char v104, unsigned int v105)
{
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
{
for (;;) {
unsigned int v108 = 1U;
unsigned int v107 = 2U;
signed char v106 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v3 (signed char v109)
{
history[history_index++] = (int)v109;
{
for (;;) {
unsigned int v112 = 7U;
unsigned int v111 = 3U;
unsigned int v110 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
