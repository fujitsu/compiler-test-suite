#include <stdlib.h>
extern unsigned int v1 (unsigned char, unsigned char, signed short);
extern unsigned int (*v2) (unsigned char, unsigned char, signed short);
extern unsigned char v5 (unsigned int, unsigned short, unsigned int, unsigned int);
extern unsigned char (*v6) (unsigned int, unsigned short, unsigned int, unsigned int);
extern void v7 (void);
extern void (*v8) (void);
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
void v11 (signed char, signed short, signed int, signed short);
void (*v12) (signed char, signed short, signed int, signed short) = v11;
unsigned char v13 (signed char);
unsigned char (*v14) (signed char) = v13;
unsigned int v15 (signed int, signed int, signed char, unsigned char);
unsigned int (*v16) (signed int, signed int, signed char, unsigned char) = v15;
extern unsigned int v17 (void);
extern unsigned int (*v18) (void);
extern unsigned char v19 (unsigned short, signed char, signed short);
extern unsigned char (*v20) (unsigned short, signed char, signed short);
unsigned int v21 (unsigned int, signed int);
unsigned int (*v22) (unsigned int, signed int) = v21;
extern unsigned short v23 (unsigned short, signed char, signed short);
extern unsigned short (*v24) (unsigned short, signed char, signed short);
extern unsigned char v25 (unsigned int, unsigned short, signed short, signed short);
extern unsigned char (*v26) (unsigned int, unsigned short, signed short, signed short);
extern unsigned int v27 (unsigned short, unsigned short, signed short);
extern unsigned int (*v28) (unsigned short, unsigned short, signed short);
extern unsigned char v29 (signed char, unsigned char);
extern unsigned char (*v30) (signed char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed int v42 = 3;
unsigned char v41 = 1;
signed int v40 = -3;

unsigned int v21 (unsigned int v43, signed int v44)
{
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
{
for (;;) {
signed short v47 = -4;
unsigned short v46 = 7;
unsigned short v45 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v15 (signed int v48, signed int v49, signed char v50, unsigned char v51)
{
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
{
for (;;) {
unsigned int v54 = 3U;
signed char v53 = -4;
unsigned char v52 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v13 (signed char v55)
{
history[history_index++] = (int)v55;
{
for (;;) {
unsigned char v58 = 3;
unsigned char v57 = 3;
signed int v56 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v11 (signed char v59, signed short v60, signed int v61, signed short v62)
{
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
{
for (;;) {
signed char v65 = -1;
unsigned short v64 = 6;
unsigned char v63 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
