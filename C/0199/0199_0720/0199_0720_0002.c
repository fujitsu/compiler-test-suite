#include <stdlib.h>
extern void v1 (signed short, signed char, signed int);
extern void (*v2) (signed short, signed char, signed int);
extern unsigned short v3 (signed int, unsigned short);
extern unsigned short (*v4) (signed int, unsigned short);
extern signed int v5 (signed char, unsigned char, unsigned char, signed int);
extern signed int (*v6) (signed char, unsigned char, unsigned char, signed int);
extern unsigned int v7 (unsigned char);
extern unsigned int (*v8) (unsigned char);
extern void v9 (unsigned char);
extern void (*v10) (unsigned char);
void v11 (unsigned int, unsigned int, signed int, unsigned char);
void (*v12) (unsigned int, unsigned int, signed int, unsigned char) = v11;
extern signed char v13 (void);
extern signed char (*v14) (void);
extern unsigned short v15 (unsigned int);
extern unsigned short (*v16) (unsigned int);
extern unsigned int v17 (signed char, signed short);
extern unsigned int (*v18) (signed char, signed short);
extern signed char v19 (void);
extern signed char (*v20) (void);
extern signed int v21 (signed char, unsigned char, signed int);
extern signed int (*v22) (signed char, unsigned char, signed int);
unsigned int v23 (unsigned char);
unsigned int (*v24) (unsigned char) = v23;
extern unsigned int v25 (signed int, signed char, signed short, unsigned int);
extern unsigned int (*v26) (signed int, signed char, signed short, unsigned int);
extern void v27 (unsigned short, signed char, unsigned char, signed short);
extern void (*v28) (unsigned short, signed char, unsigned char, signed short);
extern signed int v29 (unsigned int, unsigned char);
extern signed int (*v30) (unsigned int, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed short v88 = 0;
signed short v87 = 1;
unsigned short v86 = 4;

unsigned int v23 (unsigned char v89)
{
history[history_index++] = (int)v89;
{
for (;;) {
unsigned int v92 = 3U;
unsigned short v91 = 4;
unsigned short v90 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v11 (unsigned int v93, unsigned int v94, signed int v95, unsigned char v96)
{
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
{
for (;;) {
signed short v99 = -2;
unsigned char v98 = 4;
unsigned short v97 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
