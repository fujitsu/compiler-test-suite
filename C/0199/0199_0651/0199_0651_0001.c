#include <stdlib.h>
extern void v3 (signed int, unsigned char, unsigned short, signed char);
extern void (*v4) (signed int, unsigned char, unsigned short, signed char);
void v5 (signed char, signed int, unsigned char);
void (*v6) (signed char, signed int, unsigned char) = v5;
extern unsigned short v7 (signed char, unsigned short);
extern unsigned short (*v8) (signed char, unsigned short);
extern unsigned char v9 (unsigned char, signed char);
extern unsigned char (*v10) (unsigned char, signed char);
signed char v11 (signed char, signed short, signed short, unsigned char);
signed char (*v12) (signed char, signed short, signed short, unsigned char) = v11;
extern unsigned short v13 (signed short);
extern unsigned short (*v14) (signed short);
extern void v15 (void);
extern void (*v16) (void);
extern unsigned short v17 (unsigned short);
extern unsigned short (*v18) (unsigned short);
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
unsigned char v21 (signed short, signed int);
unsigned char (*v22) (signed short, signed int) = v21;
extern signed int v23 (void);
extern signed int (*v24) (void);
extern signed short v27 (signed short);
extern signed short (*v28) (signed short);
extern signed int v29 (signed short);
extern signed int (*v30) (signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v60 = 4;
signed char v59 = 2;
unsigned short v58 = 3;

unsigned char v21 (signed short v61, signed int v62)
{
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
{
for (;;) {
signed char v65 = 0;
unsigned char v64 = 2;
unsigned short v63 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v11 (signed char v66, signed short v67, signed short v68, unsigned char v69)
{
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
{
for (;;) {
unsigned char v72 = 1;
signed short v71 = 2;
signed char v70 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v5 (signed char v73, signed int v74, unsigned char v75)
{
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
{
for (;;) {
signed char v78 = 1;
unsigned char v77 = 2;
signed char v76 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
