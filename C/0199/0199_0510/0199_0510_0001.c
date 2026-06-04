#include <stdlib.h>
extern unsigned short v1 (signed short);
extern unsigned short (*v2) (signed short);
extern signed char v3 (unsigned short);
extern signed char (*v4) (unsigned short);
extern unsigned int v5 (unsigned short, unsigned char);
extern unsigned int (*v6) (unsigned short, unsigned char);
void v7 (signed int);
void (*v8) (signed int) = v7;
unsigned char v9 (unsigned int, unsigned short, signed char);
unsigned char (*v10) (unsigned int, unsigned short, signed char) = v9;
extern void v11 (signed short, unsigned char, unsigned int, unsigned int);
extern void (*v12) (signed short, unsigned char, unsigned int, unsigned int);
void v13 (unsigned char, signed char);
void (*v14) (unsigned char, signed char) = v13;
extern void v15 (signed int, unsigned short, unsigned short);
extern void (*v16) (signed int, unsigned short, unsigned short);
extern unsigned int v17 (signed char, unsigned int);
extern unsigned int (*v18) (signed char, unsigned int);
extern signed short v19 (signed int, unsigned char, signed char, signed int);
extern signed short (*v20) (signed int, unsigned char, signed char, signed int);
extern unsigned int v21 (signed short);
extern unsigned int (*v22) (signed short);
extern signed int v23 (signed int);
extern signed int (*v24) (signed int);
extern signed char v25 (signed short, signed short, unsigned int, signed int);
extern signed char (*v26) (signed short, signed short, unsigned int, signed int);
extern unsigned short v27 (signed char, signed int, signed short, unsigned char);
extern unsigned short (*v28) (signed char, signed int, signed short, unsigned char);
extern unsigned char v29 (signed short, signed short);
extern unsigned char (*v30) (signed short, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v47 = 5U;
unsigned short v46 = 5;
signed short v45 = 1;

void v13 (unsigned char v48, signed char v49)
{
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
{
for (;;) {
unsigned short v52 = 6;
signed short v51 = -4;
signed int v50 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v9 (unsigned int v53, unsigned short v54, signed char v55)
{
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
{
for (;;) {
signed short v58 = -1;
unsigned int v57 = 3U;
signed short v56 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v7 (signed int v59)
{
history[history_index++] = (int)v59;
{
for (;;) {
unsigned int v62 = 5U;
unsigned short v61 = 6;
signed char v60 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
