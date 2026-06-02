#include <stdlib.h>
void v3 (void);
void (*v4) (void) = v3;
extern signed int v5 (signed int);
extern signed int (*v6) (signed int);
extern void v7 (signed int, unsigned short, signed char);
extern void (*v8) (signed int, unsigned short, signed char);
extern unsigned int v11 (signed char);
extern unsigned int (*v12) (signed char);
extern unsigned char v13 (unsigned int, signed char);
extern unsigned char (*v14) (unsigned int, signed char);
extern signed int v15 (signed short, signed int, signed int);
extern signed int (*v16) (signed short, signed int, signed int);
signed char v17 (signed int, unsigned int);
signed char (*v18) (signed int, unsigned int) = v17;
unsigned short v19 (unsigned int, signed char);
unsigned short (*v20) (unsigned int, signed char) = v19;
extern signed short v21 (unsigned int, unsigned char, signed char, signed short);
extern signed short (*v22) (unsigned int, unsigned char, signed char, signed short);
void v23 (signed char, signed short, unsigned short, signed char);
void (*v24) (signed char, signed short, unsigned short, signed char) = v23;
extern unsigned char v25 (signed char, signed int);
extern unsigned char (*v26) (signed char, signed int);
extern unsigned short v27 (void);
extern unsigned short (*v28) (void);
extern unsigned char v29 (signed int, unsigned int, signed int);
extern unsigned char (*v30) (signed int, unsigned int, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v94 = 2;
unsigned char v93 = 4;
signed char v92 = 0;

void v23 (signed char v95, signed short v96, unsigned short v97, signed char v98)
{
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
{
for (;;) {
unsigned char v101 = 4;
unsigned char v100 = 0;
signed short v99 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v19 (unsigned int v102, signed char v103)
{
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
{
for (;;) {
unsigned char v106 = 3;
signed int v105 = -4;
signed char v104 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v17 (signed int v107, unsigned int v108)
{
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
{
for (;;) {
signed short v111 = 2;
unsigned short v110 = 1;
unsigned short v109 = 0;
trace++;
switch (trace)
{
case 6: 
return -3;
case 8: 
return -1;
default: abort ();
}
}
}
}

void v3 (void)
{
{
for (;;) {
signed short v114 = 2;
unsigned char v113 = 2;
signed short v112 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
