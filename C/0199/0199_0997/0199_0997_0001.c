#include <stdlib.h>
extern unsigned char v3 (unsigned int, signed int);
extern unsigned char (*v4) (unsigned int, signed int);
extern signed short v5 (void);
extern signed short (*v6) (void);
extern unsigned int v7 (signed char);
extern unsigned int (*v8) (signed char);
extern signed char v9 (void);
extern signed char (*v10) (void);
extern signed short v11 (unsigned short, signed short, signed int);
extern signed short (*v12) (unsigned short, signed short, signed int);
extern unsigned int v13 (signed short, signed int, signed short);
extern unsigned int (*v14) (signed short, signed int, signed short);
extern unsigned short v15 (unsigned int, signed short, unsigned short);
extern unsigned short (*v16) (unsigned int, signed short, unsigned short);
extern signed char v17 (signed char, signed short, signed short);
extern signed char (*v18) (signed char, signed short, signed short);
unsigned char v19 (unsigned char);
unsigned char (*v20) (unsigned char) = v19;
extern unsigned int v21 (void);
extern unsigned int (*v22) (void);
extern unsigned int v25 (void);
extern unsigned int (*v26) (void);
void v27 (unsigned short, signed char);
void (*v28) (unsigned short, signed char) = v27;
extern signed int v29 (signed char, signed int, unsigned char);
extern signed int (*v30) (signed char, signed int, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v64 = 1;
unsigned short v63 = 0;
signed int v62 = -2;

void v27 (unsigned short v65, signed char v66)
{
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
{
for (;;) {
signed int v69 = -1;
signed int v68 = 3;
signed int v67 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v19 (unsigned char v70)
{
history[history_index++] = (int)v70;
{
for (;;) {
unsigned int v73 = 0U;
signed short v72 = -4;
signed short v71 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
