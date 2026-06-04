#include <stdlib.h>
extern unsigned short v1 (unsigned short, unsigned short, unsigned int);
extern unsigned short (*v2) (unsigned short, unsigned short, unsigned int);
extern signed int v3 (signed int);
extern signed int (*v4) (signed int);
extern unsigned char v5 (unsigned int);
extern unsigned char (*v6) (unsigned int);
extern signed short v7 (signed int);
extern signed short (*v8) (signed int);
extern void v9 (void);
extern void (*v10) (void);
void v11 (unsigned int, signed char);
void (*v12) (unsigned int, signed char) = v11;
extern signed char v13 (signed short, unsigned short, signed int);
extern signed char (*v14) (signed short, unsigned short, signed int);
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
signed short v17 (signed char);
signed short (*v18) (signed char) = v17;
extern signed int v19 (signed int, signed int, signed int, signed int);
extern signed int (*v20) (signed int, signed int, signed int, signed int);
extern signed char v21 (unsigned short, unsigned char, unsigned char);
extern signed char (*v22) (unsigned short, unsigned char, unsigned char);
extern void v23 (signed short, unsigned char);
extern void (*v24) (signed short, unsigned char);
extern unsigned short v25 (signed char);
extern unsigned short (*v26) (signed char);
extern signed short v29 (signed int);
extern signed short (*v30) (signed int);
extern int history[];
extern int history_index;
extern int trace;
signed char v66 = -1;
unsigned int v65 = 3U;
signed short v64 = 1;

signed short v17 (signed char v67)
{
history[history_index++] = (int)v67;
{
for (;;) {
signed char v70 = -2;
unsigned int v69 = 0U;
signed short v68 = 3;
trace++;
switch (trace)
{
case 3: 
return -4;
default: abort ();
}
}
}
}

void v11 (unsigned int v71, signed char v72)
{
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
{
for (;;) {
unsigned int v75 = 7U;
unsigned short v74 = 0;
unsigned int v73 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
