#include <stdlib.h>
void v3 (unsigned int, signed int, unsigned int);
void (*v4) (unsigned int, signed int, unsigned int) = v3;
extern unsigned int v5 (unsigned char, signed short, signed int, signed char);
extern unsigned int (*v6) (unsigned char, signed short, signed int, signed char);
extern signed short v7 (unsigned int, signed int, signed short, signed int);
extern signed short (*v8) (unsigned int, signed int, signed short, signed int);
unsigned char v9 (signed int, signed char, unsigned char);
unsigned char (*v10) (signed int, signed char, unsigned char) = v9;
extern signed int v11 (void);
extern signed int (*v12) (void);
extern void v13 (signed int);
extern void (*v14) (signed int);
extern signed char v15 (void);
extern signed char (*v16) (void);
extern void v17 (void);
extern void (*v18) (void);
extern signed short v19 (unsigned short, signed short, unsigned char);
extern signed short (*v20) (unsigned short, signed short, unsigned char);
extern signed char v21 (signed char, unsigned int, unsigned short, signed short);
extern signed char (*v22) (signed char, unsigned int, unsigned short, signed short);
signed int v23 (signed int, unsigned int, signed char, signed int);
signed int (*v24) (signed int, unsigned int, signed char, signed int) = v23;
extern unsigned short v25 (void);
extern unsigned short (*v26) (void);
extern unsigned short v27 (signed int, signed char, signed int);
extern unsigned short (*v28) (signed int, signed char, signed int);
signed char v29 (signed char, unsigned int, unsigned int, signed short);
signed char (*v30) (signed char, unsigned int, unsigned int, signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v82 = 0;
unsigned short v81 = 5;
unsigned short v80 = 2;

signed char v29 (signed char v83, unsigned int v84, unsigned int v85, signed short v86)
{
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
{
for (;;) {
unsigned short v89 = 1;
unsigned int v88 = 7U;
signed short v87 = 3;
trace++;
switch (trace)
{
case 3: 
return v83;
case 5: 
return -4;
case 9: 
return -3;
case 11: 
return -3;
default: abort ();
}
}
}
}

signed int v23 (signed int v90, unsigned int v91, signed char v92, signed int v93)
{
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
{
for (;;) {
signed int v96 = -2;
unsigned int v95 = 5U;
signed short v94 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v9 (signed int v97, signed char v98, unsigned char v99)
{
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
{
for (;;) {
unsigned int v102 = 6U;
signed short v101 = 2;
unsigned short v100 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v3 (unsigned int v103, signed int v104, unsigned int v105)
{
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
{
for (;;) {
unsigned short v108 = 6;
signed char v107 = 2;
unsigned int v106 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
