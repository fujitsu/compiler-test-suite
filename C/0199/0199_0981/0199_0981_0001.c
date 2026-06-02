#include <stdlib.h>
extern unsigned char v1 (unsigned short, unsigned char, signed char);
extern unsigned char (*v2) (unsigned short, unsigned char, signed char);
unsigned short v3 (signed int, signed int, signed char);
unsigned short (*v4) (signed int, signed int, signed char) = v3;
extern signed short v5 (unsigned short);
extern signed short (*v6) (unsigned short);
extern void v9 (unsigned int, signed int, unsigned char);
extern void (*v10) (unsigned int, signed int, unsigned char);
unsigned int v11 (signed int);
unsigned int (*v12) (signed int) = v11;
extern signed int v13 (unsigned char, signed char, signed short, signed int);
extern signed int (*v14) (unsigned char, signed char, signed short, signed int);
extern signed int v15 (unsigned short);
extern signed int (*v16) (unsigned short);
void v17 (unsigned int);
void (*v18) (unsigned int) = v17;
extern void v19 (signed char);
extern void (*v20) (signed char);
extern unsigned char v21 (signed int, signed int);
extern unsigned char (*v22) (signed int, signed int);
extern unsigned short v23 (unsigned short, unsigned int);
extern unsigned short (*v24) (unsigned short, unsigned int);
extern signed char v25 (void);
extern signed char (*v26) (void);
extern unsigned short v27 (void);
extern unsigned short (*v28) (void);
extern unsigned int v29 (unsigned char, unsigned int, unsigned char, unsigned short);
extern unsigned int (*v30) (unsigned char, unsigned int, unsigned char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed short v64 = -2;
signed char v63 = 1;
signed short v62 = 0;

void v17 (unsigned int v65)
{
history[history_index++] = (int)v65;
{
for (;;) {
signed char v68 = -4;
signed char v67 = -1;
signed int v66 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v11 (signed int v69)
{
history[history_index++] = (int)v69;
{
for (;;) {
unsigned int v72 = 3U;
unsigned char v71 = 3;
signed short v70 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v3 (signed int v73, signed int v74, signed char v75)
{
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
{
for (;;) {
signed char v78 = -1;
signed char v77 = 2;
signed int v76 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
