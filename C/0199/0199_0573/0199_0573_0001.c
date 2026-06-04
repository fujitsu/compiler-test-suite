#include <stdlib.h>
extern unsigned int v1 (signed int, signed short, unsigned int);
extern unsigned int (*v2) (signed int, signed short, unsigned int);
void v3 (signed char, unsigned short, unsigned short);
void (*v4) (signed char, unsigned short, unsigned short) = v3;
extern void v5 (signed short, signed int, signed int, signed short);
extern void (*v6) (signed short, signed int, signed int, signed short);
extern unsigned short v7 (unsigned short, unsigned short, unsigned char);
extern unsigned short (*v8) (unsigned short, unsigned short, unsigned char);
extern void v9 (void);
extern void (*v10) (void);
extern signed int v11 (unsigned char);
extern signed int (*v12) (unsigned char);
unsigned short v13 (void);
unsigned short (*v14) (void) = v13;
extern void v15 (void);
extern void (*v16) (void);
unsigned char v17 (signed short, unsigned char, unsigned char, signed char);
unsigned char (*v18) (signed short, unsigned char, unsigned char, signed char) = v17;
extern unsigned int v19 (void);
extern unsigned int (*v20) (void);
extern signed int v21 (signed int, signed int, signed char);
extern signed int (*v22) (signed int, signed int, signed char);
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
unsigned short v25 (unsigned char, signed char, signed char);
unsigned short (*v26) (unsigned char, signed char, signed char) = v25;
extern unsigned char v27 (unsigned char, signed int);
extern unsigned char (*v28) (unsigned char, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed short v51 = -4;
unsigned int v50 = 6U;
signed int v49 = -3;

unsigned short v25 (unsigned char v52, signed char v53, signed char v54)
{
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
{
for (;;) {
unsigned short v57 = 5;
signed int v56 = 2;
signed int v55 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v17 (signed short v58, unsigned char v59, unsigned char v60, signed char v61)
{
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
{
for (;;) {
unsigned int v64 = 3U;
signed short v63 = 2;
signed short v62 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v13 (void)
{
{
for (;;) {
signed int v67 = 3;
signed short v66 = 1;
unsigned int v65 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v3 (signed char v68, unsigned short v69, unsigned short v70)
{
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
{
for (;;) {
signed int v73 = 2;
signed int v72 = -1;
signed int v71 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
