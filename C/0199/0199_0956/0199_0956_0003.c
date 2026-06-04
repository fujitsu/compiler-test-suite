#include <stdlib.h>
extern void v1 (signed int, unsigned short);
extern void (*v2) (signed int, unsigned short);
unsigned short v5 (void);
unsigned short (*v6) (void) = v5;
unsigned char v9 (signed char, signed int, unsigned short);
unsigned char (*v10) (signed char, signed int, unsigned short) = v9;
unsigned int v11 (signed short, unsigned char, unsigned int);
unsigned int (*v12) (signed short, unsigned char, unsigned int) = v11;
extern signed int v13 (unsigned short);
extern signed int (*v14) (unsigned short);
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
extern signed short v17 (signed int, signed short, signed short);
extern signed short (*v18) (signed int, signed short, signed short);
extern unsigned short v19 (unsigned short);
extern unsigned short (*v20) (unsigned short);
extern unsigned char v21 (signed int);
extern unsigned char (*v22) (signed int);
extern signed int v23 (void);
extern signed int (*v24) (void);
extern unsigned int v25 (void);
extern unsigned int (*v26) (void);
void v27 (void);
void (*v28) (void) = v27;
extern int history[];
extern int history_index;
extern int trace;
signed char v92 = 2;
unsigned int v91 = 3U;
signed short v90 = 2;

void v27 (void)
{
{
for (;;) {
signed int v95 = 1;
signed short v94 = 0;
signed int v93 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v11 (signed short v96, unsigned char v97, unsigned int v98)
{
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
{
for (;;) {
signed short v101 = -4;
signed short v100 = 1;
unsigned short v99 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v9 (signed char v102, signed int v103, unsigned short v104)
{
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
{
for (;;) {
signed int v107 = 3;
signed int v106 = -4;
unsigned char v105 = 6;
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
unsigned int v110 = 3U;
signed short v109 = 3;
unsigned int v108 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
