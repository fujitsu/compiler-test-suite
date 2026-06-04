#include <stdlib.h>
extern unsigned short v1 (unsigned short, unsigned short);
extern unsigned short (*v2) (unsigned short, unsigned short);
void v3 (void);
void (*v4) (void) = v3;
signed char v5 (signed char, signed short, unsigned int, unsigned int);
signed char (*v6) (signed char, signed short, unsigned int, unsigned int) = v5;
extern unsigned short v7 (unsigned int, unsigned short);
extern unsigned short (*v8) (unsigned int, unsigned short);
extern void v9 (void);
extern void (*v10) (void);
void v11 (signed int, signed short, signed char, unsigned char);
void (*v12) (signed int, signed short, signed char, unsigned char) = v11;
extern unsigned char v13 (signed char);
extern unsigned char (*v14) (signed char);
void v17 (signed int, unsigned char);
void (*v18) (signed int, unsigned char) = v17;
extern signed char v19 (signed char, unsigned int, signed int, unsigned short);
extern signed char (*v20) (signed char, unsigned int, signed int, unsigned short);
extern void v21 (unsigned char, unsigned int, unsigned int, signed short);
extern void (*v22) (unsigned char, unsigned int, unsigned int, signed short);
extern signed char v23 (void);
extern signed char (*v24) (void);
extern void v25 (unsigned short);
extern void (*v26) (unsigned short);
extern unsigned int v27 (signed char, unsigned short, unsigned int, unsigned char);
extern unsigned int (*v28) (signed char, unsigned short, unsigned int, unsigned char);
extern void v29 (unsigned int, unsigned char, unsigned char);
extern void (*v30) (unsigned int, unsigned char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed char v58 = 3;
unsigned int v57 = 0U;
unsigned int v56 = 2U;

void v17 (signed int v59, unsigned char v60)
{
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
{
for (;;) {
unsigned int v63 = 6U;
signed int v62 = 0;
unsigned short v61 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v11 (signed int v64, signed short v65, signed char v66, unsigned char v67)
{
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
{
for (;;) {
unsigned char v70 = 0;
signed char v69 = 1;
signed short v68 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v5 (signed char v71, signed short v72, unsigned int v73, unsigned int v74)
{
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
{
for (;;) {
unsigned char v77 = 7;
signed char v76 = -2;
unsigned short v75 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v3 (void)
{
{
for (;;) {
unsigned int v80 = 4U;
unsigned short v79 = 2;
unsigned char v78 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
