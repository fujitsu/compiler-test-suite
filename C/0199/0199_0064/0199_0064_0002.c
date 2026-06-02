#include <stdlib.h>
extern void v1 (unsigned int, unsigned char, unsigned char, signed char);
extern void (*v2) (unsigned int, unsigned char, unsigned char, signed char);
extern signed int v3 (unsigned short, unsigned char, unsigned short, unsigned int);
extern signed int (*v4) (unsigned short, unsigned char, unsigned short, unsigned int);
void v5 (unsigned char, signed char);
void (*v6) (unsigned char, signed char) = v5;
extern signed int v7 (signed int, unsigned int, signed int);
extern signed int (*v8) (signed int, unsigned int, signed int);
extern unsigned char v11 (void);
extern unsigned char (*v12) (void);
extern unsigned char v13 (signed char);
extern unsigned char (*v14) (signed char);
extern unsigned short v15 (unsigned int, unsigned char, signed int, signed char);
extern unsigned short (*v16) (unsigned int, unsigned char, signed int, signed char);
extern unsigned char v17 (unsigned int);
extern unsigned char (*v18) (unsigned int);
extern signed short v21 (void);
extern signed short (*v22) (void);
extern signed int v23 (unsigned short);
extern signed int (*v24) (unsigned short);
unsigned int v25 (unsigned int, unsigned int, unsigned int, signed int);
unsigned int (*v26) (unsigned int, unsigned int, unsigned int, signed int) = v25;
extern signed char v27 (unsigned int);
extern signed char (*v28) (unsigned int);
void v29 (void);
void (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v89 = 3;
signed short v88 = -2;
signed char v87 = -2;

void v29 (void)
{
{
for (;;) {
unsigned int v92 = 4U;
signed short v91 = -1;
signed short v90 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v25 (unsigned int v93, unsigned int v94, unsigned int v95, signed int v96)
{
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
{
for (;;) {
unsigned int v99 = 4U;
unsigned int v98 = 3U;
unsigned char v97 = 3;
trace++;
switch (trace)
{
case 6: 
return v99;
default: abort ();
}
}
}
}

void v5 (unsigned char v100, signed char v101)
{
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
{
for (;;) {
unsigned int v104 = 4U;
unsigned short v103 = 0;
unsigned char v102 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
