#include <stdlib.h>
extern signed short v1 (signed int, signed short, signed char);
extern signed short (*v2) (signed int, signed short, signed char);
extern unsigned char v3 (signed short, signed int);
extern unsigned char (*v4) (signed short, signed int);
extern signed char v5 (unsigned char, signed short);
extern signed char (*v6) (unsigned char, signed short);
extern signed int v7 (signed char, unsigned short, signed int);
extern signed int (*v8) (signed char, unsigned short, signed int);
extern unsigned short v9 (signed char, signed int, signed int);
extern unsigned short (*v10) (signed char, signed int, signed int);
signed short v11 (signed int, unsigned char, unsigned char);
signed short (*v12) (signed int, unsigned char, unsigned char) = v11;
unsigned short v13 (void);
unsigned short (*v14) (void) = v13;
signed short v15 (void);
signed short (*v16) (void) = v15;
extern signed char v17 (unsigned char);
extern signed char (*v18) (unsigned char);
extern void v19 (signed short, signed short, signed short);
extern void (*v20) (signed short, signed short, signed short);
extern void v21 (signed char, unsigned int);
extern void (*v22) (signed char, unsigned int);
extern signed int v25 (void);
extern signed int (*v26) (void);
extern signed int v27 (signed char, signed char, unsigned char, unsigned short);
extern signed int (*v28) (signed char, signed char, unsigned char, unsigned short);
unsigned short v29 (unsigned int);
unsigned short (*v30) (unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v56 = 0;
unsigned int v55 = 3U;
signed char v54 = 1;

unsigned short v29 (unsigned int v57)
{
history[history_index++] = (int)v57;
{
for (;;) {
unsigned short v60 = 1;
unsigned short v59 = 0;
signed char v58 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v15 (void)
{
{
for (;;) {
unsigned short v63 = 6;
signed short v62 = -2;
signed short v61 = -2;
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
signed short v66 = 0;
unsigned short v65 = 7;
signed short v64 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v11 (signed int v67, unsigned char v68, unsigned char v69)
{
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
{
for (;;) {
signed char v72 = 1;
unsigned char v71 = 1;
unsigned short v70 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
