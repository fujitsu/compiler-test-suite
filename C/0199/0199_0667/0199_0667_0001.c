#include <stdlib.h>
extern unsigned char v1 (unsigned int, signed int, unsigned int);
extern unsigned char (*v2) (unsigned int, signed int, unsigned int);
extern signed char v3 (unsigned short, unsigned int);
extern signed char (*v4) (unsigned short, unsigned int);
extern unsigned short v5 (signed char, unsigned int);
extern unsigned short (*v6) (signed char, unsigned int);
unsigned char v7 (unsigned char, signed int, unsigned char, unsigned short);
unsigned char (*v8) (unsigned char, signed int, unsigned char, unsigned short) = v7;
void v9 (unsigned char);
void (*v10) (unsigned char) = v9;
extern unsigned int v11 (unsigned short);
extern unsigned int (*v12) (unsigned short);
extern signed int v13 (unsigned char, unsigned char, unsigned short, signed short);
extern signed int (*v14) (unsigned char, unsigned char, unsigned short, signed short);
extern unsigned short v15 (void);
extern unsigned short (*v16) (void);
extern signed int v17 (unsigned short, unsigned short, signed int);
extern signed int (*v18) (unsigned short, unsigned short, signed int);
extern signed int v19 (unsigned int, unsigned int);
extern signed int (*v20) (unsigned int, unsigned int);
extern signed int v21 (void);
extern signed int (*v22) (void);
extern signed int v23 (unsigned short, signed short);
extern signed int (*v24) (unsigned short, signed short);
signed short v25 (signed char, unsigned char);
signed short (*v26) (signed char, unsigned char) = v25;
signed char v27 (void);
signed char (*v28) (void) = v27;
extern int history[];
extern int history_index;
extern int trace;
signed int v55 = -1;
signed int v54 = -3;
signed int v53 = -4;

signed char v27 (void)
{
{
for (;;) {
signed char v58 = 3;
signed int v57 = -3;
signed char v56 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v25 (signed char v59, unsigned char v60)
{
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
{
for (;;) {
signed char v63 = 3;
signed int v62 = 0;
unsigned char v61 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v9 (unsigned char v64)
{
history[history_index++] = (int)v64;
{
for (;;) {
unsigned short v67 = 6;
unsigned int v66 = 1U;
unsigned char v65 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v7 (unsigned char v68, signed int v69, unsigned char v70, unsigned short v71)
{
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
{
for (;;) {
signed int v74 = 0;
signed int v73 = 0;
unsigned char v72 = 2;
trace++;
switch (trace)
{
case 1: 
return v68;
case 7: 
return v70;
default: abort ();
}
}
}
}
