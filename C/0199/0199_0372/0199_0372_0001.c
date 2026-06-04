#include <stdlib.h>
extern unsigned short v1 (unsigned short, signed short, unsigned int, signed char);
extern unsigned short (*v2) (unsigned short, signed short, unsigned int, signed char);
extern signed int v3 (void);
extern signed int (*v4) (void);
extern signed int v5 (signed short, unsigned int, signed int);
extern signed int (*v6) (signed short, unsigned int, signed int);
void v7 (unsigned short);
void (*v8) (unsigned short) = v7;
extern void v9 (unsigned short, signed int, unsigned int);
extern void (*v10) (unsigned short, signed int, unsigned int);
extern unsigned char v11 (signed int, unsigned int, signed short, signed short);
extern unsigned char (*v12) (signed int, unsigned int, signed short, signed short);
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
extern signed char v15 (signed int);
extern signed char (*v16) (signed int);
extern signed char v17 (unsigned char, unsigned int, unsigned char, unsigned short);
extern signed char (*v18) (unsigned char, unsigned int, unsigned char, unsigned short);
unsigned int v19 (unsigned int, unsigned int, unsigned char);
unsigned int (*v20) (unsigned int, unsigned int, unsigned char) = v19;
extern signed char v21 (unsigned int);
extern signed char (*v22) (unsigned int);
extern signed char v23 (void);
extern signed char (*v24) (void);
extern unsigned short v25 (void);
extern unsigned short (*v26) (void);
unsigned int v27 (void);
unsigned int (*v28) (void) = v27;
extern unsigned int v29 (unsigned char, signed int, signed short, signed char);
extern unsigned int (*v30) (unsigned char, signed int, signed short, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v67 = 3U;
unsigned int v66 = 0U;
unsigned int v65 = 1U;

unsigned int v27 (void)
{
{
for (;;) {
unsigned char v70 = 1;
unsigned int v69 = 5U;
unsigned short v68 = 7;
trace++;
switch (trace)
{
case 10: 
return v69;
default: abort ();
}
}
}
}

unsigned int v19 (unsigned int v71, unsigned int v72, unsigned char v73)
{
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
{
for (;;) {
unsigned int v76 = 2U;
signed char v75 = 3;
signed int v74 = 3;
trace++;
switch (trace)
{
case 1: 
return v76;
default: abort ();
}
}
}
}

void v7 (unsigned short v77)
{
history[history_index++] = (int)v77;
{
for (;;) {
signed int v80 = 3;
signed char v79 = -4;
signed short v78 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
