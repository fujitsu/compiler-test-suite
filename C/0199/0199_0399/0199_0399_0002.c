#include <stdlib.h>
extern unsigned int v1 (void);
extern unsigned int (*v2) (void);
extern unsigned char v3 (signed int);
extern unsigned char (*v4) (signed int);
extern unsigned short v5 (signed char, signed int);
extern unsigned short (*v6) (signed char, signed int);
void v7 (signed short);
void (*v8) (signed short) = v7;
extern signed short v9 (void);
extern signed short (*v10) (void);
extern signed short v11 (signed short, unsigned int, signed char);
extern signed short (*v12) (signed short, unsigned int, signed char);
extern unsigned short v13 (unsigned char, unsigned short);
extern unsigned short (*v14) (unsigned char, unsigned short);
extern unsigned short v15 (signed char, unsigned short);
extern unsigned short (*v16) (signed char, unsigned short);
unsigned short v17 (unsigned int, signed char, unsigned int, signed short);
unsigned short (*v18) (unsigned int, signed char, unsigned int, signed short) = v17;
extern signed char v19 (unsigned int);
extern signed char (*v20) (unsigned int);
signed short v23 (unsigned char, signed char, signed char, signed short);
signed short (*v24) (unsigned char, signed char, signed char, signed short) = v23;
extern signed int v25 (unsigned short, unsigned char, unsigned short, signed char);
extern signed int (*v26) (unsigned short, unsigned char, unsigned short, signed char);
void v27 (unsigned char, signed int, unsigned short);
void (*v28) (unsigned char, signed int, unsigned short) = v27;
extern void v29 (unsigned char, unsigned short, unsigned int);
extern void (*v30) (unsigned char, unsigned short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed char v58 = 3;
signed char v57 = 2;
unsigned int v56 = 1U;

void v27 (unsigned char v59, signed int v60, unsigned short v61)
{
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
{
for (;;) {
unsigned short v64 = 7;
signed short v63 = -3;
signed short v62 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v23 (unsigned char v65, signed char v66, signed char v67, signed short v68)
{
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
{
for (;;) {
unsigned char v71 = 3;
signed short v70 = -4;
unsigned char v69 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v17 (unsigned int v72, signed char v73, unsigned int v74, signed short v75)
{
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
{
for (;;) {
signed short v78 = 1;
unsigned short v77 = 1;
unsigned int v76 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v7 (signed short v79)
{
history[history_index++] = (int)v79;
{
for (;;) {
unsigned char v82 = 4;
unsigned short v81 = 4;
signed int v80 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
