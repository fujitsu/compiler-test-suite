#include <stdlib.h>
extern signed int v3 (signed char, signed int, signed short);
extern signed int (*v4) (signed char, signed int, signed short);
extern void v5 (void);
extern void (*v6) (void);
extern unsigned char v7 (signed char, signed short, signed char);
extern unsigned char (*v8) (signed char, signed short, signed char);
extern unsigned short v9 (unsigned int, signed int, unsigned short);
extern unsigned short (*v10) (unsigned int, signed int, unsigned short);
extern signed char v11 (unsigned char, unsigned short, signed char, signed short);
extern signed char (*v12) (unsigned char, unsigned short, signed char, signed short);
extern unsigned int v13 (signed short);
extern unsigned int (*v14) (signed short);
unsigned int v15 (void);
unsigned int (*v16) (void) = v15;
extern void v17 (unsigned char, unsigned int);
extern void (*v18) (unsigned char, unsigned int);
extern signed int v19 (signed int);
extern signed int (*v20) (signed int);
signed int v21 (void);
signed int (*v22) (void) = v21;
void v25 (signed short, signed short, unsigned char, unsigned char);
void (*v26) (signed short, signed short, unsigned char, unsigned char) = v25;
extern void v27 (unsigned short, unsigned int, unsigned int, unsigned char);
extern void (*v28) (unsigned short, unsigned int, unsigned int, unsigned char);
extern unsigned int v29 (signed int, signed char);
extern unsigned int (*v30) (signed int, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed int v64 = -2;
signed char v63 = -2;
unsigned int v62 = 0U;

void v25 (signed short v65, signed short v66, unsigned char v67, unsigned char v68)
{
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
{
for (;;) {
unsigned short v71 = 5;
unsigned int v70 = 7U;
unsigned char v69 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v21 (void)
{
{
for (;;) {
unsigned int v74 = 2U;
signed short v73 = 3;
unsigned int v72 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v15 (void)
{
{
for (;;) {
signed int v77 = 3;
unsigned int v76 = 1U;
unsigned int v75 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
