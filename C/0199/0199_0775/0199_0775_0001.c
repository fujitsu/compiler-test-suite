#include <stdlib.h>
extern signed short v1 (signed short, signed int, unsigned short, signed short);
extern signed short (*v2) (signed short, signed int, unsigned short, signed short);
extern void v3 (signed short);
extern void (*v4) (signed short);
extern signed char v5 (unsigned char, signed int, unsigned int);
extern signed char (*v6) (unsigned char, signed int, unsigned int);
extern signed int v7 (unsigned int, unsigned int, signed char, signed int);
extern signed int (*v8) (unsigned int, unsigned int, signed char, signed int);
extern signed short v9 (signed char);
extern signed short (*v10) (signed char);
void v11 (unsigned char);
void (*v12) (unsigned char) = v11;
extern signed short v13 (unsigned int, signed short, unsigned int, signed int);
extern signed short (*v14) (unsigned int, signed short, unsigned int, signed int);
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
void v21 (unsigned int, signed char);
void (*v22) (unsigned int, signed char) = v21;
extern void v23 (void);
extern void (*v24) (void);
unsigned short v25 (signed int);
unsigned short (*v26) (signed int) = v25;
extern signed short v27 (signed int, unsigned int, unsigned char, unsigned short);
extern signed short (*v28) (signed int, unsigned int, unsigned char, unsigned short);
extern void v29 (void);
extern void (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed short v59 = 0;
signed short v58 = 3;
unsigned int v57 = 1U;

unsigned short v25 (signed int v60)
{
history[history_index++] = (int)v60;
{
for (;;) {
signed short v63 = -1;
signed char v62 = -2;
unsigned char v61 = 6;
trace++;
switch (trace)
{
case 9: 
return 1;
default: abort ();
}
}
}
}

void v21 (unsigned int v64, signed char v65)
{
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
{
for (;;) {
unsigned short v68 = 0;
unsigned int v67 = 4U;
signed char v66 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v11 (unsigned char v69)
{
history[history_index++] = (int)v69;
{
for (;;) {
signed short v72 = 3;
unsigned char v71 = 0;
unsigned short v70 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
