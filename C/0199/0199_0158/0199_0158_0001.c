#include <stdlib.h>
extern signed short v3 (unsigned short);
extern signed short (*v4) (unsigned short);
signed char v5 (void);
signed char (*v6) (void) = v5;
unsigned int v7 (signed char, signed char, unsigned char);
unsigned int (*v8) (signed char, signed char, unsigned char) = v7;
signed int v9 (unsigned char, signed char);
signed int (*v10) (unsigned char, signed char) = v9;
extern signed short v11 (unsigned short);
extern signed short (*v12) (unsigned short);
extern unsigned short v13 (unsigned int, unsigned char);
extern unsigned short (*v14) (unsigned int, unsigned char);
extern signed short v15 (unsigned int, signed char, signed short);
extern signed short (*v16) (unsigned int, signed char, signed short);
extern signed char v17 (unsigned char, signed int, unsigned int);
extern signed char (*v18) (unsigned char, signed int, unsigned int);
unsigned short v19 (void);
unsigned short (*v20) (void) = v19;
extern unsigned short v21 (void);
extern unsigned short (*v22) (void);
extern unsigned short v23 (void);
extern unsigned short (*v24) (void);
extern unsigned int v25 (signed char, signed int, signed short, signed short);
extern unsigned int (*v26) (signed char, signed int, signed short, signed short);
extern unsigned int v27 (signed int, unsigned int, unsigned char, signed short);
extern unsigned int (*v28) (signed int, unsigned int, unsigned char, signed short);
void v29 (unsigned char, unsigned short, signed int, signed short);
void (*v30) (unsigned char, unsigned short, signed int, signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v61 = 2U;
signed int v60 = -4;
unsigned int v59 = 0U;

void v29 (unsigned char v62, unsigned short v63, signed int v64, signed short v65)
{
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
{
for (;;) {
unsigned char v68 = 1;
unsigned int v67 = 6U;
signed short v66 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v19 (void)
{
{
for (;;) {
unsigned int v71 = 4U;
unsigned char v70 = 4;
signed short v69 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v9 (unsigned char v72, signed char v73)
{
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
{
for (;;) {
unsigned int v76 = 6U;
unsigned int v75 = 7U;
signed int v74 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v7 (signed char v77, signed char v78, unsigned char v79)
{
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
{
for (;;) {
signed int v82 = 2;
signed int v81 = -4;
signed short v80 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v5 (void)
{
{
for (;;) {
signed char v85 = 0;
signed char v84 = 3;
unsigned short v83 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
