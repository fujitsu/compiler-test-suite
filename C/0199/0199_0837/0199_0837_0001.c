#include <stdlib.h>
extern signed short v1 (unsigned short);
extern signed short (*v2) (unsigned short);
unsigned short v3 (signed int);
unsigned short (*v4) (signed int) = v3;
void v5 (unsigned int, signed short, signed short, unsigned short);
void (*v6) (unsigned int, signed short, signed short, unsigned short) = v5;
extern unsigned int v7 (unsigned short, signed int);
extern unsigned int (*v8) (unsigned short, signed int);
extern signed short v9 (unsigned int, unsigned int, unsigned char, signed short);
extern signed short (*v10) (unsigned int, unsigned int, unsigned char, signed short);
extern unsigned int v11 (unsigned short, unsigned int);
extern unsigned int (*v12) (unsigned short, unsigned int);
extern signed short v13 (signed int, unsigned int, signed char, unsigned short);
extern signed short (*v14) (signed int, unsigned int, signed char, unsigned short);
extern signed short v15 (signed short, signed int, unsigned int, signed short);
extern signed short (*v16) (signed short, signed int, unsigned int, signed short);
extern unsigned char v17 (unsigned short, signed int, unsigned short, signed short);
extern unsigned char (*v18) (unsigned short, signed int, unsigned short, signed short);
unsigned short v19 (void);
unsigned short (*v20) (void) = v19;
extern unsigned int v21 (signed short, unsigned char);
extern unsigned int (*v22) (signed short, unsigned char);
extern unsigned short v23 (void);
extern unsigned short (*v24) (void);
extern unsigned char v25 (unsigned short, signed char, unsigned char);
extern unsigned char (*v26) (unsigned short, signed char, unsigned char);
extern unsigned char v27 (unsigned int, signed short, signed short, unsigned int);
extern unsigned char (*v28) (unsigned int, signed short, signed short, unsigned int);
extern signed char v29 (void);
extern signed char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed int v54 = -4;
unsigned int v53 = 3U;
signed char v52 = -3;

unsigned short v19 (void)
{
{
for (;;) {
unsigned char v57 = 1;
unsigned int v56 = 6U;
signed int v55 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v5 (unsigned int v58, signed short v59, signed short v60, unsigned short v61)
{
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
{
for (;;) {
signed short v64 = 1;
unsigned short v63 = 7;
unsigned short v62 = 7;
trace++;
switch (trace)
{
case 3: 
return;
default: abort ();
}
}
}
}

unsigned short v3 (signed int v65)
{
history[history_index++] = (int)v65;
{
for (;;) {
signed int v68 = -4;
signed char v67 = -2;
unsigned char v66 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
