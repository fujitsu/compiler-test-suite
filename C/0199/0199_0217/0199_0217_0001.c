#include <stdlib.h>
extern unsigned short v1 (void);
extern unsigned short (*v2) (void);
unsigned int v5 (unsigned int, signed int, unsigned short, signed short);
unsigned int (*v6) (unsigned int, signed int, unsigned short, signed short) = v5;
signed int v7 (void);
signed int (*v8) (void) = v7;
extern signed short v9 (unsigned short, signed short);
extern signed short (*v10) (unsigned short, signed short);
extern void v11 (unsigned int, signed int);
extern void (*v12) (unsigned int, signed int);
unsigned char v13 (void);
unsigned char (*v14) (void) = v13;
extern unsigned int v15 (signed short, signed short, signed char);
extern unsigned int (*v16) (signed short, signed short, signed char);
extern signed int v17 (void);
extern signed int (*v18) (void);
extern unsigned int v19 (signed short, unsigned short);
extern unsigned int (*v20) (signed short, unsigned short);
extern unsigned short v21 (signed short, unsigned char, unsigned char);
extern unsigned short (*v22) (signed short, unsigned char, unsigned char);
extern unsigned short v23 (unsigned short, unsigned char, signed int, signed int);
extern unsigned short (*v24) (unsigned short, unsigned char, signed int, signed int);
extern signed short v25 (void);
extern signed short (*v26) (void);
extern unsigned char v27 (void);
extern unsigned char (*v28) (void);
extern void v29 (void);
extern void (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v57 = 5;
signed char v56 = -2;
unsigned char v55 = 4;

unsigned char v13 (void)
{
{
for (;;) {
unsigned int v60 = 0U;
signed char v59 = -2;
unsigned int v58 = 3U;
trace++;
switch (trace)
{
case 7: 
return 1;
default: abort ();
}
}
}
}

signed int v7 (void)
{
{
for (;;) {
signed int v63 = -1;
signed char v62 = 0;
signed int v61 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v5 (unsigned int v64, signed int v65, unsigned short v66, signed short v67)
{
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
{
for (;;) {
unsigned int v70 = 7U;
unsigned int v69 = 5U;
unsigned short v68 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
