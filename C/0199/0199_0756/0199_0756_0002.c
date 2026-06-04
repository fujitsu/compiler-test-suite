#include <stdlib.h>
extern signed int v3 (signed int, signed char, unsigned int, signed char);
extern signed int (*v4) (signed int, signed char, unsigned int, signed char);
signed short v5 (unsigned short, signed short, signed char, unsigned int);
signed short (*v6) (unsigned short, signed short, signed char, unsigned int) = v5;
extern signed int v7 (unsigned char, unsigned short, unsigned int);
extern signed int (*v8) (unsigned char, unsigned short, unsigned int);
extern signed int v9 (void);
extern signed int (*v10) (void);
extern signed char v11 (signed int, signed short, signed char, unsigned char);
extern signed char (*v12) (signed int, signed short, signed char, unsigned char);
extern signed short v13 (signed char, signed int, signed char);
extern signed short (*v14) (signed char, signed int, signed char);
extern unsigned int v15 (signed char);
extern unsigned int (*v16) (signed char);
extern unsigned char v17 (unsigned int);
extern unsigned char (*v18) (unsigned int);
extern unsigned short v19 (unsigned short, unsigned char, signed int, signed char);
extern unsigned short (*v20) (unsigned short, unsigned char, signed int, signed char);
extern signed int v21 (signed short, unsigned char, unsigned char, unsigned short);
extern signed int (*v22) (signed short, unsigned char, unsigned char, unsigned short);
extern signed char v23 (signed int, unsigned int, unsigned char);
extern signed char (*v24) (signed int, unsigned int, unsigned char);
extern signed int v25 (unsigned short);
extern signed int (*v26) (unsigned short);
extern unsigned char v27 (void);
extern unsigned char (*v28) (void);
void v29 (signed short, unsigned int, unsigned short);
void (*v30) (signed short, unsigned int, unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v75 = 1U;
unsigned short v74 = 2;
signed char v73 = -2;

void v29 (signed short v76, unsigned int v77, unsigned short v78)
{
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
{
for (;;) {
signed short v81 = 1;
signed int v80 = 1;
signed short v79 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v5 (unsigned short v82, signed short v83, signed char v84, unsigned int v85)
{
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
{
for (;;) {
signed short v88 = 3;
unsigned int v87 = 1U;
unsigned short v86 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
