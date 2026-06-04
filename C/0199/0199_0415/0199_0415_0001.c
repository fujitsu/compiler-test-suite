#include <stdlib.h>
extern signed int v3 (signed char);
extern signed int (*v4) (signed char);
extern void v5 (signed short, unsigned short);
extern void (*v6) (signed short, unsigned short);
signed short v7 (unsigned short, unsigned char, signed int);
signed short (*v8) (unsigned short, unsigned char, signed int) = v7;
extern unsigned int v9 (signed short, signed short, unsigned short, unsigned short);
extern unsigned int (*v10) (signed short, signed short, unsigned short, unsigned short);
extern void v11 (void);
extern void (*v12) (void);
unsigned int v13 (void);
unsigned int (*v14) (void) = v13;
extern unsigned int v15 (void);
extern unsigned int (*v16) (void);
extern unsigned int v17 (signed int, unsigned short);
extern unsigned int (*v18) (signed int, unsigned short);
unsigned int v19 (unsigned char, signed short, unsigned int, unsigned char);
unsigned int (*v20) (unsigned char, signed short, unsigned int, unsigned char) = v19;
extern signed char v21 (unsigned short, unsigned char, unsigned char);
extern signed char (*v22) (unsigned short, unsigned char, unsigned char);
extern signed int v23 (unsigned char);
extern signed int (*v24) (unsigned char);
extern signed char v25 (unsigned short, unsigned int);
extern signed char (*v26) (unsigned short, unsigned int);
unsigned char v27 (unsigned char, unsigned int, unsigned char, signed int);
unsigned char (*v28) (unsigned char, unsigned int, unsigned char, signed int) = v27;
extern signed int v29 (unsigned short, signed int, unsigned short);
extern signed int (*v30) (unsigned short, signed int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v60 = 1;
unsigned char v59 = 7;
unsigned int v58 = 6U;

unsigned char v27 (unsigned char v61, unsigned int v62, unsigned char v63, signed int v64)
{
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
{
for (;;) {
signed short v67 = -1;
signed short v66 = -1;
signed short v65 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v19 (unsigned char v68, signed short v69, unsigned int v70, unsigned char v71)
{
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
{
for (;;) {
unsigned short v74 = 0;
unsigned char v73 = 0;
unsigned short v72 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v13 (void)
{
{
for (;;) {
signed int v77 = 1;
unsigned int v76 = 7U;
unsigned int v75 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v7 (unsigned short v78, unsigned char v79, signed int v80)
{
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
{
for (;;) {
unsigned short v83 = 2;
unsigned short v82 = 5;
unsigned char v81 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
