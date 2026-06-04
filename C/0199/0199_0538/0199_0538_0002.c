#include <stdlib.h>
extern unsigned short v1 (signed short, unsigned char);
extern unsigned short (*v2) (signed short, unsigned char);
extern signed short v3 (unsigned char, unsigned char);
extern signed short (*v4) (unsigned char, unsigned char);
extern unsigned short v7 (void);
extern unsigned short (*v8) (void);
extern unsigned short v11 (void);
extern unsigned short (*v12) (void);
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
void v15 (unsigned char, unsigned char, unsigned char);
void (*v16) (unsigned char, unsigned char, unsigned char) = v15;
void v17 (signed int, signed short);
void (*v18) (signed int, signed short) = v17;
extern unsigned char v19 (unsigned int, unsigned int, unsigned short, signed char);
extern unsigned char (*v20) (unsigned int, unsigned int, unsigned short, signed char);
extern void v21 (unsigned int, signed short, signed char, unsigned char);
extern void (*v22) (unsigned int, signed short, signed char, unsigned char);
extern unsigned short v23 (signed short, unsigned int, signed short, signed int);
extern unsigned short (*v24) (signed short, unsigned int, signed short, signed int);
extern signed int v27 (void);
extern signed int (*v28) (void);
extern unsigned char v29 (void);
extern unsigned char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed int v62 = 2;
unsigned int v61 = 2U;
unsigned int v60 = 6U;

void v17 (signed int v63, signed short v64)
{
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
{
for (;;) {
unsigned int v67 = 1U;
unsigned short v66 = 1;
signed short v65 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v15 (unsigned char v68, unsigned char v69, unsigned char v70)
{
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
{
for (;;) {
unsigned char v73 = 4;
unsigned int v72 = 5U;
signed char v71 = -1;
trace++;
switch (trace)
{
case 6: 
return;
default: abort ();
}
}
}
}
