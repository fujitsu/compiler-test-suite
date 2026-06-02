#include <stdlib.h>
void v3 (unsigned short, signed int, signed short);
void (*v4) (unsigned short, signed int, signed short) = v3;
extern signed short v5 (signed short, unsigned short, signed short);
extern signed short (*v6) (signed short, unsigned short, signed short);
extern unsigned char v7 (signed int, signed char, unsigned int, unsigned int);
extern unsigned char (*v8) (signed int, signed char, unsigned int, unsigned int);
signed char v9 (unsigned char);
signed char (*v10) (unsigned char) = v9;
extern signed char v11 (signed short, signed char, signed int);
extern signed char (*v12) (signed short, signed char, signed int);
extern signed int v13 (void);
extern signed int (*v14) (void);
extern unsigned char v15 (signed char, signed char, signed short, signed short);
extern unsigned char (*v16) (signed char, signed char, signed short, signed short);
extern signed int v17 (unsigned char);
extern signed int (*v18) (unsigned char);
extern signed char v19 (unsigned short);
extern signed char (*v20) (unsigned short);
extern signed short v21 (void);
extern signed short (*v22) (void);
extern unsigned char v23 (unsigned short, signed short);
extern unsigned char (*v24) (unsigned short, signed short);
extern signed char v25 (unsigned int, signed int, signed int, signed int);
extern signed char (*v26) (unsigned int, signed int, signed int, signed int);
unsigned char v27 (unsigned short, signed short, signed char, unsigned int);
unsigned char (*v28) (unsigned short, signed short, signed char, unsigned int) = v27;
extern void v29 (signed char, unsigned short, unsigned short);
extern void (*v30) (signed char, unsigned short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed char v97 = -1;
unsigned short v96 = 7;
unsigned int v95 = 3U;

unsigned char v27 (unsigned short v98, signed short v99, signed char v100, unsigned int v101)
{
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
{
for (;;) {
signed char v104 = -2;
unsigned short v103 = 3;
unsigned char v102 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v9 (unsigned char v105)
{
history[history_index++] = (int)v105;
{
for (;;) {
signed int v108 = 2;
signed char v107 = -2;
unsigned short v106 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v3 (unsigned short v109, signed int v110, signed short v111)
{
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
{
for (;;) {
unsigned int v114 = 1U;
signed char v113 = -1;
signed char v112 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
