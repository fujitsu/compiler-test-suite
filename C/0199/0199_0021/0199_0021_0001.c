#include <stdlib.h>
extern unsigned char v3 (unsigned int);
extern unsigned char (*v4) (unsigned int);
extern void v5 (unsigned char, unsigned int);
extern void (*v6) (unsigned char, unsigned int);
extern void v7 (signed short, unsigned char, signed int);
extern void (*v8) (signed short, unsigned char, signed int);
extern unsigned short v9 (signed short);
extern unsigned short (*v10) (signed short);
extern unsigned char v11 (signed short, unsigned int, unsigned char, signed short);
extern unsigned char (*v12) (signed short, unsigned int, unsigned char, signed short);
extern unsigned short v13 (unsigned int);
extern unsigned short (*v14) (unsigned int);
unsigned int v15 (void);
unsigned int (*v16) (void) = v15;
extern unsigned int v17 (void);
extern unsigned int (*v18) (void);
extern signed short v19 (void);
extern signed short (*v20) (void);
extern signed char v21 (signed short, unsigned short);
extern signed char (*v22) (signed short, unsigned short);
unsigned int v23 (signed char, signed short);
unsigned int (*v24) (signed char, signed short) = v23;
void v25 (void);
void (*v26) (void) = v25;
extern unsigned short v27 (signed char, signed short, unsigned short);
extern unsigned short (*v28) (signed char, signed short, unsigned short);
extern signed char v29 (signed char, unsigned char, unsigned int, signed int);
extern signed char (*v30) (signed char, unsigned char, unsigned int, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed int v65 = 0;
unsigned char v64 = 6;
signed char v63 = 0;

void v25 (void)
{
{
for (;;) {
signed int v68 = 3;
unsigned int v67 = 1U;
unsigned char v66 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v23 (signed char v69, signed short v70)
{
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
{
for (;;) {
unsigned int v73 = 0U;
signed char v72 = -4;
unsigned int v71 = 1U;
trace++;
switch (trace)
{
case 10: 
return v71;
default: abort ();
}
}
}
}

unsigned int v15 (void)
{
{
for (;;) {
unsigned int v76 = 7U;
unsigned short v75 = 2;
unsigned int v74 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
