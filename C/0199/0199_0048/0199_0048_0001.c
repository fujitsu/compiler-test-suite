#include <stdlib.h>
extern signed char v1 (void);
extern signed char (*v2) (void);
extern unsigned char v3 (signed int, unsigned char, unsigned char);
extern unsigned char (*v4) (signed int, unsigned char, unsigned char);
extern unsigned int v5 (unsigned int);
extern unsigned int (*v6) (unsigned int);
unsigned int v7 (void);
unsigned int (*v8) (void) = v7;
unsigned short v9 (signed int, signed int, signed char);
unsigned short (*v10) (signed int, signed int, signed char) = v9;
extern signed short v11 (unsigned short, unsigned short);
extern signed short (*v12) (unsigned short, unsigned short);
extern unsigned int v13 (unsigned char, unsigned int, unsigned short, signed char);
extern unsigned int (*v14) (unsigned char, unsigned int, unsigned short, signed char);
signed short v15 (unsigned int, unsigned char, unsigned char);
signed short (*v16) (unsigned int, unsigned char, unsigned char) = v15;
unsigned int v17 (unsigned int);
unsigned int (*v18) (unsigned int) = v17;
extern signed short v19 (unsigned int);
extern signed short (*v20) (unsigned int);
extern void v21 (void);
extern void (*v22) (void);
extern unsigned char v23 (void);
extern unsigned char (*v24) (void);
extern signed int v27 (void);
extern signed int (*v28) (void);
extern void v29 (unsigned short, unsigned char, signed int);
extern void (*v30) (unsigned short, unsigned char, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v44 = 6;
signed short v43 = -1;
signed char v42 = 0;

unsigned int v17 (unsigned int v45)
{
history[history_index++] = (int)v45;
{
for (;;) {
unsigned short v48 = 0;
signed char v47 = 1;
unsigned char v46 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v15 (unsigned int v49, unsigned char v50, unsigned char v51)
{
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
{
for (;;) {
signed char v54 = -4;
signed short v53 = -3;
unsigned char v52 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v9 (signed int v55, signed int v56, signed char v57)
{
history[history_index++] = (int)v55;
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
{
for (;;) {
signed char v60 = 1;
signed int v59 = 2;
unsigned int v58 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v7 (void)
{
{
for (;;) {
unsigned int v63 = 1U;
signed short v62 = 0;
unsigned char v61 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
