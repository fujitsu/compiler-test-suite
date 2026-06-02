#include <stdlib.h>
extern unsigned char v1 (void);
extern unsigned char (*v2) (void);
extern signed int v3 (unsigned char, unsigned char, signed int);
extern signed int (*v4) (unsigned char, unsigned char, signed int);
signed char v5 (unsigned short);
signed char (*v6) (unsigned short) = v5;
extern unsigned char v7 (unsigned char, signed short);
extern unsigned char (*v8) (unsigned char, signed short);
extern unsigned char v9 (unsigned char, unsigned char, unsigned int);
extern unsigned char (*v10) (unsigned char, unsigned char, unsigned int);
void v11 (unsigned short);
void (*v12) (unsigned short) = v11;
extern void v13 (signed int, unsigned int, signed int);
extern void (*v14) (signed int, unsigned int, signed int);
extern unsigned char v15 (signed char, unsigned char, unsigned int, unsigned short);
extern unsigned char (*v16) (signed char, unsigned char, unsigned int, unsigned short);
extern signed int v17 (signed char, unsigned short, signed int, unsigned int);
extern signed int (*v18) (signed char, unsigned short, signed int, unsigned int);
unsigned short v19 (unsigned short, signed char, signed char, unsigned char);
unsigned short (*v20) (unsigned short, signed char, signed char, unsigned char) = v19;
extern void v21 (void);
extern void (*v22) (void);
extern signed char v25 (signed short, unsigned short, signed short);
extern signed char (*v26) (signed short, unsigned short, signed short);
extern signed char v27 (unsigned char, signed short);
extern signed char (*v28) (unsigned char, signed short);
extern signed char v29 (unsigned int, signed int, unsigned int);
extern signed char (*v30) (unsigned int, signed int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed char v61 = 1;
signed int v60 = 3;
signed char v59 = -2;

unsigned short v19 (unsigned short v62, signed char v63, signed char v64, unsigned char v65)
{
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
{
for (;;) {
unsigned char v68 = 5;
unsigned short v67 = 1;
signed short v66 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v11 (unsigned short v69)
{
history[history_index++] = (int)v69;
{
for (;;) {
signed char v72 = -2;
unsigned short v71 = 5;
unsigned short v70 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v5 (unsigned short v73)
{
history[history_index++] = (int)v73;
{
for (;;) {
signed int v76 = 2;
signed int v75 = 3;
unsigned short v74 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
